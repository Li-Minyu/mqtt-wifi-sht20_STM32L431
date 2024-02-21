/*
 * main_other.c
 *
 *  Created on: Oct 24, 2023
 *      Author: liminyv
 */


/*
 * mian_other.c
 *
 *  Created on: Oct 24, 2023
 *      Author: liminyv
 */
#include "main.h"
#include "cmsis_os.h"
#include "adc.h"
#include "can.h"
#include "usart.h"
#include "spi.h"
#include "tim.h"
#include "gpio.h"

#include "ds18b20.h"
#include "core_json.h"
#include "sht20.h"
#include "w25q32.h"
#include "hal_oled.h"
#include "oledbmp.h"
#include "esp8266.h"
#include "core_mqtt.h"
#include <string.h>


//Test: human infrared sensor module
void red(void)
{
	if( 1 == HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_11) )//someone
	{
		turn_led(BlueLed,ON);
//		printf("someone\r\n");
		HAL_Delay(100);
	}
	else //nobody
	{
		turn_led(BlueLed,OFF);
//		printf("nobody\r\n");
		HAL_Delay(1000);
	}
}

//Test:CAN bus
//mode:Normal or Loopback
void can_main(void)
{
	int         ret;
	int         value;
	unsigned char     buf1[256];
	unsigned char     buf2[256];
	float             temp,humi;

#if 0
	uint8_t     txdata[8] = {0x11,0x22,0x33,0x01,0x02,0x03,0x07,0x08};

	ret= CAN_Transmit_Msg(0x123,txdata,strlen((char *)txdata));//Transmit message
	if( ret == 0)
	{
		printf("CAN Send success!\r\n");
		blink_led(GreenLed,300);
	}
	else
	{
		printf("CAN Send failure!\r\n");
		blink_led(RedLed,300);
	}
	HAL_Delay(2000);

//	  printf("RxData:%s\r\n",RxData);
//	  HAL_Delay(2000);

	CAN_Receive_Buf();
#endif

#if 1
		if( (sht20_sample_temp_or_hum(0xF3,&temp) <0 ) || (sht20_sample_temp_or_hum(0xF5,&humi) <0 ))
		{
			printf("ERROR:sht20 sample data failure\n");
			return ;
		}

		snprintf((char *)buf1,sizeof(buf1),"%.2f",temp);
		memset(RxData,0,sizeof(RxData));
		ret=CAN_Transmit_Msg(0x123,buf1,strlen((char *)buf1));
		if( ret == 0)
		{
			printf("CAN Send Temperature success!\r\n");
			blink_led(BlueLed,500);
		}
		else
		{
			printf("CAN Send Temperature failed!\r\n");
			blink_led(RedLed,500);
		}
//		CAN_Receive_Msg(0x123,rxdata);
		printf("temperature:%s\r\n",RxData);//中断

		snprintf((char *)buf2,sizeof(buf2),"%.2f",humi);
		memset(RxData,0,sizeof(RxData));
		value=CAN_Transmit_Msg(0x123,buf2,strlen((char *)buf2));
		if( value == 0)
		{
			printf("CAN Send Humidity success!\r\n");
			blink_led(GreenLed,500);
		}
		else
		{
			printf("CAN Send Humidity failed!\r\n");
			blink_led(RedLed,500);
		}
//		CAN_Receive_Msg(0x123,rxdata);
		printf("Humidity:%s\r\n",RxData);
		printf("+++++++++++++++++++++++++++++++\r\n");

		HAL_Delay(2000);
#endif
}
