/*
 * port.h
 *
 *  Created on: Oct 14, 2023
 *      Author: liminyv
 */

#ifndef INC_UASRT_PORT_H_
#define INC_UASRT_PORT_H_

#include <stdio.h>
#include <string.h>
#include "gpio.h"
#include "usart.h"

extern void uart1_Init(void);
extern void uart2_Init(void);
extern void uart3_Init(void);
extern int rs232_send(uint8_t *data, int bytes);
extern int rs232_receive(void);
extern void rs485_Init(void);
extern int rs485_send(uint8_t *data, int bytes);
extern int rs485_receive(void);
extern void uart_forward(void);


//extern  xStreamBufferHandle_t  xStreamBuffer;        //定义句柄

#endif /* INC_UASRT_PORT_H_ */
