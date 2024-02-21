/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    can.c
  * @brief   This file provides code for the configuration
  *          of the CAN instances.
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
#include "can.h"

/* USER CODE BEGIN 0 */
#define CAN_RX0_INT_ENABLE 1

CAN_RxHeaderTypeDef     RxHeader;
uint8_t                 RxData[64];
/* USER CODE END 0 */

CAN_HandleTypeDef hcan1;

/* CAN1 init function */
void MX_CAN1_Init(void)
{

  /* USER CODE BEGIN CAN1_Init 0 */

  /* USER CODE END CAN1_Init 0 */

  /* USER CODE BEGIN CAN1_Init 1 */

  /* USER CODE END CAN1_Init 1 */
  hcan1.Instance = CAN1;
  hcan1.Init.Prescaler = 16;
  hcan1.Init.Mode = CAN_MODE_LOOPBACK;
  hcan1.Init.SyncJumpWidth = CAN_SJW_1TQ;
  hcan1.Init.TimeSeg1 = CAN_BS1_8TQ;
  hcan1.Init.TimeSeg2 = CAN_BS2_1TQ;
  hcan1.Init.TimeTriggeredMode = DISABLE;
  hcan1.Init.AutoBusOff = DISABLE;
  hcan1.Init.AutoWakeUp = DISABLE;
  hcan1.Init.AutoRetransmission = DISABLE;
  hcan1.Init.ReceiveFifoLocked = DISABLE;
  hcan1.Init.TransmitFifoPriority = DISABLE;
  if (HAL_CAN_Init(&hcan1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN CAN1_Init 2 */
  CAN_Filter_Config();

#if CAN_RX0_INT_ENABLE
  HAL_CAN_ActivateNotification(&hcan1,CAN_IT_RX_FIFO0_MSG_PENDING);
#endif

  HAL_CAN_Start(&hcan1);

  /* USER CODE END CAN1_Init 2 */

}

void HAL_CAN_MspInit(CAN_HandleTypeDef* canHandle)
{

  GPIO_InitTypeDef GPIO_InitStruct = {0};
  if(canHandle->Instance==CAN1)
  {
  /* USER CODE BEGIN CAN1_MspInit 0 */

  /* USER CODE END CAN1_MspInit 0 */
    /* CAN1 clock enable */
    __HAL_RCC_CAN1_CLK_ENABLE();

    __HAL_RCC_GPIOB_CLK_ENABLE();
    /**CAN1 GPIO Configuration
    PB8     ------> CAN1_RX
    PB9     ------> CAN1_TX
    */
    GPIO_InitStruct.Pin = GPIO_PIN_8|GPIO_PIN_9;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF9_CAN1;
    HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

    /* CAN1 interrupt Init */
    HAL_NVIC_SetPriority(CAN1_RX0_IRQn, 5, 0);
    HAL_NVIC_EnableIRQ(CAN1_RX0_IRQn);
    HAL_NVIC_SetPriority(CAN1_RX1_IRQn, 5, 0);
    HAL_NVIC_EnableIRQ(CAN1_RX1_IRQn);
  /* USER CODE BEGIN CAN1_MspInit 1 */

  /* USER CODE END CAN1_MspInit 1 */
  }
}

void HAL_CAN_MspDeInit(CAN_HandleTypeDef* canHandle)
{

  if(canHandle->Instance==CAN1)
  {
  /* USER CODE BEGIN CAN1_MspDeInit 0 */

  /* USER CODE END CAN1_MspDeInit 0 */
    /* Peripheral clock disable */
    __HAL_RCC_CAN1_CLK_DISABLE();

    /**CAN1 GPIO Configuration
    PB8     ------> CAN1_RX
    PB9     ------> CAN1_TX
    */
    HAL_GPIO_DeInit(GPIOB, GPIO_PIN_8|GPIO_PIN_9);

    /* CAN1 interrupt Deinit */
    HAL_NVIC_DisableIRQ(CAN1_RX0_IRQn);
    HAL_NVIC_DisableIRQ(CAN1_RX1_IRQn);
  /* USER CODE BEGIN CAN1_MspDeInit 1 */

  /* USER CODE END CAN1_MspDeInit 1 */
  }
}

/* USER CODE BEGIN 1 */
void CAN_Filter_Config()
{
	CAN_FilterTypeDef sFilterConfig;

	sFilterConfig.FilterBank = 0;						//筛�?�器编号, CAN1�?????????????0-13, CAN2�?????????????14-27
	sFilterConfig.FilterMode = CAN_FILTERMODE_IDMASK;	//采用掩码模式
	sFilterConfig.FilterScale = CAN_FILTERSCALE_32BIT;	//设置筛�?�器的尺�?????????????, 采用32�?????????????
	sFilterConfig.FilterIdHigh = 0X0000;				//过滤器ID�?????????????16�?????????????,即CAN_FxR1寄存器的�?????????????16�?????????????
	sFilterConfig.FilterIdLow = 0X0000;					//过滤器ID�?????????????16�?????????????,即CAN_FxR1寄存器的�?????????????16�?????????????
	sFilterConfig.FilterMaskIdHigh = 0X0000;			//过滤器掩码高16�?????????????,即CAN_FxR2寄存器的�?????????????16�?????????????
	sFilterConfig.FilterMaskIdLow = 0X0000;				//过滤器掩码低16�?????????????,即CAN_FxR2寄存器的�?????????????16�?????????????
	sFilterConfig.FilterFIFOAssignment = CAN_RX_FIFO0;	//设置经过筛�?�后数据存储到哪个接收FIFO
	sFilterConfig.FilterActivation = ENABLE;			//是否使能本筛选器
	sFilterConfig.SlaveStartFilterBank = 14;			//指定为CAN1分配多少个滤波器�?????????????

	if(HAL_CAN_ConfigFilter(&hcan1, &sFilterConfig) != HAL_OK)
	{
		Error_Handler();
	}
}

int CAN_Transmit_Msg(uint32_t id,uint8_t *msg, uint8_t len)
{
	CAN_TxHeaderTypeDef   TxHeader;
	uint32_t              TxMailBox = 0;

	if(len>8)
	{
		len=8;
	}

	TxHeader.StdId = id; // 标准标识
	TxHeader.ExtId = 0; // 扩展标识
	TxHeader.RTR = 0; // 帧类�?????????????(数据帧或远程�?????????????)
	TxHeader.IDE = 0; // 帧模�?????????????(标准帧或扩展�?????????????)
	TxHeader.DLC = len; // 数据长度
	TxHeader.TransmitGlobalTime = ENABLE; // 发不发�?�时间标�?????????????

	if(HAL_CAN_AddTxMessage(&hcan1, &TxHeader, msg, &TxMailBox) != HAL_OK) /* 发�?�消�??????????? */
	{
		return 1;
	}
	return 0;
//	if (HAL_CAN_GetTxMailboxesFreeLevel(&hcan1) != 3) /* 等待发�?�完�???????????,�???????????有邮�???????????(有三个邮�???????????)为空 */
//	{
//		return 0;
//	}
//	else
//	{
//		return 1;
//	}

//	return (HAL_CAN_AddTxMessage(&hcan1, &TxHeader, pdata, &tx_mailbox));
}

int CAN_Receive_Msg(uint32_t id,uint8_t *buf)
{
	if (HAL_CAN_GetRxFifoFillLevel(&hcan1, CAN_RX_FIFO0) == 0)     /* 等待数据接收完成 */
	{
		return 0;
	}

	if (HAL_CAN_GetRxMessage(&hcan1, CAN_RX_FIFO0, &RxHeader, buf) != HAL_OK)  /* 读取数据 */
	{
		return 0;
	}

	if (RxHeader.StdId!= id || RxHeader.IDE != CAN_ID_STD || RxHeader.RTR != CAN_RTR_DATA)       /* 接收到的ID不对 / 不是标准�??????????? / 不是数据�??????????? */
	{
		return 0;
	}

	if(RxHeader.IDE == CAN_ID_STD)
	{//0
		printf("StdId ID:0x%x\n",(unsigned int)RxHeader.StdId);
	}
	else
	{///1
		printf("ExtId ID:0x%x\n",(unsigned int)RxHeader.ExtId);
	}

	printf("CAN IDE:0x%x\n",(unsigned int)RxHeader.IDE);
	printf("CAN RTR:0x%x\n",(unsigned int)RxHeader.RTR);
	printf("CAN DLC:0x%x\n",(unsigned int)RxHeader.DLC);

	return RxHeader.DLC;
}

#if CAN_RX0_INT_ENABLE
void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan)
{
    if(hcan->Instance == CAN1)
    {
		if (HAL_CAN_GetRxMessage(&hcan1, CAN_RX_FIFO0, &RxHeader, RxData) == HAL_OK)		// 获得接收到的数据头和数据
		{
			HAL_CAN_ActivateNotification(&hcan1, CAN_IT_RX_FIFO0_MSG_PENDING);// 再次使能FIFO0接收中断
		}
    }
}
#endif

void CAN_Receive_Buf(void)
{
	  int         i;

	  if( RxData[0]> 0 )
	  {
		  HAL_Delay(20);
		  if(RxHeader.IDE == CAN_ID_STD)
		  {
			  printf("StdId ID:0x%x\n",(unsigned int)RxHeader.StdId);
		  }
		  else
		  {
			  printf("ExtId ID:0x%x\n",(unsigned int)RxHeader.ExtId);
		  }
		  printf("CAN IDE:0x%x\n",(unsigned int)RxHeader.IDE);
		  printf("CAN RTR:0x%x\n",(unsigned int)RxHeader.RTR);
		  printf("CAN DLC:0x%x\n",(unsigned int)RxHeader.DLC);

		  printf("RECV DATA:");
		  for(i = 0; i < RxHeader.DLC; i++)
		  {
			  printf("0x%x ",RxData[i]);
		  }
		  printf("\n");
		  printf("+++++++++++++++++++++++++++++++\r\n");

		  memset(RxData,0,sizeof(RxData));
	  }
}
/* USER CODE END 1 */
