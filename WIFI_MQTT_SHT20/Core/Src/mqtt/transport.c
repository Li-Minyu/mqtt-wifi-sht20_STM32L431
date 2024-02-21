#include "transport.h"
#include "esp8266.h"
#include <string.h>

static unsigned char     s_sock_buf[256];
static int               s_rx_bytes;

int transport_open(char* addr,int port)
{
	return esp8266_sock_connect(addr,port)? -1 : 0 ;
}

int transport_close(void)
{
	return esp8266_sock_disconnect();
}

int transport_sendPacketBuffer(unsigned char* buf,int buflen)
{
	return esp8266_sock_send(buf,buflen);
}

int transport_getdata(unsigned char* buf,int count)
{
	int     rv=0;

	if( !s_rx_bytes )
	{
		rv=esp8266_sock_recv(s_sock_buf,sizeof(s_sock_buf));


		if( !rv )
		{
			return 0;
		}

		s_rx_bytes =rv;

	}

	rv= count > s_rx_bytes ? s_rx_bytes : count;

	memcpy(buf,s_sock_buf,rv);
	s_rx_bytes -= rv;

	if( s_rx_bytes > 0 )
	{
		memmove(s_sock_buf,&s_sock_buf[rv],s_rx_bytes);
	}

	return rv;
}

void transport_clearBuf(void)
{
	memset(s_sock_buf,0,sizeof(s_sock_buf));
	s_rx_bytes = 0;
}














