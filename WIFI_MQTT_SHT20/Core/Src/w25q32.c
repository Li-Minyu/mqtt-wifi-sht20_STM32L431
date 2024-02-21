/*
 * w25q64.c
 *
 *  Created on: Mar 25, 2022
 *      Author: LX
 */

#include "w25q32.h"
#include "stdio.h"
#include "spi.h"

uint8_t w25x_read_id = 0x90;                    // 读ID
uint8_t m_addr[3]    = {0,0,0};                 // 测试地址0x000000
uint8_t check_addr   = 0x05;                    // 检查线路是否繁忙
uint8_t enable_write = 0x06;                    // 使能了才能改变芯片数据
uint8_t erase_addr   = 0x20;                    // 擦除命令
uint8_t write_addr   = 0x02;                    // 写数据命令
uint8_t read_addr    = 0x03;                    // 读数据命令

#define CS_HIGH    HAL_GPIO_WritePin(GPIOA, GPIO_PIN_4, GPIO_PIN_SET)
#define CS_LOW     HAL_GPIO_WritePin(GPIOA, GPIO_PIN_4, GPIO_PIN_RESET)

//没改完
static inline uint8_t w25q_spi_xfer(uint8_t txbyte)
{
	uint8_t rxbyte = 0x00;
	                               //txbyteID命令是0x90
	HAL_SPI_TransmitReceive(&hspi1, &txbyte, &rxbyte, 1, 0xFFFF);

//	HAL_SPI_Transmit(&hspi1, &txbyte, 1, 0xFFFF);
//	HAL_SPI_Receive(&hspi1, rxbyte, 5, 0xFFFF);
	return rxbyte;
}

void ReadID(void)
{
    uint8_t temp_ID[5] = {0,0,0,0,0};
    CS_LOW;
    HAL_SPI_Transmit(&hspi1, &w25x_read_id, 1, 100);//w25x_read_id = 0x90
    HAL_SPI_Receive(&hspi1, temp_ID, 5, 100);
    CS_HIGH;
    printf("ID号为: 0x%x%x\n",temp_ID[3],temp_ID[4]);
}
void CheckBusy(void)
{
    uint8_t status=1;
    uint32_t timeCount=0;
    do
    {
        timeCount++;
        if(timeCount > 0xEFFFFFFF) //等待超时
        {
        }
        CS_LOW;
        HAL_SPI_Transmit(&hspi1, &check_addr, 1, 100);
        HAL_SPI_Receive(&hspi1, &status, 1, 100);
        CS_HIGH;
    }while((status&0x01)==0x01);
}


/* 写入数据 */
void ReadData(void)
{
    uint8_t temp_wdata[] = "STM32 SPI FLASH";
    CheckBusy();

    printf("The write data:%s\n",temp_wdata);
    CS_LOW;
    HAL_SPI_Transmit(&hspi1, &enable_write, 1, 100);//使能写入
    CS_HIGH;

    CS_LOW;
    HAL_SPI_Transmit(&hspi1, &erase_addr, 1, 100);//擦除命令
    HAL_SPI_Transmit(&hspi1, m_addr, 3, 100);//擦除的地址
    CS_HIGH;

    CheckBusy();
    CS_LOW;
    HAL_SPI_Transmit(&hspi1, &enable_write, 1, 100);//使能写入
    CS_HIGH;

    CS_LOW;
    HAL_SPI_Transmit(&hspi1, &write_addr, 1, 100);//写入命令
    HAL_SPI_Transmit(&hspi1, m_addr, 3, 100);//写入地址
    HAL_SPI_Transmit(&hspi1, temp_wdata, sizeof(temp_wdata), 100);//写入数据
    CS_HIGH;
}
void WriteData(void)
{
    uint8_t temp_rdata[128] = {0};

    CheckBusy();

    CS_LOW;
    HAL_SPI_Transmit(&hspi1, &read_addr, 1, 100);
    HAL_SPI_Transmit(&hspi1, m_addr, 3, 100);
    HAL_SPI_Receive(&hspi1, temp_rdata, sizeof(temp_rdata), 100);
    CS_HIGH;

    printf("The read data:%s\n",temp_rdata);
}

