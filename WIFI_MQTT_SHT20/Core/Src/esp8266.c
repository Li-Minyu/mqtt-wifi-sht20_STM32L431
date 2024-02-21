/*
 * esp8266.c
 */
#include "esp8266.h"

//#define CONFIG_WIFI_DEBUG
#define CONFIG_WIFI_PRINT

#ifdef CONFIG_WIFI_DEBUG
#define wifi_dbg(format,args...) printf(format,##args)
#else
#define wifi_dbg(format,args...) do{} while(0)
#endif

#ifdef CONFIG_WIFI_PRINT
#define wifi_print(format,args...) printf(format,##args)
#else
#define wifi_print(format,args...) do{} while(0)
#endif

int send_atcmd(char *atcmd,char *expect_reply,unsigned int timeout)
{
	int          rv= 1;
	unsigned     int i;
	char         *expect;

	if( !atcmd || strlen(atcmd)<=0 )
	{
		wifi_print("ERROR:Invalid input arguments\r\n");
	}

	wifi_dbg("\r\n Start send AT command:%s,atcmd");
	clear_atcmd_buf();
	HAL_UART_Transmit(wifi_huart,(uint8_t *)atcmd,strlen(atcmd),1000);

	expect=expect_reply ? expect_reply : "OK\r\n";

	for(i=0;i<timeout;i++)
	{
		if(strstr(g_wifi_rxbuf,expect))
		{
			wifi_dbg("AT command Got expect replay '%s'\r\n",expect);
			rv = 0;
			goto CleanUp;
		}
		if(strstr(g_wifi_rxbuf,"ERROR\r\n") || strstr(g_wifi_rxbuf,"FAIL\r\n"))
		{
			rv = 2;
			goto CleanUp;
		}

		HAL_Delay(1);
	}

CleanUp:
	wifi_dbg("<<<< AT command replay:\r\n%s",g_wifi_rxbuf);
	return rv;
}

int atcmd_send_data(unsigned char *data,int bytes,unsigned int timeout)
{
	int               rv= -1;
	unsigned int      i;

	if( !data || bytes<=0 )
	{
		wifi_print("ERROR: Invalid input arguments\r\n");
		return -1;
	}

	wifi_dbg("\r\n Start AT command send [%d] bytes data\n,bytes");
	clear_atcmd_buf();
	HAL_UART_Transmit(wifi_huart,(uint8_t *)data,bytes,1000);

	for(i=0;i<timeout;i++)
	{
		if(strstr(g_wifi_rxbuf,"SEND OK\r\n"))
		{
			rv = 0;
			goto CleanUp;
		}
		if(strstr(g_wifi_rxbuf,"ERROR\r\n"))
		{
			rv = 1;
			goto CleanUp;
		}

		HAL_Delay(1);
	}

CleanUp:
	wifi_dbg("<<<< AT command replay:\r\n%s",g_wifi_rxbuf);
	return rv;
}

int esp8266_module_init(void)
{
	int    i;

	wifi_print("INFO:Reset ESP8266 module now...\r\n");
	send_atcmd("AT+RST\r\n",EXPECT_OK,500);

	for(i=0;i<6;i++)
		{
			if(!send_atcmd("AT\r\n",EXPECT_OK,500))//0 is success
			{
				wifi_print("INFO:Send AT to ESP8266 and Got replay ok\r\n");
				break;
			}
			HAL_Delay(100);
		}
	if(i>=6)
	{
		wifi_print("ERROR:Can't receive AT replay after reset\r\n");
		return -2;
	}

	if(send_atcmd("AT+CWMODE=1\r\n",EXPECT_OK,500))//0 is success
	{
		wifi_print("ERROR:Set ESP8266 work as Station mode failure\r\n");
		return -3;
	}

	if(send_atcmd("AT+CWDHCP=1,1\r\n",EXPECT_OK,500))//0 is success
	{
		wifi_print("ERROR:Enable ESP8266 Station mode DHCP failure\r\n");
		return -4;
	}

#if 0
	if(send_atcmd("AT+GMR\r\n",EXPECT_OK,500))//0 is success
	{
		wifi_print("ERROR:AT+GMR check ESP8266 reversion failure\r\n");
		return -5;
	}
#endif

	HAL_Delay(500);
	return 0;
}

int esp8266_join_network(char *ssid,char *pwd)
{
	char   atcmd[128]={0x00};
	int    i;


	if( !ssid || !pwd)
	{
		wifi_print("ERROR:Invalid input arguments\r\n");
		return -1;
	}

	snprintf(atcmd,sizeof(atcmd),"AT+CWJAP=\"%s\",\"%s\"\r\n",ssid,pwd);

	if( send_atcmd(atcmd,"CONNECTED",10000) )
	{
		wifi_print("ERROR:ESP8266 connect to '%s' failure\r\n",ssid);
	}
	wifi_print("INFO:ESP8266 connect to '%s' ok\r\n",ssid);

	for(i=0;i<10;i++)
	{
		if( !send_atcmd("AT+CIPSTA?\r\n","255.",1000))
		{
			wifi_print("INFO:ESP8266 go to IP address ok\r\n");
			return 0;
		}
		HAL_Delay(300);
	}

	wifi_print("ERROR:ESP8266 assigned IP address failure\r\n");
	return -3;
}

/*
 * AT+CIPSTA:ip:"192.168.2.100"
 * AT+CIPSTA:gateway:"192.168.2.1"
 */
static int util_parser_ipaddr(char *buf,char *key,char *ipaddr,int size)
{
	char     *start;
	char     *end;
	int      len;

	if(!buf || !key || !ipaddr)
	{
		return -1;
	}

	start =strstr(buf,key);/*ָ��ip���׵�ַi*/
	if(!start)
	{
		return -2;
	}
	start+=strlen(key)+1;/*ָ�š��ĵ�ַ*/
	end=strchr(start,'"');
	if(!end)
	{
		return -3;
	}

	len= end - start;
	len= len>size?size:len;

	memset(ipaddr,0,size);
	strncpy(ipaddr,start,len);

	return 0;
}

int esp8266_get_ipaddr(char *ipaddr,char *gateway,int ipaddr_size)
{
	if(!ipaddr || !gateway || ipaddr_size<7)
	{
		wifi_print("ERROR:Invalid input arguments\r\n");
		return -1;
	}

	if( send_atcmd("AT+CIPSTA?\r\n","255.",1000))
	{
		wifi_print("ERROR: ESP8266 AT+CIPSTA? command failure\r\n");
		return -2;
	}

	if(util_parser_ipaddr(g_wifi_rxbuf,"ip:",ipaddr,ipaddr_size))
	{
		wifi_print("ERROR: ESP8266 AT+CIPSTA?  parser IP address failure\r\n");
		return -3;
	}

	if(util_parser_ipaddr(g_wifi_rxbuf,"gateway:",gateway,ipaddr_size))
	{
		wifi_print("ERROR: ESP8266 AT+CIPSTA?  parser gateway failure\r\n");
		return -4;
	}

	wifi_print("INFO:ESP8266 got IP address [%s] gateway[%s] ok\r\n",ipaddr,gateway);
	return 0;

}

int esp8266_ping_test(char *host)
{
	char    atcmd[128]={0x00};

	if(!host)
	{
		wifi_print("ERROR:Invalid input arguments\r\n");
		return -1;
	}

	snprintf(atcmd,sizeof(atcmd),"AT+PING=\"%s\"\r\n",host);
	if(send_atcmd(atcmd,EXPECT_OK,3000))
	{
		wifi_print("ERROR:ESP8266 ping test [%s] failure\r\n",host);
		return -2;
	}

	wifi_print("INFO:ESP8266 ping test [%s] ok\r\n",host);
	return 0;
}

int esp8266_sock_connect(char *servip,int port)
{
	char    atcmd[128]={0x00};

	if(!servip || !port)
	{
		wifi_print("ERROR:Invalid input arguments\r\n");
		return -1;
	}

	send_atcmd("AT+CIPMUX=0\r\n",EXPECT_OK,1500);

	snprintf(atcmd,sizeof(atcmd),"AT+CIPSTART=\"TCP\",\"%s\",%d\r\n",servip,port);
	if(send_atcmd(atcmd,"CONNECT\r\n",1000))
	{
		wifi_print("ERROR:ESP8266 socket connect to [%s:%d] failure\r\n",servip,port);
		return -2;
	}

	wifi_print("INFO:ESP8266 socket connect to [%s:%d] ok\r\n",servip,port);
	return 0;
}

int esp8266_sock_disconnect(void)
{
	send_atcmd("AT+CIPCLOSE\r\n",EXPECT_OK,1500);
	return 0;
}

int esp8266_sock_send(unsigned char *data,int bytes)
{
	char   atcmd[128]={0x00};

	if(!data || bytes<=0)
	{
		wifi_print("ERROR:Invalid input arguments\r\n");
		return -1;
	}

	snprintf(atcmd,sizeof(atcmd),"AT+CIPSEND=%d\r\n",bytes);
	if(send_atcmd(atcmd,">",500))
	{
		wifi_print("ERROR:AT+CIPSEND command failure\r\n");
		return 0;
	}
	if(atcmd_send_data((unsigned char *)data,bytes,1000))
	{
		wifi_print("ERROR:AT+CIPSEND send data failure\r\n");
		return 0;
	}

	return bytes;
}

int esp8266_sock_recv(unsigned char *buf,int size)
{
	char     *data=NULL;
	char     *ptr=NULL;
	int      len;
	int      rv;
	int      bytes;


	if( !buf || size<=0 )
	{
		wifi_print("ERROR:Invalid input arguments\r\n");
		return -1;
	}

	if(g_wifi_rxbytes<=0)
	{
//		printf("g_wifi_rxbytes<=0\n");
//		HAL_Delay(2000);
		return 0;
	}

	if( !(ptr=strstr(g_wifi_rxbuf,"+IPD,")) || !(data=strchr(g_wifi_rxbuf,':')) )
	{
		return 0;
	}

//	printf("g_uart2_rxbuf:%s\n",g_uart2_rxbuf);

	data++;
	bytes = atoi(ptr+strlen("+IPD,"));

	len = g_wifi_rxbytes - (data-g_uart2_rxbuf);

	if( len < bytes )
	{
		wifi_dbg("+IPD data not receive over,receive again later ...\r\n");
		return 0;
	}

	memset(buf,0,size);
	rv=bytes>size?size:bytes;
	memcpy(buf,data,rv);
	clear_atcmd_buf();

	return rv;
}



