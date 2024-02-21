/*
 * ds18b20.c
 *
 *  Created on: Jul 31, 2023
 *      Author: liminyv
 */
#include "tim.h"
#include "gpio.h"
#include "main.h"


typedef struct w1_gpio_s
{
	GPIO_TypeDef    *group;
	uint16_t        pin;
}w1_gpio_t;

static w1_gpio_t W1Dat=
{
		.group=GPIOA,
		.pin=GPIO_PIN_12,
};

#define W1DQ_Input() \
{\
	GPIO_InitTypeDef GPIO_InitStruct={0};\
	GPIO_InitStruct.Pin=W1Dat.pin;\
	GPIO_InitStruct.Mode=GPIO_MODE_INPUT;\
	GPIO_InitStruct.Pull=GPIO_PULLUP;\
	GPIO_InitStruct.Speed=GPIO_SPEED_FREQ_HIGH;\
	HAL_GPIO_Init(W1Dat.group,&GPIO_InitStruct);\
}

#define W1DQ_Output() \
{\
	GPIO_InitTypeDef GPIO_InitStruct={0};\
	GPIO_InitStruct.Pin=W1Dat.pin;\
	GPIO_InitStruct.Mode=GPIO_MODE_OUTPUT_PP;\
	GPIO_InitStruct.Pull=GPIO_NOPULL;\
	GPIO_InitStruct.Speed=GPIO_SPEED_FREQ_HIGH;\
	HAL_GPIO_Init(W1Dat.group,&GPIO_InitStruct);\
}

#define W1DQ_Write(x)  HAL_GPIO_WritePin(W1Dat.group,W1Dat.pin,(x==1)?GPIO_PIN_SET:GPIO_PIN_RESET)
#define W1DQ_Read()    HAL_GPIO_ReadPin(W1Dat.group,W1Dat.pin)

uint8_t DS18B20_Reset(void)
{
	uint8_t rv=0;
	uint8_t retry;

	W1DQ_Output();
	W1DQ_Write(1);//high level
	delay_us(2);

	W1DQ_Write(0);//bus:low level ~ 480us 
	delay_us(480);

	W1DQ_Write(1);//Release bus
	delay_us(60);

	//If the level is low, a machine on the bus is responding.That tells STM32 that DS18B20 exists.
	while(W1DQ_Read()&&retry<240) //0&&1 over whlie
	{
		retry++;
		delay_us(1);
	}

	if(retry>=240)
	{
		rv=1;//异常退出return 1；
	}

	//
	delay_us(240);

	W1DQ_Output();
	W1DQ_Write(1);
	delay_us(240);

	return rv;
}

void DS18B20_WriteByte(uint8_t byte)
{
	uint8_t i=0;

	W1DQ_Output();

	for(i=0;i<8;i++)
	{
		W1DQ_Write(0);//STM32 pull down the bus
		delay_us(2);//After pulling down the bus, keep it 2us.

		if(byte&0x1)
			W1DQ_Write(1);
		else
			W1DQ_Write(0);

		delay_us(60);

		W1DQ_Write(1);//Release bus,Pull-up resistor pulls high level
		delay_us(2);//The interval between two bits

		byte>>=1;
	}

}

uint8_t DS18B20_ReadByte(void)
{
	uint8_t i=0;
	uint8_t byte=0;

	for(i=0;i<8;i++)
	{
		W1DQ_Output();
		W1DQ_Write(0);//STM32 pull down the bus
		delay_us(2);//After pulling down the bus, keep it 2us.

		W1DQ_Write(1);//Release bus,Pull-up resistor pulls high level
		delay_us(2);

		W1DQ_Input();

		if(W1DQ_Read())
		{
			byte |= 1<<i;
		}

		delay_us(60);

		W1DQ_Output();
		
		W1DQ_Write(1);//Release bus,Pull-up resistor pulls high level
		delay_us(2);//The interval between two bits
	}

	return byte;//Read Byte
}

static inline int DS18B20_Start_Convert(void)
{
	if( 0!=DS18B20_Reset() )
		return -1;

	DS18B20_WriteByte(0xCC);

	DS18B20_WriteByte(0x44);

	return 0;
}

static inline int DS18B20_Start_Read(uint8_t *buf,int bytes)
{
	if( 0!=DS18B20_Reset() )
		return -1;

	DS18B20_WriteByte(0xCC);

	DS18B20_WriteByte(0xBE);

	buf[0] = DS18B20_ReadByte();//LSB
	buf[1] = DS18B20_ReadByte();//MSB

	return 0;
}

int DS18B20_SampleData(float *temperature)
{
	uint8_t  byte[2];
	uint8_t  sign;
	uint16_t temp;

	if(!temperature)
		return -1;
	if(0!=DS18B20_Start_Convert())
		return -2;
	if(0!=DS18B20_Start_Read(byte,2))
		return -3;

/*
 * Temperature byte[0] is LSB,byte[1] is MSB,total 16 bit:
 * byte[0]:  bit[3:0]:decimal bits,   bit[7:4]:integer bits
 * byte[1]:  bit[2:0]:integer bits,   bit[7:3]:sign bits
 */
	if(byte[1]>0x7) //bit[7:3] is 1 , 0x7=00000111
	{
		temp= ~(byte[1]<<8|byte[0]) +1;//补码
		sign=0;//温度为负
	}
	else
	{
		sign=1;//温度为正
		temp= byte[1]<<8 | byte[0];
	}

	/* byte[1]是大端字节序MSB（先输出高位），byte[0]是小端字节序LSB（先输出低位）
	 * byte[1]的低三位和byte[0]的高四位组成温度值的整数部分
	 * byte[0]的低四位为小数精度部分，且精度系数为0.0625
	 */
	*temperature = (temp>>4) + (temp&0xF)*0.0625;
	if(!sign)
	{
		*temperature=-*temperature;
	}

	return 0;
}



