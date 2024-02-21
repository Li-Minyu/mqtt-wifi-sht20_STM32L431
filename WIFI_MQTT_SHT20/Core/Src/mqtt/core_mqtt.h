#ifndef SRC_MQTT_CORE_MQTT_H_
#define SRC_MQTT_CORE_MQTT_H_

#include "transport.h"
#include "MQTTPacket.h"

#define MQTT_KEEP_ALIVE_TIMEOUT_SECONDS        (60U)

enum
{
	Qos0,
	Qos1,
	Qos2,
};

extern int mqtt_connect(char *host,int port,char *clientid,char *username,char *passwd);

extern int mqtt_disconnect(void);

extern int mqtt_subscribe_topic(char *topic,int qos,int msgid);

extern int mqtt_unsubscribe_topic(char *topic,int msgid);

extern int mqtt_publish(char *topic,int qos,char *payload);

extern int mqtt_pingreq(void);

#endif /* SRC_MQTT_CORE_MQTT_H_ */
