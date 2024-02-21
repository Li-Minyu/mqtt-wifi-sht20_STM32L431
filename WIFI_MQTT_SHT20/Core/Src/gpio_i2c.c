#include <stdio.h>
#include "stm32l4xx_hal.h"
#include "tim.h" /* delay_us() implement */
#include "gpio.h"
#include "gpio_i2c.h"

#define I2C_CLK_STRETCH_TIMEOUT 50

//#define CONFIG_GPIO_I2C_DEBUG
#ifdef CONFIG_GPIO_I2C_DEBUG
#define i2c_print(format,args...) printf(format, ##args)
#else
#define i2c_print(format,args...) do{} while(0)
#endif

/* GPIO Simulate I2C Bus pins */
typedef struct i2c_gpio_s
{
		GPIO_TypeDef *group;
		uint16_t scl; /* SCL */
		uint16_t sda; /* SDA */
} i2c_gpio_t;

static i2c_gpio_t i2c_pins = { GPIOB, GPIO_PIN_6/*SCL*/, GPIO_PIN_7/*SDA*/ };

void I2C_Init(void)
{
    GPIO_InitTypeDef GPIO_InitStruct;

	//RCC_APB2PeriphClockCmd( RCC_APB2Periph_GPIOA, ENABLE);

	GPIO_InitStruct.Pin=i2c_pins.scl|i2c_pins.sda;
	GPIO_InitStruct.Mode=GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Speed=GPIO_SPEED_FREQ_HIGH;
//	GPIO_Init( GPIOB, &GPIO_InitStructure);
	HAL_GPIO_Init(i2c_pins.group, &GPIO_InitStruct);
}


#define SDA_IN() do{ GPIO_InitTypeDef GPIO_InitStruct = {0}; \
							GPIO_InitStruct.Pin = i2c_pins.sda; \
							GPIO_InitStruct.Mode = GPIO_MODE_INPUT; \
							GPIO_InitStruct.Pull = GPIO_PULLUP; \
							GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH; \
							HAL_GPIO_Init(i2c_pins.group, &GPIO_InitStruct); \
						}while(0)

#define SDA_OUT() do{ GPIO_InitTypeDef GPIO_InitStruct = {0}; \
							GPIO_InitStruct.Pin = i2c_pins.sda; \
							GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP; \
							GPIO_InitStruct.Pull = GPIO_PULLUP; \
							GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH; \
							HAL_GPIO_Init(i2c_pins.group, &GPIO_InitStruct); \
						}while(0)

#define SCL_OUT() do{ GPIO_InitTypeDef GPIO_InitStruct = {0}; \
							GPIO_InitStruct.Pin = i2c_pins.scl; \
							GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP; \
							GPIO_InitStruct.Pull = GPIO_PULLUP; \
							GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH; \
							HAL_GPIO_Init(i2c_pins.group, &GPIO_InitStruct); \
						}while(0)

#define SCL_H() HAL_GPIO_WritePin(i2c_pins.group, i2c_pins.scl, GPIO_PIN_SET)
#define SCL_L() HAL_GPIO_WritePin(i2c_pins.group, i2c_pins.scl, GPIO_PIN_RESET)
#define SDA_H() HAL_GPIO_WritePin(i2c_pins.group, i2c_pins.sda, GPIO_PIN_SET)
#define SDA_L() HAL_GPIO_WritePin(i2c_pins.group, i2c_pins.sda, GPIO_PIN_RESET)
#define READ_SDA() HAL_GPIO_ReadPin(i2c_pins.group, i2c_pins.sda)
#define READ_SCL() HAL_GPIO_ReadPin(i2c_pins.group, i2c_pins.scl)

static inline uint8_t I2c_WaitWhileClockStretching(uint16_t timeout)
{
		while( timeout-- > 0 )
		{
			if( READ_SCL() )
				break;
			delay_us(1);
        }
		return timeout ? NO_ERROR : BUS_ERROR;
}

uint8_t I2c_StartCondition()
{
			uint8_t rv = NO_ERROR;
			SDA_OUT();
			SCL_OUT();
/* StartCondition(S): A high to low transition on the SDA line while SCL is high.
		_______
SCL: 		   |___
		_____
SDA: 		 |_____
*/
			SDA_H();
				delay_us(1);
			SCL_H();
				delay_us(1);
#ifdef I2C_CLK_STRETCH_TIMEOUT
			rv = I2c_WaitWhileClockStretching(I2C_CLK_STRETCH_TIMEOUT);
			if( rv )
			{
				i2c_print("ERROR: %s() I2C bus busy\n", __func__);
				return rv;
            }
#endif
			SDA_L();
			delay_us(2);
			SCL_L();
			delay_us(2);
			return rv;
}

uint8_t I2c_StopCondition(void)
{
			uint8_t rv = NO_ERROR;
			SDA_OUT();
/* StopCondition(P): A low to high transition on the SDA line while SCL is high.
		 _____
SCL: ___|
			_____
SDA: ______|
*/
			SCL_L();
			SDA_L();
			delay_us(2);
			SCL_H();
			delay_us(2);
#ifdef I2C_CLK_STRETCH_TIMEOUT
			rv = I2c_WaitWhileClockStretching(I2C_CLK_STRETCH_TIMEOUT);
			if( rv )
			{
				i2c_print("ERROR: %s() I2C bus busy\n", __func__);
			}
#endif
			SDA_H();
			delay_us(2);
			return rv;
}

uint8_t I2c_WriteByte(uint8_t byte)
{
	uint8_t rv = NO_ERROR;
	uint8_t mask;
	/* Data line changes must happened when SCL is low */
	SDA_OUT();
	SCL_L();
	/* 1Byte=8bit, MSB send: bit[7]-->bit[0] */
	for(mask=0x80; mask>0; mask>>=1)
	{
		if((mask & byte) == 0)
	{
			SDA_L();
	}
	else
	{
		SDA_H();
	}
	delay_us(5); // data set-up time (t_SU;DAT)
	SCL_H();
	delay_us(5); // SCL high time (t_HIGH)

#ifdef I2C_CLK_STRETCH_TIMEOUT

	rv = I2c_WaitWhileClockStretching(I2C_CLK_STRETCH_TIMEOUT);
	if( rv )
	{
		i2c_print("ERROR: %s() I2C bus busy\n", __func__);
		goto OUT;
	}
#endif

	SCL_L();
	delay_us(5); // data hold time(t_HD;DAT)
	}
	/* clk #9 wait ACK/NAK from slave */
	SDA_IN();
	SCL_H(); // clk #9 for ack
	delay_us(5); // data set-up time (t_SU;DAT)

#ifdef I2C_CLK_STRETCH_TIMEOUT

	rv = I2c_WaitWhileClockStretching(I2C_CLK_STRETCH_TIMEOUT);
	if( rv )
	{
		i2c_print("ERROR: %s() I2C bus busy\n", __func__);
		goto OUT;
	}
#endif
	/* High level means NAK */
	if( READ_SDA() )
		rv = ACK_ERROR;
OUT:
	SCL_L();
	delay_us(20);
	return rv;
}

uint8_t I2c_ReadByte(uint8_t *byte, uint8_t ack)
{
		uint8_t rv = NO_ERROR;
		uint8_t mask;
		*byte = 0x00;
		SDA_IN();
		/* 1Byte=8bit, MSB send: bit[7]-->bit[0] */
		for(mask = 0x80; mask > 0; mask >>= 1)
		{
			SCL_H(); // start clock on SCL-line
			delay_us(1); // clock set-up time (t_SU;CLK)
#ifdef I2C_CLK_STRETCH_TIMEOUT
			rv = I2c_WaitWhileClockStretching(I2C_CLK_STRETCH_TIMEOUT);
			if( rv )
			{
				i2c_print("ERROR: %s() I2C bus busy\n", __func__);
				goto OUT;
			}
#endif
			if(READ_SDA())
				*byte |= mask; // read bit
			SCL_L();
			delay_us(2); // data hold time(t_HD;DAT)
		}
		/* clk #9 send ACK/NAK to slave */
		if(ack == ACK)
		{
			SDA_OUT();
			SDA_L(); // send Acknowledge if necessary
		}
		else if( ack == NAK )
		{
			SDA_OUT();
			SDA_H(); // send NotAcknowledge if necessary
		}
		delay_us(1); // data set-up time (t_SU;DAT)
		SCL_H(); // clk #9 for ack
		delay_us(2); // SCL high time (t_HIGH)
#ifdef I2C_CLK_STRETCH_TIMEOUT
		rv = I2c_WaitWhileClockStretching(I2C_CLK_STRETCH_TIMEOUT);
		if( rv )
		{
		 i2c_print("ERROR: %s() I2C bus busy\n", __func__);
		}
#endif
OUT:
		SCL_L();
		delay_us(2); // wait to see byte package on scope
		return rv;
}

uint8_t I2c_SendAddress(uint8_t addr)
{
     return I2c_WriteByte(addr);
}

int I2C_Master_Receive(uint8_t addr, uint8_t *buf, int len)
{
	int i;
	int rv = NO_ERROR;
	uint8_t byte;
	I2c_StartCondition();
	rv = I2c_SendAddress(addr);
	if( rv )
	{
		i2c_print("Send I2C read address failure, rv=%d\n", rv);
		goto OUT;
	}
#ifdef I2C_CLK_STRETCH_TIMEOUT
			/* wait while clock streching */
	rv = I2c_WaitWhileClockStretching(I2C_CLK_STRETCH_TIMEOUT);
	if( rv )
	{
		i2c_print("ERROR: %s() I2C wait clock stretching failure, rv=%d\n", __func__, rv);
		return rv;
	}
#endif
	for (i=0; i<len; i++)
	{
		if( !I2c_ReadByte(&byte, ACK) )
		{
			buf[i] = byte;
		}
		else
			goto OUT;
	}
OUT:
		I2c_StopCondition();
		return rv;
}

int I2C_Master_Transmit(uint8_t addr, uint8_t *data, int bytes)
{
	int   i;
	int   rv = NO_ERROR;

	if(!data)
	{
		return PARM_ERROR;
	}

	i2c_print("I2C Mastr start transimit [%d] bytes data to addr [0x%02x]\n", bytes, addr);
	I2c_StartCondition();

	rv = I2c_SendAddress(addr);
	if( rv )
	{
		goto OUT;
	}
	for (i=0; i<bytes; i++)
	{
		if( NO_ERROR != (rv=I2c_WriteByte(data[i])) )
		{
			break;
		}
	}
OUT:
  I2c_StopCondition();
  return rv;
}
