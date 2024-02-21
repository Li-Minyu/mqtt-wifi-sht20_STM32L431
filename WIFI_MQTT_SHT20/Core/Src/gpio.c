/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    gpio.c
  * @brief   This file provides code for the configuration
  *          of all used GPIO pins.
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
#include "gpio.h"

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/*----------------------------------------------------------------------------*/
/* Configure GPIO                                                             */
/*----------------------------------------------------------------------------*/
/* USER CODE BEGIN 1 */

/* USER CODE END 1 */

/** Configure pins as
        * Analog
        * Input
        * Output
        * EVENT_OUT
        * EXTI
*/
void MX_GPIO_Init(void)
{

  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, SysLed_Pin|GreenLed_Pin|RS485_Dir_Pin|RedLed_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(BlueLed_GPIO_Port, BlueLed_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, CAN_STB_Pin|Motor_B_Pin|Motor_C_Pin|Motor_D_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(W1Dat_GPIO_Port, W1Dat_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(Motor_A_GPIO_Port, Motor_A_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : PCPin PCPin PCPin PCPin
                           PCPin PCPin PCPin PCPin */
  GPIO_InitStruct.Pin = SysLed_Pin|GreenLed_Pin|RS485_Dir_Pin|CAN_STB_Pin
                          |RedLed_Pin|Motor_B_Pin|Motor_C_Pin|Motor_D_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pin : PtPin */
  GPIO_InitStruct.Pin = BlueLed_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(BlueLed_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : PB11 */
  GPIO_InitStruct.Pin = GPIO_PIN_11;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLDOWN;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : PBPin PBPin PBPin */
  GPIO_InitStruct.Pin = Key1_Pin|Key2_Pin|Key3_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pin : PtPin */
  GPIO_InitStruct.Pin = W1Dat_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
  HAL_GPIO_Init(W1Dat_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : PtPin */
  GPIO_InitStruct.Pin = Motor_A_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(Motor_A_GPIO_Port, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI15_10_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);

}

/* USER CODE BEGIN 2 */
/*
 *+----------------------+
 *|     GPIO Led API     |
 *+----------------------+
 */
gpio_t     leds[LedMax]=
{
		{"SysLed",	GPIOC, GPIO_PIN_2},
		{"BlueLed", GPIOB, GPIO_PIN_2},
		{"RedLed",  GPIOC, GPIO_PIN_9},
		{"GreenLed",GPIOC, GPIO_PIN_6},
};

void turn_led(int which, int status)
{
	GPIO_PinState       level;
	if( which<0 || which>=LedMax)
	{
		return ;
	}
	level = (status == OFF) ? GPIO_PIN_SET : GPIO_PIN_RESET;

	HAL_GPIO_WritePin(leds[which].group, leds[which].pin, level);
}

void blink_led(int which, uint32_t interval)
{
	if(which>=LedMax || interval<=0)
	{
		return ;
	}
	turn_led(which,ON);
	HAL_Delay(interval);

	turn_led(which,OFF);
	HAL_Delay(interval);
}

void sysled_hearbeat(void)
{
	blink_led(SysLed, 100);
	blink_led(SysLed, 100);
	blink_led(SysLed, 800);
}

void success_beat(void)
{
	blink_led(SysLed, 100);
}

void fail_beat(void)
{
	blink_led(SysLed, 500);
}

/*
 *+----------------------+
 *|    GPIO Relay API    |
 *+----------------------+
 */
//void turn_relay(status_t status)
//{
//	GPIO_PinState        level;
//
//	level = status==OFF ? GPIO_PIN_RESET : GPIO_PIN_SET;
//	HAL_GPIO_WritePin(Relay_GPIO_Port, Relay_Pin, level);
//}

/*
 *+----------------------+
 *|     GPIO Key API     |
 *+----------------------+
 */
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	static unsigned char   status[3]={0};

	if( Key1_Pin == GPIO_Pin )
	{
		status[0] ^= 1;//0^1=1 ON  1^1=0 OFF
		turn_led(RedLed, status[0]);
	}
	else if( Key2_Pin == GPIO_Pin )
	{
		status[1] ^= 1;
		turn_led(GreenLed, status[1]);
	}
	if( Key3_Pin == GPIO_Pin )
	{
		status[2] ^= 1;
		turn_led(BlueLed, status[2]);
	}
}

//在中断里，加了延时的回调函数，有延时存在，方法不够好
//void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
//{
//	if(Key1_Pin==GPIO_Pin)
//	{
//		blink_led(BlueLed,500);
//	}
//	else if(Key2_Pin==GPIO_Pin)
//	{
//		blink_led(RedLed,500);
//	}
//	else if(Key3_Pin==GPIO_Pin)
//	{
//		blink_led(GreenLed,500);
//	}
//}
/* USER CODE END 2 */
