/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    usart.h
  * @brief   This file contains all the function prototypes for
  *          the usart.c file
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
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __USART_H__
#define __USART_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* USER CODE BEGIN Includes */
#include <stdio.h>
#include <string.h>
#include <uasrt_port.h>

/* USER CODE END Includes */

extern UART_HandleTypeDef hlpuart1;

extern UART_HandleTypeDef huart1;

extern UART_HandleTypeDef huart2;

extern UART_HandleTypeDef huart3;

/* USER CODE BEGIN Private defines */
extern uint8_t 	    g_uart1_rxch;
extern char			g_uart1_rxbuf[256];
extern uint8_t 		g_uart1_bytes;
#define clear_uart1_rxbuf() 	do {memset(g_uart1_rxbuf,0,sizeof(g_uart1_rxbuf));g_uart1_bytes=0;} while(0)

extern uint8_t 	    g_uart2_rxch;
extern char			g_uart2_rxbuf[256];
extern uint8_t 		g_uart2_bytes;
#define clear_uart2_rxbuf() 	do {memset(g_uart2_rxbuf,0,sizeof(g_uart2_rxbuf));g_uart2_bytes=0;} while(0)

extern uint8_t 	    g_uart3_rxch;
extern char			g_uart3_rxbuf[256];
extern uint8_t  	g_uart3_bytes;
#define clear_uart3_rxbuf() 	do {memset(g_uart3_rxbuf,0,sizeof(g_uart3_rxbuf));g_uart3_bytes=0;} while(0)

extern uint8_t 	       g_lpuart1_rxch;
extern char            g_lpuart1_rxbuf[256];
extern uint8_t         g_lpuart1_bytes;
#define clear_lpuart1_rxbuf()     do {memset(g_lpuart1_rxbuf,0,sizeof(g_lpuart1_rxbuf));g_lpuart1_bytes=0;} while(0)

/* USER CODE END Private defines */

void MX_LPUART1_UART_Init(void);
void MX_USART1_UART_Init(void);
void MX_USART2_UART_Init(void);
void MX_USART3_UART_Init(void);

/* USER CODE BEGIN Prototypes */
//extern void uart_forward(void);
/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif

#endif /* __USART_H__ */

