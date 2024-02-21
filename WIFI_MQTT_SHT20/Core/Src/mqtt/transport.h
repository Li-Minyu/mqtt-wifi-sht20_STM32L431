/*
 * transport.h
 *
 *  Created on: 2023Äê8ÔÂ19ÈÕ
 *      Author: liminyv
 */

#ifndef SRC_MQTT_TRANSPORT_H_
#define SRC_MQTT_TRANSPORT_H_

extern int transport_open(char* addr,int port);

extern int transport_close(void);

extern int transport_sendPacketBuffer(unsigned char* buf,int buflen);

extern int transport_getdata(unsigned char* buf,int count);

extern void transport_clearBuf(void);





#endif /* SRC_MQTT_TRANSPORT_H_ */
