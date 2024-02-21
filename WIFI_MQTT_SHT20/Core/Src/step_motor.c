/*
 * step_motor.c
 *
 *  Created on: Nov 5, 2023
 *      Author: liminyv
 */

#include "step_motor.h"
#include "gpio.h"

#define STEP_MOTOR_A_H		HAL_GPIO_WritePin(Motor_A_GPIO_Port,Motor_A_Pin,GPIO_PIN_SET)
#define STEP_MOTOR_A_L		HAL_GPIO_WritePin(Motor_A_GPIO_Port,Motor_A_Pin,GPIO_PIN_RESET)

#define STEP_MOTOR_B_H		HAL_GPIO_WritePin(Motor_B_GPIO_Port,Motor_B_Pin,GPIO_PIN_SET)
#define STEP_MOTOR_B_L		HAL_GPIO_WritePin(Motor_B_GPIO_Port,Motor_B_Pin,GPIO_PIN_RESET)

#define STEP_MOTOR_C_H		HAL_GPIO_WritePin(Motor_C_GPIO_Port,Motor_C_Pin,GPIO_PIN_SET)
#define STEP_MOTOR_C_L		HAL_GPIO_WritePin(Motor_C_GPIO_Port,Motor_C_Pin,GPIO_PIN_RESET)

#define STEP_MOTOR_D_H		HAL_GPIO_WritePin(Motor_D_GPIO_Port,Motor_D_Pin,GPIO_PIN_SET)
#define STEP_MOTOR_D_L		HAL_GPIO_WritePin(Motor_D_GPIO_Port,Motor_D_Pin,GPIO_PIN_RESET)

void step_motor_control_8A(uint8_t direction)  //电机单步8拍
{
    static uint8_t step = 0;

    if(1 == direction) //1逆时针
    {
        if(0 == step)
        {
        	step = 8;
        }
        step--;
    }

    if(0 == step)
    {
    	STEP_MOTOR_A_H;
    	STEP_MOTOR_B_L;
    	STEP_MOTOR_C_L;
    	STEP_MOTOR_D_L;
    }
    else if(1 == step)
    {
    	STEP_MOTOR_A_H;
    	STEP_MOTOR_B_H;
    	STEP_MOTOR_C_L;
    	STEP_MOTOR_D_L;
    }
    else if(2 == step)
    {
    	STEP_MOTOR_A_L;
    	STEP_MOTOR_B_H;
    	STEP_MOTOR_C_L;
    	STEP_MOTOR_D_L;
    }
    else if(3 == step)
    {
    	STEP_MOTOR_A_L;
    	STEP_MOTOR_B_H;
    	STEP_MOTOR_C_H;
    	STEP_MOTOR_D_L;
    }
    else if(4 == step)
    {
    	STEP_MOTOR_A_L;
    	STEP_MOTOR_B_L;
    	STEP_MOTOR_C_H;
    	STEP_MOTOR_D_L;
    }
    else if(5 == step)
    {
    	STEP_MOTOR_A_L;
    	STEP_MOTOR_B_L;
    	STEP_MOTOR_C_H;
    	STEP_MOTOR_D_H;
    }
    else if(6 == step)
    {
    	STEP_MOTOR_A_L;
    	STEP_MOTOR_B_L;
    	STEP_MOTOR_C_L;
    	STEP_MOTOR_D_H;
    }
    else if(7 == step)
    {
    	STEP_MOTOR_A_H;
    	STEP_MOTOR_B_L;
    	STEP_MOTOR_C_L;
    	STEP_MOTOR_D_H;
    }

    if(0 == direction)//0顺时针
    {
        step++;
        if(8 == step)
    	{
        	step = 0;
    	}
    }
}

void step_motor_start(uint16_t angle,uint8_t direction)
{// 1→正转   0→反转
	int i=0;
	int pulse = (int)((double)(angle/5.625)*64);

	for(i=0; i<pulse; i++)
	{
		step_motor_control_8A(direction);
		HAL_Delay(2);
	}
}

void step_motor_stop(void)
{
	STEP_MOTOR_A_L;
	STEP_MOTOR_B_L;
	STEP_MOTOR_C_L;
	STEP_MOTOR_D_L;
}






















