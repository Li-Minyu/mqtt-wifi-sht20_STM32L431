/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    gpio.h
  * @brief   This file contains all the function prototypes for
  *          the gpio.c file
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
#ifndef __GPIO_H__
#define __GPIO_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

void MX_GPIO_Init(void);

/* USER CODE BEGIN Prototypes */
enum
{
	SysLed,
	BlueLed,
	RedLed,
	GreenLed,
	LedMax,
};

#define OFF 0
#define ON 1

typedef struct gpio_s
{
	const char          *name;
	GPIO_TypeDef		*group;
	uint16_t			pin;
}gpio_t;

extern gpio_t   leds[LedMax];

extern void turn_led(int which, int status);
extern void blink_led(int which, uint32_t interval);
extern void sysled_hearbeat(void);
extern void success_beat(void);
extern void fail_beat(void);
/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif
#endif /*__ GPIO_H__ */

