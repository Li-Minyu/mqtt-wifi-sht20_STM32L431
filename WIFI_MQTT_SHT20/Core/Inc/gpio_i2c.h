/*
 * gpio_i2c.h
 *
 *  Created on: Aug 4, 2023
 *      Author: liminyv
 */


#ifndef  INC_GPIO_I2C_H_
#define INC_GPIO_I2C_H_


enum
{
	NO_ERROR = 0x00, // no error
	PARM_ERROR = 0x01, // parameter out of range error
	ACK_ERROR = 0x02, // no acknowledgment error
	CHECKSUM_ERROR = 0x04, // checksum mismatch error
	TIMEOUT_ERROR = 0x08, // timeout error
	BUS_ERROR = 0x10, // bus busy
};
enum
{
	ACK_NONE, /* Without ACK/NAK Reply */
	ACK, /* Reply with ACK */
	NAK, /* Reply with NAK */
};

extern void I2C_Init(void);
extern int I2C_Master_Receive(uint8_t addr, uint8_t *buf, int len);
extern int I2C_Master_Transmit(uint8_t addr, uint8_t *data, int bytes);
extern uint8_t I2c_StartCondition();
extern uint8_t I2c_StopCondition(void);
extern uint8_t I2c_WriteByte(uint8_t byte);
extern uint8_t I2c_SendAddress(uint8_t addr);


#endif

