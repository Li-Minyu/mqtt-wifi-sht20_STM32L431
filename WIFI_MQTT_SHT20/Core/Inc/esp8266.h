#ifndef INC_ESP8266_H_
#define INC_ESP8266_H_

#include <stdio.h>
#include "usart.h"
#include "stdlib.h"
#include <string.h>
#include <uasrt_port.h>

//extern unsigned char       g_wifi_rxbuf[256];
//extern uint8_t             g_wifi_rxbytes;

#define wifi_huart         &huart2         /*wifiģ��ʹ�õĴ���*/
#define g_wifi_rxbuf       g_uart2_rxbuf   /*wifiģ��Ľ���buffer*/
#define g_wifi_rxbytes     g_uart2_bytes   /*wifiģ����յĴ�С*/

/*���wifiģ�����buffer����������ݣ��ú겻�ú�������Ϊ����������Ҫ����ʱ�俪��*/
#define clear_atcmd_buf()      do { memset(g_wifi_rxbuf,0,sizeof(g_wifi_rxbuf));\
	                                       g_wifi_rxbytes=0; } while(0)
/*����AT�����������ֵΪ��ʾΪ�ɹ�����0��ʾʧ��*/
#define EXPECT_OK  "OK\r\n"
extern int send_atcmd(char *atcmd,char *expect_reply,unsigned int timeout);

extern int atcmd_send_data(unsigned char *data,int bytes,unsigned int timeout);

/*��λ����������ֵΪ0��ʾΪ�ɹ�����0��ʾʧ��*/
extern int esp8266_module_init(void);

/*����·����������ֵΪ0��ʾΪ�ɹ�����0��ʾʧ��*/
extern int esp8266_join_network(char *ssid,char *pwd);

/*����Լ�IP��ַ������IP��ַ������ֵΪ0��ʾΪ�ɹ�����0��ʾʧ��*/
extern int esp8266_get_ipaddr(char *ipaddr,char *gateway,int ipaddr_size);

/*��ping�������������ͨ�ԣ�����ֵΪ0��ʾΪ�ɹ�����0��ʾʧ��*/
extern int esp8266_ping_test(char *host);

/*����TCP socket���ӣ�����ֵΪ0��ʾΪ�ɹ�����0��ʾʧ��*/
extern int esp8266_sock_connect(char *servip,int port);

/*�Ͽ�TCP socket���ӣ�����ֵΪ0��ʾΪ�ɹ�����0��ʾʧ��*/
extern int esp8266_sock_disconnect(void);

/*ESP8266ͨ��TCP socket�������ݣ�����ֵΪ0��ʾΪʧ�ܣ�>0��ʾ�ɹ�*/
extern int esp8266_sock_send(unsigned char *data,int bytes);
/*ESP8266ͨ��TCP socket�������ݣ�����ֵΪ0��ʾΪʧ�ܣ�>0��ʾ�ɹ�*/
extern int esp8266_sock_recv(unsigned char *buf,int size);


#endif /* INC_ESP8266_H_ */
