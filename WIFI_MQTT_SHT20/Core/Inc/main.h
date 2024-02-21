/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
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
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32l4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define SysLed_Pin GPIO_PIN_2
#define SysLed_GPIO_Port GPIOC
#define AdcLux_Pin GPIO_PIN_0
#define AdcLux_GPIO_Port GPIOB
#define AdcMix_Pin GPIO_PIN_1
#define AdcMix_GPIO_Port GPIOB
#define BlueLed_Pin GPIO_PIN_2
#define BlueLed_GPIO_Port GPIOB
#define Key1_Pin GPIO_PIN_12
#define Key1_GPIO_Port GPIOB
#define Key1_EXTI_IRQn EXTI15_10_IRQn
#define Key2_Pin GPIO_PIN_13
#define Key2_GPIO_Port GPIOB
#define Key2_EXTI_IRQn EXTI15_10_IRQn
#define Key3_Pin GPIO_PIN_14
#define Key3_GPIO_Port GPIOB
#define Key3_EXTI_IRQn EXTI15_10_IRQn
#define GreenLed_Pin GPIO_PIN_6
#define GreenLed_GPIO_Port GPIOC
#define RS485_Dir_Pin GPIO_PIN_7
#define RS485_Dir_GPIO_Port GPIOC
#define CAN_STB_Pin GPIO_PIN_8
#define CAN_STB_GPIO_Port GPIOC
#define RedLed_Pin GPIO_PIN_9
#define RedLed_GPIO_Port GPIOC
#define Beep_Pin GPIO_PIN_11
#define Beep_GPIO_Port GPIOA
#define W1Dat_Pin GPIO_PIN_12
#define W1Dat_GPIO_Port GPIOA
#define Motor_A_Pin GPIO_PIN_15
#define Motor_A_GPIO_Port GPIOA
#define Motor_B_Pin GPIO_PIN_10
#define Motor_B_GPIO_Port GPIOC
#define Motor_C_Pin GPIO_PIN_11
#define Motor_C_GPIO_Port GPIOC
#define Motor_D_Pin GPIO_PIN_12
#define Motor_D_GPIO_Port GPIOC

/* USER CODE BEGIN Private defines */
#define time_after(a,b)  ((int32_t)(b)-(int32_t)(a)<0)
extern int parser_led_json(char *json_string,int bytes);
extern int aliyun_json(char *payload,int payloadlen,char *correct_json);
extern int report_tempRH2_json(void);
extern void OLED_environment(void);
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
