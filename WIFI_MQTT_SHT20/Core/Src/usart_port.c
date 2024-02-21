/*
 * port.c
 *
 *  Created on: Oct 14, 2023
 *      Author: liminyv
 */
#include <uasrt_port.h>
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"
#include "stream_buffer.h"

extern osMessageQId QueueHandle;
extern StreamBufferHandle_t xStreamBuffer;
extern osSemaphoreId myBinarySem01Handle;

#ifdef __GNUC__
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch,FILE *f)
#endif/*__GNUC__*/
PUTCHAR_PROTOTYPE
{
	HAL_UART_Transmit(&huart1,(uint8_t*)&ch,1,0xFFFF);
	return ch;
}

#if 0
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	if(huart->Instance == USART2)
	{
		/* enter interrupt */
//		rtosIntEnter();

		if(huart->Instance == USART2)
		{
			xQueueSendFromISR (QueueHandle,&g_uart2_rxch,pdFALSE);
//	        xStreamBufferSendFromISR(xStreamBuffer,&g_uart2_rxch,1,NULL);
			xSemaphoreGiveFromISR(myBinarySem01Handle,NULL);
			HAL_UART_Receive_IT(&huart2,&g_uart2_rxch,1);
		}

		/* leave interrupt */
//	    rtosIntLeave();
	}
}
#endif

#if 1
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	if(huart->Instance == USART1)
	{
		if(g_uart1_bytes<sizeof(g_uart1_rxbuf))
		{
			g_uart1_rxbuf[g_uart1_bytes++] = g_uart1_rxch;
		}
		HAL_UART_Receive_IT(&huart1,&g_uart1_rxch,1);
	}

	if(huart->Instance == USART2)
	{
		if(g_uart2_bytes<sizeof(g_uart2_rxbuf))
		{
			g_uart2_rxbuf[g_uart2_bytes++] = g_uart2_rxch;
		}
		HAL_UART_Receive_IT(&huart2,&g_uart2_rxch,1);
	}

	if(huart->Instance == USART3)
	{
		if(g_uart3_bytes<sizeof(g_uart3_rxbuf))
		{
			g_uart3_rxbuf[g_uart3_bytes++] = g_uart3_rxch;
		}
		HAL_UART_Receive_IT(&huart3,&g_uart3_rxch,1);
	}

	if(huart->Instance == LPUART1)
	{
		if(g_uart1_bytes<sizeof(g_lpuart1_rxbuf))
		{
			g_lpuart1_rxbuf[g_lpuart1_bytes++] = g_lpuart1_rxch;
		}
		HAL_UART_Receive_IT(&hlpuart1,&g_lpuart1_rxch,1);
	}
}
#endif

void uart_forward_uart(void)
{
	if( strstr(g_uart1_rxbuf,"\r\n") )
	{
		HAL_UART_Transmit(&huart2,(uint8_t *)g_uart1_rxbuf,g_uart1_bytes,0xFF);
		clear_uart1_rxbuf();
	}
	if( g_uart2_bytes >0 )
	{
		HAL_Delay(100);
		HAL_UART_Transmit(&huart1,(uint8_t *)g_uart2_rxbuf,g_uart2_bytes,0xFF);
		clear_uart2_rxbuf();
	}
}


void uart1_Init(void)
{
    HAL_UART_Receive_IT(&huart1, &g_uart1_rxch, 1);
}

/* +------------------------------------------------------+
 * |   UART2:ESP8266(WiFi)/ESP32(WiFi/BLE) API functions  |
 * +------------------------------------------------------+*/
void uart2_Init(void)
{
    HAL_UART_Receive_IT(&huart2, &g_uart2_rxch, 1);
}

/* +-------------------------------+
 * |   UART3:RS232 API functions   |
 * +-------------------------------+*/

void uart3_Init(void)
{
    HAL_UART_Receive_IT(&huart3, &g_uart3_rxch, 1);
}

int rs232_send(uint8_t *data, int bytes)
{
	HAL_StatusTypeDef status;

    status = HAL_UART_Transmit(&huart3, data, bytes, 0xffff);
	if(status == 0)
	{
		printf("RS232 Send success\r\n");
	}
	else
	{
		printf("RS232 Send failure\r\n");
	}

	return status == HAL_OK ? 0 : -1;
}

int rs232_receive(void)
{
	if(g_uart3_bytes <= 0)
	{
		return 0;
	}

//	printf("g_uart3_bytes2:%d\r\n",(int)g_uart3_bytes);
	printf("RS232 receive data:");
	for(int i = 0; i < g_uart3_bytes; i++)
	{
		printf("0x%x ",g_uart3_rxbuf[i]);
	}
	printf("\n");
	clear_uart3_rxbuf();

	return g_uart3_bytes;
}
/* +--------------------------------+
 * |   LPUART1:RS485 API functions  |
 * +--------------------------------+*/

/* Direction Pin set to be high level will be send mode, and low level will be receive mode */
#define rs485_set_dirTx()   HAL_GPIO_WritePin(RS485_Dir_GPIO_Port, RS485_Dir_Pin, GPIO_PIN_SET)
#define rs485_set_dirRx()   HAL_GPIO_WritePin(RS485_Dir_GPIO_Port, RS485_Dir_Pin, GPIO_PIN_RESET)

void rs485_Init(void)
{
    //使能串口接收中断
    HAL_UART_Receive_IT(&hlpuart1, &g_lpuart1_rxch, 1);
    rs485_set_dirRx();
}

int rs485_send(uint8_t *data, int bytes)
{
	HAL_StatusTypeDef status;

	rs485_set_dirTx();
    status = HAL_UART_Transmit(&hlpuart1, data, bytes, 0xffff);
	if(status == 0)
	{
		printf("RS485 Send success\r\n");
	}
	else
	{
		printf("RS485 Send failure\r\n");
	}

    HAL_Delay(1);
	rs485_set_dirRx();
	return status == HAL_OK ? 0 : -1;
}

int rs485_receive(void)
{
	int    i;

	if(g_lpuart1_bytes <= 0)
	{
		return 0;
	}

	HAL_Delay(10);
	printf("RS485 receive data:");
	for(i = 0; i < g_lpuart1_bytes; i++)
	{
		printf("0x%x ",g_lpuart1_rxbuf[i]);
	}
	printf("\n");
	clear_lpuart1_rxbuf();

	return g_lpuart1_bytes;
}

