/*+---------------+
 *|     MQTT      |
  +---------------*/
#include "core_mqtt.h"
#include "stm32l4xx_hal.h"
#include <stdio.h>
#include <string.h>

int mqtt_connect(char *host,int port,char *clientid,char *username,char *passwd)
{
	MQTTPacket_connectData     data=MQTTPacket_connectData_initializer;
	int                        rv;
	unsigned char              buf[256];
	unsigned char              sessionPresent;
	unsigned char              connack_rc;

	if(!host || port<=0 || !clientid )
	{
		printf("ERROR:Invalid input arguments\n");
	}

	if((rv=transport_open(host,port))<0)
	{
		printf("socket connect [%s:%d] failure,rv=%d\n",host,port,rv);
		return rv;
	}

	data.clientID.cstring=clientid;
	data.keepAliveInterval=MQTT_KEEP_ALIVE_TIMEOUT_SECONDS;
	data.cleansession=1;

	if( username && passwd)
	{
		data.username.cstring=username;
		data.password.cstring=passwd;
	}

	rv=MQTTSerialize_connect(buf,sizeof(buf),&data);
	if( rv<0 )
	{
		printf("MQTTSerialize_connect failure,rv=%d\n",rv);
		return -1;
	}

	if ( rv != transport_sendPacketBuffer(buf,rv) )
	{
		printf("transport_sendPackBuffer for mqtt_connect failure,rv=%d\n",rv);
		return -2;
	}

	HAL_Delay(800);

	memset(buf,0,sizeof(buf));
	rv=MQTTPacket_read(buf,sizeof(buf),transport_getdata);
	if(CONNACK != rv)
	{
		printf("MQTTPacket_read for MQTT CONNACK failure,rv=%d\n",rv);
		return -3;
	}

	if((rv=MQTTDeserialize_connack(&sessionPresent,&connack_rc,buf,sizeof(buf))) !=1 || connack_rc!=0)
	{
		printf("MQTTDeserialize_connack failire,rv=%d\n",rv);
		return -4;
	}

	return 0;
}

int mqtt_disconnect(void)
{
	int               rv;
	unsigned char     buf[256];

	rv=MQTTSerialize_disconnect(buf,sizeof(buf));
	if(rv < 0 )
	{
		printf("MQTT_Serialize_disconnect failure,rv=%d\n",rv);
		return -1;
	}

	if( rv != transport_sendPacketBuffer(buf,rv) )
	{
		printf("transport_sendPacketBuffer for mqtt_disconnect failure,rv=%d\n",rv);
		return -2;
	}

	return 0;
}

int mqtt_subscribe_topic(char *topic,int qos,int msgid)
{
	MQTTString        topicString = MQTTString_initializer;
	unsigned short    submsgid;
	int               subcount,granted_qos;
	int               rv;
	unsigned char     buf[256];

	topicString.cstring = topic;

	rv=MQTTSerialize_subscribe(buf,sizeof(buf),0,msgid,1,&topicString,&qos);
	if( rv<0 )
	{
		printf("MQTTSerialize_subscribe failure,rv=%d\n",rv);
		return -1;
	}

	if( rv != transport_sendPacketBuffer(buf,rv) )
	{
		printf("transport_sendPacketBuffer for  mqtt_subscribe_topic failure,rv=%d\n",rv);
		return -2;
	}

	HAL_Delay(800);

	memset(buf,0,sizeof(buf));
	rv=MQTTPacket_read(buf,sizeof(buf),transport_getdata);
	if(SUBACK != rv)
	{
		printf("MQTTPacket_read for MQTT SUBACK failure,rv=%d\n",rv);
		return -3;
	}

	rv=MQTTDeserialize_suback(&submsgid,1,&subcount,&granted_qos,buf,sizeof(buf));
	if( !rv || submsgid!=msgid || granted_qos == 0x80)
	{
		printf("MQTTDeserialize_suback failure,rv=%d\n",rv);
		return -4;
	}

	printf("mqtt_subscribe_topic ok\n");
	return 0;
}

int mqtt_unsubscribe_topic(char *topic,int msgid)
{
	MQTTString        topicString = MQTTString_initializer;
	unsigned short    submsgid;
	int               rv;
	unsigned char     buf[256];

	rv=MQTTSerialize_unsubscribe(buf,sizeof(buf),0,msgid,1,&topicString);
	if( rv<0 )
	{
		printf("MQTTSerialize_unsubscribe failure,rv=%d\n",rv);
		return -1;
	}

	if( rv != transport_sendPacketBuffer(buf,rv) )
	{
		printf("transport_sendPacketBuffer for  mqtt_unsubscribe_topic failure,rv=%d\n",rv);
		return -2;
	}

	HAL_Delay(800);

	memset(buf,0,sizeof(buf));
	rv=MQTTPacket_read(buf,sizeof(buf),transport_getdata);
	if( UNSUBACK != rv )
	{
		printf("MQTTPacket_read for MQTT UNSUBACK failure,rv=%d\n",rv);
		return -3;
	}

	rv=MQTTDeserialize_unsuback(&submsgid,buf,sizeof(buf));
	if( !rv || submsgid!=msgid )
	{
		printf("MQTTDeserialize_unsuback failure,rv=%d\n",rv);
		return -4;
	}

	return 0;
}

int mqtt_publish(char *topic,int qos,char *payload)
{
	MQTTString         topicString = MQTTString_initializer;
	int                rv;
	unsigned char      buf[256];
	unsigned char      dup=0;
	unsigned char      retained=0;
	unsigned short     packetid=0;

	topicString.cstring = topic;

	rv=MQTTSerialize_publish(buf,sizeof(buf),dup,qos,retained,packetid,topicString,(unsigned char*)payload,strlen(payload));
	if( rv<0 )
	{
		printf("MQTTSerialize_publish failure,rv=%d\n",rv);
		return -1;
	}

	if( rv != transport_sendPacketBuffer(buf,rv) )
	{
		printf("transport_sendPacketBuffer for MQTTSerialize_publish failure,rv=%d\n",rv);
		return -2;
	}

	HAL_Delay(800);

	memset(buf,0,sizeof(buf));
	rv=MQTTPacket_read(buf,sizeof(buf),transport_getdata);
	if( PUBLISH!=rv && -1!=rv )
	{
		printf("MQTTPacket_read for MQTT PUBLISH failure,rv=%d\n",rv);
		return -3;
	}

	return 0;
}

int mqtt_pingreq(void)
{
	int                rv;
	unsigned char      buf[256];

	rv=MQTTSerialize_pingreq(buf,sizeof(buf));
	if( rv<0 )
	{
		printf("MQTTSerialize_pingreq failure,rv=%d\n",rv);
		return -1;
	}

	if( rv != transport_sendPacketBuffer(buf,rv) )
	{
		printf("transport_sendPacketBuffer for MQTTSerialize_pingreq failure,rv=%d\n",rv);
		return -2;
	}

	HAL_Delay(800);

	memset(buf,0,sizeof(buf));
	rv=MQTTPacket_read(buf,sizeof(buf),transport_getdata);
	if( PINGRESP!=rv )
	{
		printf("MQTTPacket_read for MQTT PINGRESP failure,rv=%d\n",rv);
		return -3;
	}

	return 0;
}

















