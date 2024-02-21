/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
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
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "ds18b20.h"
#include "gpio.h"
#include "usart.h"
#include "sht20.h"
#include "core_mqtt.h"
#include "transport.h"
#include "esp8266.h"
#include <string.h>
#include "stream_buffer.h"
#include "hal_oled.h"
#include "oledbmp.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
//unsigned char       g_wifi_rxbuf[256];
//uint8_t             g_wifi_rxbytes;
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define FLAG_WIFI_CONNECTED   (1<<0) /*WiFi*/
#define FLAG_SOCK_CONNECTED   (1<<1) /*Socket */

#if 1    //阿里�????????????????
#define DEF_ROUTER_SSID     "LeePC"     //"vivo99"    //"Red"//"4G-UFI-9841"// "HUAWEI-4002AJ"
#define DEF_ROUTER_PWD      "Lee123456" //"vivo12345ok"// //"12345678"//"1234567890" //  "k7753375c"

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

#if 0    //华为�????????????????
#define DEF_ROUTER_SSID          "4G-UFI-9841" //wifi名称  // "HUAWEI-4002AJ"
#define DEF_ROUTER_PWD           "1234567890"  //wifi密码   //  "k7753375c"

#define MQTT_BROKER_HOSTNAME    "3c065aa5d0.st1.iotda-device.cn-north-4.myhuaweicloud.com" //域名
#define MQTT_BROKER_PORT         1883   //端口�????????????????

#define MQTT_BROKER_USERNAME    "64f748c3a559fd7cd4119b3a_2023mqtt"
#define MQTT_BROKER_PASSWORD    "8cd1ef5a51cf1e500b4ba3b3654ce6a83e66388c5da69bba1195c6d2ffbcc6cc"
#define MQTT_CLIENT_ID          "64f748c3a559fd7cd4119b3a_2023mqtt_0_0_2023090603"

#define MQTT_PUB_TOPIC          "$oc/devices/"MQTT_BROKER_USERNAME"/sys/properties/report"
#define MQTT_SUB_TOPIC          "$oc/devices/"MQTT_BROKER_USERNAME"/sys/commands/#"
#endif

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */
StreamBufferHandle_t  xStreamBuffer;//定义队列
/* USER CODE END Variables */
osThreadId MQTT06Handle;
osThreadId Receive5Handle;
osThreadId LEDtask03Handle;
osMessageQId QueueHandle;
osTimerId myTimer01Handle;
osSemaphoreId myBinarySem01Handle;

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void mqttTask06(void const * argument);
void ReceiveTask5(void const * argument);
void StartTask03(void const * argument);
void Callback01(void const * argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/* GetIdleTaskMemory prototype (linked to static allocation support) */
void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize );

/* GetTimerTaskMemory prototype (linked to static allocation support) */
void vApplicationGetTimerTaskMemory( StaticTask_t **ppxTimerTaskTCBBuffer, StackType_t **ppxTimerTaskStackBuffer, uint32_t *pulTimerTaskStackSize );

/* USER CODE BEGIN GET_IDLE_TASK_MEMORY */
static StaticTask_t xIdleTaskTCBBuffer;
static StackType_t xIdleStack[configMINIMAL_STACK_SIZE];

void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize )
{
  *ppxIdleTaskTCBBuffer = &xIdleTaskTCBBuffer;
  *ppxIdleTaskStackBuffer = &xIdleStack[0];
  *pulIdleTaskStackSize = configMINIMAL_STACK_SIZE;
  /* place for user code */
}
/* USER CODE END GET_IDLE_TASK_MEMORY */

/* USER CODE BEGIN GET_TIMER_TASK_MEMORY */
static StaticTask_t xTimerTaskTCBBuffer;
static StackType_t xTimerStack[configTIMER_TASK_STACK_DEPTH];

void vApplicationGetTimerTaskMemory( StaticTask_t **ppxTimerTaskTCBBuffer, StackType_t **ppxTimerTaskStackBuffer, uint32_t *pulTimerTaskStackSize )
{
  *ppxTimerTaskTCBBuffer = &xTimerTaskTCBBuffer;
  *ppxTimerTaskStackBuffer = &xTimerStack[0];
  *pulTimerTaskStackSize = configTIMER_TASK_STACK_DEPTH;
  /* place for user code */
}
/* USER CODE END GET_TIMER_TASK_MEMORY */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* Create the semaphores(s) */
  /* definition and creation of myBinarySem01 */
  osSemaphoreDef(myBinarySem01);
  myBinarySem01Handle = osSemaphoreCreate(osSemaphore(myBinarySem01), 1);

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* Create the timer(s) */
  /* definition and creation of myTimer01 */
  osTimerDef(myTimer01, Callback01);
  myTimer01Handle = osTimerCreate(osTimer(myTimer01), osTimerPeriodic, NULL);

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* Create the queue(s) */
  /* definition and creation of Queue */
  osMessageQDef(Queue, 256, uint8_t);
  QueueHandle = osMessageCreate(osMessageQ(Queue), NULL);

  /* USER CODE BEGIN RTOS_QUEUES */
  xStreamBuffer = xStreamBufferCreate(256,1);      //创建队列
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* definition and creation of MQTT06 */
  osThreadDef(MQTT06, mqttTask06, osPriorityHigh, 0, 380);
  MQTT06Handle = osThreadCreate(osThread(MQTT06), NULL);

  /* definition and creation of Receive5 */
  osThreadDef(Receive5, ReceiveTask5, osPriorityAboveNormal, 0, 360);
  Receive5Handle = osThreadCreate(osThread(Receive5), NULL);

  /* definition and creation of LEDtask03 */
  osThreadDef(LEDtask03, StartTask03, osPriorityNormal, 0, 320);
  LEDtask03Handle = osThreadCreate(osThread(LEDtask03), NULL);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

}

/* USER CODE BEGIN Header_mqttTask06 */
/**
  * @brief  Function implementing the MQTT06 thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_mqttTask06 */
void mqttTask06(void const * argument)
{
  /* USER CODE BEGIN mqttTask06 */
  /* Infinite loop */
  for(;;)
  {
	  	  	int               rv;
	  	  	char              ipaddr[16];
	  	  	char              gateway[16];
	  	  	unsigned char     wifi_flag=0;

	        //连接WiFi
	  	  if(!(wifi_flag&FLAG_WIFI_CONNECTED))
	  	  {
	  		 if( esp8266_join_network(DEF_ROUTER_SSID,DEF_ROUTER_PWD))
	  		 {//0 is connect success
	  			 esp8266_module_init();
	  			 osDelay(2000);
	  			 continue;
	  		 }
	  		 if(esp8266_get_ipaddr(ipaddr,gateway,sizeof(ipaddr)))
	  		 {
	  			 osDelay(1000);
	  			 continue;
	  		 }
	  		 if(esp8266_ping_test(gateway))
	  		 {
	  			 osDelay(1000);
	  			 continue;
	  		 }
	  		 wifi_flag |= FLAG_WIFI_CONNECTED;
	  	  }

	        //连接MQTT
	  	  if(!(wifi_flag&FLAG_SOCK_CONNECTED))
	  	  {
	  		  rv=mqtt_connect(MQTT_BROKER_HOSTNAME,MQTT_BROKER_PORT,MQTT_CLIENT_ID,MQTT_BROKER_USERNAME,MQTT_BROKER_PASSWORD);
	  		  if( rv )
	  		  {//0 is connect success
	  			  osDelay(2000);
	  			  continue;
	  		  }
	  		  //Subscribe to topics
	  		  mqtt_subscribe_topic(MQTT_SUB_TOPIC,Qos0,1);
	  		  //Flag bit
	  		  wifi_flag |= FLAG_SOCK_CONNECTED;

	  		  /*Change the timer period to 60s*/
	  		  xTimerChangePeriod(myTimer01Handle,60000,0);
	  		  /*Start timer*/
	  		  xTimerStart(myTimer01Handle,0);
	  		  /*Suspend the task, which is now stopped*/
	  		  vTaskSuspend(NULL);//挂起（挂起自己）
	  	  }
    osDelay(1);
  }
  /* USER CODE END mqttTask06 */
}

/* USER CODE BEGIN Header_ReceiveTask5 */
/**
* @brief Function implementing the Receive5 thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_ReceiveTask5 */
void ReceiveTask5(void const * argument)
{
  /* USER CODE BEGIN ReceiveTask5 */
  /* Infinite loop */
  for(;;)
  {
#if 1
	  	    unsigned char       buf[256];
	  		MQTTString          topicName;
	  		unsigned char       dup;
	  		int                 qos;
	  		unsigned char       retained;
	  		unsigned  short     msgid;
	  		unsigned  char     *payload = NULL;
	  		int                 payloadlen = 0;
	  		int                 rv;
	  	    char                correct_json[256]={0};
	  	    BaseType_t         xReturn=pdFALSE;

	  	    xReturn=xSemaphoreTake(myBinarySem01Handle,portMAX_DELAY);//获取信号量成功时，返回�?�为pdTRUE。否则进入阻塞状�????
	  	    if( pdTRUE == xReturn )
	  	    {
	  	    	memset(buf,0,sizeof(buf));
	  	    	xStreamBufferReceive(xStreamBuffer,buf, sizeof(buf), portMAX_DELAY);
	  	    }

	  	    //报文解析
	  	    rv=MQTTDeserialize_publish(&dup,&qos,&retained,&msgid,&topicName,&payload,&payloadlen,buf,sizeof(buf));
	  		if( rv == 1)
	  		{
	  			printf("MQTT payload:%s\n",payload);
	  			aliyun_json((char *)payload,payloadlen,correct_json);//截取出标准的有效的JSON格式（代码下面有展示�????
	  			parser_led_json(correct_json,strlen(correct_json));//JSON解析（代码下面有展示�????
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
#endif
  }
  /* USER CODE END ReceiveTask5 */
}

/* USER CODE BEGIN Header_StartTask03 */
/**
* @brief Function implementing the LEDtask03 thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTask03 */
void StartTask03(void const * argument)
{
  /* USER CODE BEGIN StartTask03 */
  /* Infinite loop */
  for(;;)
  {
#if 1
	  		unsigned char       buf[256];
	  		int                 packet_type;
	  	    int                 rv;

	  	    OLED_environment();
	  		memset(buf,0,sizeof(buf));
	  		if( (packet_type=MQTTPacket_read(buf,sizeof(buf),transport_getdata)) <0 )
	  		{
	  			printf("Wait aliyun command\n");
	  			osDelay(5000);
	  			continue;
	  		}

	  		if( PUBLISH == packet_type )
	  		{
	  			rv=xStreamBufferSend(xStreamBuffer,buf,sizeof(buf),portMAX_DELAY);
	  			if( !(rv>0) )
	  			{
	  				printf("ERROR:xStreamBufferSend\n");
	  			}
	  		}
	  		xSemaphoreGive( myBinarySem01Handle );
#endif
	  	osDelay(1);
  }
  /* USER CODE END StartTask03 */
}

/* Callback01 function */
void Callback01(void const * argument)
{
  /* USER CODE BEGIN Callback01 */
	int rv;

	rv=report_tempRH2_json();
	if( 0 == rv )
	{
		printf("ESP8266 MQTT publish message ok\n");
		clear_atcmd_buf();
	}
	else
	{
		printf("ESP8266 MQTT publish message failure,rv=%d\n",rv);
//		vTaskResume(mqttTask06);
	}
  /* USER CODE END Callback01 */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */
