/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "cmsis_os.h"
#include "adc.h"
#include "can.h"
#include "usart.h"
#include "spi.h"
#include "tim.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "ds18b20.h"
#include "core_json.h"
#include <string.h>
#include "sht20.h"
#include "w25q32.h"
#include "hal_oled.h"
#include "oledbmp.h"
#include "esp8266.h"
#include "core_mqtt.h"
#include "main_other.h"
#include "step_motor.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
#define FLAG_WIFI_CONNECTED   (1<<0) /*WiFi杩炴帴璺敱鍣ㄦ爣蹇椾綅 */
#define FLAG_SOCK_CONNECTED   (1<<1) /*Socket杩炴帴鏈嶅姟鍣ㄦ爣蹇椾綅 */

#if 1   //aliyun
#define DEF_ROUTER_SSID       "vivo99"//"yyqx"//"Red"// "4G-UFI-9841"// "HUAWEI-4002AJ"
#define DEF_ROUTER_PWD        "vivo12345ok"//"yyqx001128" // "12345678" //"1234567890" //"k7753375c"

#define MQTT_BROKER_HOSTNAME    "iot-06z00gtlyl9spna.mqtt.iothub.aliyuncs.com"
#define MQTT_BROKER_PORT         1883
#define MQTT_BROKER_USERNAME    "mqtt&k03xhWKZgEd"
#define MQTT_BROKER_PASSWORD    "6c5b069cda2540aca4dde9bd4224f14f7e44982c1bb97333b64d65ba514061e4"
#define MQTT_CLIENT_ID          "k03xhWKZgEd.mqtt|securemode=2,signmethod=hmacsha256,timestamp=1692991689358|"

#define PRODUCT_KEY             "k03xhWKZgEd"
#define DEVICE_NAME             "mqtt"
#define MQTT_PUB_TOPIC          "/sys/"PRODUCT_KEY"/"DEVICE_NAME"/thing/event/property/post"
#define MQTT_SUB_TOPIC          "/sys/"PRODUCT_KEY"/"DEVICE_NAME"/thing/event/property/set"
#endif

#if 0   //huawei
#define DEF_ROUTER_SSID          "4G-UFI-9841" //wifi名称  // "HUAWEI-4002AJ"
#define DEF_ROUTER_PWD           "1234567890"  //wifi密码   //  "k7753375c"

#define MQTT_BROKER_HOSTNAME    "3c065aa5d0.st1.iotda-device.cn-north-4.myhuaweicloud.com" //域名
#define MQTT_BROKER_PORT         1883   //端口

#define MQTT_BROKER_USERNAME    "64f748c3a559fd7cd4119b3a_2023mqtt"
#define MQTT_BROKER_PASSWORD    "8cd1ef5a51cf1e500b4ba3b3654ce6a83e66388c5da69bba1195c6d2ffbcc6cc"
#define MQTT_CLIENT_ID          "64f748c3a559fd7cd4119b3a_2023mqtt_0_0_2023090603"

#define MQTT_PUB_TOPIC          "$oc/devices/"MQTT_BROKER_USERNAME"/sys/properties/report"
#define MQTT_SUB_TOPIC          "$oc/devices/"MQTT_BROKER_USERNAME"/sys/commands/#"
#endif
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void MX_FREERTOS_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
int report_tempRH2_json(void);
int parser_led_json(char *json_string,int bytes);
//static void proc_uart1_recv(void);
//static void proc_uart3_recv(void);
//static void proc_lpuart1_recv(void);
void mqtt_subscribe_proc(void);
int aliyun_json(char *payload,int payloadlen,char *test);
void OLED_environment(void);
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	//	unsigned char     buf1[256];
	//	unsigned char     buf2[256];
#if 0
	uint32_t          last_time=0;
	int               rv;
	char              ipaddr[16];
	char              gateway[16];
	unsigned char     wifi_flag=0;
#endif
//	float temperature;
//	uint32_t      lux,noisy;
//	uint32_t      start=0;
//	uint8_t       light_status=0;
//	int         ret;
//	int         i;
//	int         value;
//	uint8_t     Txdata[8] = {12,22,31,43,52,62,73,81};
//	char  *p = "{\"BlueLed\":\"OFF\",\"RedLed\":\"off\",\"GreenLed\":\"ON\"}";
//	char  *p = "12345678934566";
//	uint8_t     txdata[8] = {0x11,0x22,0x33,0x01,0x02,0x03,0x07,0x08};

//	uint8_t     rxdata1[8]={0};
//	uint8_t     rxdata2[8]={0};
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_ADC1_Init();
  MX_TIM6_Init();
  MX_USART1_UART_Init();
  MX_SPI1_Init();
  MX_USART2_UART_Init();
  MX_TIM1_Init();
  MX_CAN1_Init();
  MX_LPUART1_UART_Init();
  MX_USART3_UART_Init();
  /* USER CODE BEGIN 2 */
//  printf("<<< Run FreeRTOS >>>\r\n");
  /* USER CODE END 2 */

  /* Call init function for freertos objects (in freertos.c) */
//  MX_FREERTOS_Init();

  /* Start scheduler */
//  osKernelStart();
  /* We should never get here as control is now taken by the scheduler */
  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
      OLED_Init();
//      OLED_On();
//      OLED_ShowString(2,2,"Lee",2);
//      HAL_Delay(2000);
//      OLED_Clear();
      printf("<<< Run Bare computer >>>\r\n");
//	esp8266_module_init();

//	  sysled_hearbeat();

//    beep_start(2,200);

//	  step_motor_start(90,1);
//	  step_motor_stop();

  while (1)
  {
//	  int ledtesk=0xFFFF;//占空比
//	  int LEDtime=0;//增加次数
//
//	  if( ledtesk>0 )
//	  {
//		  ledtesk=ledtesk-500;//变亮 10000,9500,,,0
////		  LEDtime++;
//	  }
//	  else
//	  {
////		  LEDtime=0;
//		  ledtesk=0xFFFF;
//	  }
////	  TIM_SetCompare3();
//	  __HAL_TIM_SetCompare(&htim1, TIM_CHANNEL_4, ledtesk); //ledtesk占空比
//	  HAL_Delay(100);






//	  red();

//	  proc_lpuart1_recv();
//	  proc_uart3_recv();

//	  can_main();
//	 CAN_Receive_Buf();

#if 0
	  OLED_environment();
	  HAL_Delay(1500);
	  //uart_forward();
	  if(!(wifi_flag&FLAG_WIFI_CONNECTED))
	  {
		 if( esp8266_join_network(DEF_ROUTER_SSID,DEF_ROUTER_PWD))
		 {//0 is connect success
			 esp8266_module_init();
			 HAL_Delay(2000);
			 continue;
		 }
		 if(esp8266_get_ipaddr(ipaddr,gateway,sizeof(ipaddr)))
		 {
			 HAL_Delay(1000);
			 continue;
		 }
		 if(esp8266_ping_test(gateway))
		 {
			 HAL_Delay(1000);
			 continue;
		 }
		 wifi_flag |= FLAG_WIFI_CONNECTED;
	  }

	  /*缃戠粶socket娌℃湁杩炴帴涓妔ocket鏈嶅姟鍣ㄥ氨寮�濮嬭繛鎺ユ湇鍔�?�櫒*/
	  if(!(wifi_flag&FLAG_SOCK_CONNECTED))
	  {
		  rv=mqtt_connect(MQTT_BROKER_HOSTNAME,MQTT_BROKER_PORT,MQTT_CLIENT_ID,MQTT_BROKER_USERNAME,MQTT_BROKER_PASSWORD);
		  if( rv )
		  {//0 is connect success
			  HAL_Delay(2000);
			  continue;
		  }

		  mqtt_subscribe_topic(MQTT_SUB_TOPIC,Qos0,1);

		  wifi_flag |= FLAG_SOCK_CONNECTED;
	  }

	  mqtt_subscribe_proc();

	  if(time_after(HAL_GetTick(),last_time+30000))
	  {
		  rv=report_tempRH2_json();
		 // rv=esp8266_sock_send("hello",strlen("hello"));//rv=bytes
		  if( 0 == rv )
		  {
			  printf("ESP8266 MQTT publish message ok\n");
			  clear_atcmd_buf();
		  }
		  else
		  {
			  printf("ESP8266 MQTT publish message failure,rv=%d\n",rv);
			  wifi_flag &= ~FLAG_SOCK_CONNECTED;
			  if(esp8266_ping_test(gateway))
			  {
				  wifi_flag &= ~FLAG_WIFI_CONNECTED;
			  }
		  }

		  last_time=HAL_GetTick();
	  }
#endif


#if 0
	  //OLED鏄剧ず娓╂箍搴�
	  sht20_sample_temp_or_hum(0xF3,&temp);
	  sht20_sample_temp_or_hum(0xF5,&humi);
	  sprintf((char *)temp_num,"%.2f",temp);
	  sprintf((char *)humi_num,"%.2f",humi);
	  HAL_Delay(200);
	  OLED_ShowString(32,0,temp_num,16);
	  OLED_ShowString(32,2,humi_num,16);
#endif


//	  adc_sample_lux_noisy(&lux,&noisy);
//	  snprintf(lux_num,sizeof(lux_num),":%04d",lux);
//	  snprintf(noisy_num,sizeof(noisy_num),":%04d",noisy);
//	  HAL_Delay(200);

//	  OLED_ShowString(32,0,lux_num,16);
//	  OLED_ShowString(32,2,noisy_num,16);

/*	  report_tempRH2_json();
	  HAL_Delay(3000);
*/

//	  proc_uart1_recv();//璋冪敤杩欎釜鍑芥暟浠巄uf[]涓仛鏁版嵁瑙ｆ�???????????????????????????????????????????????????????

/*	  if(report_tempRH2_json()<0)
	  {
		  printf("ERROR:UART report temprature and humidity failure\r\n");
	  }
	  HAL_Delay(3000);
*/

//	  if(DS18B20_SampleData(&temperature)<0)//娓╁害浼犳劅锟�???????????????
//	  {
//		  printf("ERROR:DS18B20 Sample Data failure\r\n");
//	  }
//	  else
//	  {
//		  printf("DS18B20 Sample Temperature:%.3f \r\n",temperature);
//	  }
//	  HAL_Delay(3000);//3绉掗噰闆嗕竴锟�????????????????

#if 0
	  adc_sample_lux_noisy(&lux,&noisy);
	  printf("lux[%lu] noisy[%lu]\r\n",lux,noisy);
	  HAL_Delay(5000);
#endif
//	  if(lux<50&&noisy>800)
//	  {
//		  printf("Turn Light ON\r\n");
//		  turn_led(GreenLed,ON);
//		  light_status=ON;
//		  start=HAL_GetTick();
//	  }
//	  else
//	  {
//		  if(time_after(HAL_GetTick(),start+5000))
//		  {
//			  printf("Turn Light OFF\r\n");
//			  turn_led(GreenLed,OFF);
//			  HAL_Delay(200);
//			  light_status=OFF;
//		  }
//	  }
//	  HAL_Delay(10);



/*
	  //楠岃瘉寰璁℃椂鏄惁鍑嗙�???????????????????????????????????????????????????????
	  int i;
	  turn_led(BlueLed,ON);
	  for(i=0;i<100;i++)
	  {
	  	delay_us(5000);//5msX100锟�?????????????????????=500msX2=1000ms=1s 鐩稿綋浜庝竴绉掍竴涓懆鏈燂紝璁板綍10绉掓槸鍚︾伅浜�???????????????????????????????????????????????????????10娆�?�嵆锟�?????????????????????
	  }

	  turn_led(BlueLed,OFF);
	  for(i=0;i<100;i++)
	  {
	  	delay_us(5000);//500ms
	  }
*/



    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 20;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV7;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */
void OLED_environment(void)
{
	float    temperature,humidity;
	char     temp_num[32],humi_num[32];

//	int      lux, noisy;
//	char     lux_num[32], noisy_num[32];

//	adc_sample_lux_noisy((uint32_t *)&lux,(uint32_t *)&noisy);
//	snprintf(lux_num,sizeof(lux_num),":%04d nit",lux);
//	snprintf(noisy_num,sizeof(noisy_num),":%04d dB",noisy);
//	OLED_ShowChinese(0,0,3);
//	OLED_ShowChinese(16,0,4);
//	OLED_ShowChinese(0,2,5);
//	OLED_ShowChinese(16,2,6);
//	OLED_ShowString(32,0,lux_num,16);
//	OLED_ShowString(32,2,noisy_num,16);
//	HAL_Delay(2000);
//	OLED_Clear();

	sht20_sample_temp_or_hum(0xF3,&temperature);
	sht20_sample_temp_or_hum(0xF5,&humidity);
	snprintf(temp_num,sizeof(temp_num),":%2.2f",temperature);
	snprintf(humi_num,sizeof(humi_num),":%2.2f %%",humidity);
	OLED_ShowChinese(0,0,0);
	OLED_ShowChinese(16,0,2);
	OLED_ShowChinese(0,2,1);
	OLED_ShowChinese(16,2,2);
	OLED_ShowString(32,0,temp_num,16);
	OLED_ShowString(32,2,humi_num,16);
	HAL_Delay(2000);
	OLED_Clear();
}

//MQTT
void mqtt_subscribe_proc(void)
{
	unsigned char       buf[256];
	int                 packet_type;
	MQTTString          topicName;
	unsigned char       dup;
	int                 qos;
	unsigned char       retained;
	unsigned  short     msgid;
	unsigned  char     *payload = NULL;
	int                 payloadlen = 0;
	int                 rv;
    char                correct_json[256]={0};

	memset(buf,0,sizeof(buf));
	packet_type=MQTTPacket_read(buf,sizeof(buf),transport_getdata);
	//printf("transport_getdata buf:%s\n",buf);
	//HAL_Delay(3000);

//	if( (packet_type=MQTTPacket_read(buf,sizeof(buf),transport_getdata)) < 0)
//	{
////	printf("Wait aliyun command\n");
//		osDelay(2000);
//		continue;
//	}


	if( packet_type<0 )
	{
		return ;
	}

	switch( packet_type )
	{
		case 0:
		break;

		case PUBLISH:
		{
			rv=MQTTDeserialize_publish(&dup,&qos,&retained,&msgid,&topicName,&payload,&payloadlen,buf,sizeof(buf));
			if( rv == 1)
			{
				printf("MQTT payload:%s\n",payload);
				aliyun_json((char *)payload,payloadlen,correct_json);
				parser_led_json(correct_json,strlen(correct_json));
				//实时上报�?次温湿度数据
				if( 0 == report_tempRH2_json() )
				{
					printf("ESP8266 MQTT publish message ok\n");
					clear_atcmd_buf();
				}
				else
				{
					printf("ESP8266 MQTT publish message failure,rv=%d\n",rv);
				}
			}
			else
			{
				printf("ERROR:MQTTDeserialize_publish failure,rv=%d\n",rv);
			}
			break;
		}
		case CONNACK:
		case PUBACK:
		case SUBACK:
		case UNSUBACK:
		case PUBREC:
		case PUBREL:
		case PUBCOMP:
			break;
	}
}

/*sht20*/
int report_tempRH2_json(void)
{
	char   buf[128];
	float  temperature,humidity;//aliyun
	int    rv;
//	int  temp,humi; //huaweiyun

	if( (sht20_sample_temp_or_hum(0xF3,&temperature) <0 ) || (sht20_sample_temp_or_hum(0xF5,&humidity) <0 ))
	{
		printf("ERROR:sht20 sample data failure\n");
		return -1;
	}

//	temp=(int)temperature;
//	humi=(int)humidity;

	memset(buf,0,sizeof(buf));
//	snprintf(buf,sizeof(buf),"{\"services\":[{\"service_id\":\"mqtt_esp8266\",\"properties\":{\"temp\": %d,\"humi\":%d}}]}",temp,humi);//huaweiyun
	snprintf(buf,sizeof(buf),"{\"params\":{\"CurrentTemperature\":%.2f,\"CurrentHumidity\":%.2f}}",temperature,humidity);//aliyun
	//snprintf(buf,sizeof(buf),"{\"Temperature\":\"%.2f\",\"Humidity\":\"%.2f\"}",temperature,humidity);
	rv=mqtt_publish(MQTT_PUB_TOPIC,Qos0,buf);
	printf("MQTT publish topic [%s] with msg '%s'%s,rv=%d\n",MQTT_PUB_TOPIC,buf,rv? "failure":"ok",rv);
	//rv=esp8266_sock_send((uint8_t *)buf,strlen(buf));
	//HAL_UART_Transmit(&huart1,(uint8_t *)buf,strlen(buf),0xFFFF);
	return rv;
}

/*ds18b20*/
int report_tempRH1_json(void)
{
	char   buf[128];
	float  temperature;

	if(DS18B20_SampleData(&temperature)<0)
	{
		printf("ERROR:sht20_SampleData failure\r\n");
		return -1;
	}
	memset(buf,0,sizeof(buf));
	snprintf(buf,sizeof(buf),"{\"Temperature\":\"%.2f\"}",temperature);
	HAL_UART_Transmit(&huart1,(uint8_t *)buf,strlen(buf),0xFFFF);
	return 0;
}

int aliyun_json(char *payload,int payloadlen,char *correct_json)
{
	char    *ptr=NULL, *start=NULL, *end=NULL;

//	ptr=strstr(payload,"params");
	ptr=strstr(payload,"LEDRGB");
	start=strchr(ptr,'{');
	end=strchr(ptr,'}');
	end++;

	if( start==NULL || end==NULL || start>end )
	{
		printf("ERROR:str not find\n");
		HAL_Delay(2000);
		return 0;
	}
	else
	{
		memcpy(correct_json,start,end-start);
	}

	return 0;
}

int parser_led_json(char *json_string,int bytes)
{
	JSONStatus_t  result;
	char          save;
	char          *value;
	size_t        valen;
	int           i;

	printf("DBUG:Start parsar JSON string:%s\r\n",json_string);

	result=JSON_Validate(json_string,bytes);/*JSON_Validate()鍑芥暟鐢ㄤ簬鍒ゆ柇value鐨勶�???????????????????????????????????????????????????????锟芥槸鍚︽槸鏈夋晥鐨凧SON鏁版�??????????????????????????????????????????????????????*/

	if(JSONPartial==result)
	{
		printf("WARN:JSON document is valid so far but incomplete!\r\n");
		return 0;
	}
	if(JSONSuccess!=result)
	{
		printf("ERROR:JSON document is valid JSON!\r\n");
		return -1;
	}

	for(i=0;i<LedMax;i++)
	{
		result=JSON_Search(json_string,bytes, leds[i].name,strlen(leds[i].name),&value,&valen);

		if(JSONSuccess==result)
		{
			save = value[valen];
			value[valen]='\0';
            //value="on",save=value[2]='\0'
			if(!strncasecmp(value,"on",2))
			{
				printf("DBUG:turn %s ON \r\n",leds[i].name);
				turn_led(i,ON);

			}
			else if(!strncasecmp(value,"off",3))
			{
				printf("DBUG:turn %s OFF \r\n",leds[i].name);
				turn_led(i,OFF);
			}

			value[valen]=save;
		}
	}
	return 1;
}

#if 0
void proc_uart1_recv(void)
{
	if(g_uart1_bytes>0)
	{
		HAL_Delay(200);
		if(0!=parser_led_json(g_uart1_rxbuf,g_uart1_bytes))
		{
			clear_uart1_rxbuf();
		}
	}
}

void proc_uart3_recv(void)
{
	if(g_uart3_bytes>0)
	{
		HAL_Delay(200);
		if(0!=parser_led_json(g_uart3_rxbuf,g_uart3_bytes))
		{
			clear_uart3_rxbuf();
		}
	}
}


void proc_lpuart1_recv(void)
{
	if(g_lpuart1_bytes>0)
	{
		HAL_Delay(200);
		if(0!=parser_led_json(g_lpuart1_rxbuf,g_lpuart1_bytes))
		{
			clear_lpuart1_rxbuf();
		}
	}
}
#endif
/* USER CODE END 4 */

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM2 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM2) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
