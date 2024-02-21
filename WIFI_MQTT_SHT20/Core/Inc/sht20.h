/*
 * sht20.h
 *
 *  Created on: Aug 3, 2023
 *      Author: liminyv
 */

#ifndef INC_SHT20_H_
#define INC_SHT20_H_

#include "stm32l4xx_hal.h"

#define SHT20_ADDR       0x40
#define SHT20_ADDR_WR   (SHT20_ADDR<<1) /*=0x80 address bit[0]=0 is write*/
#define SHT20_ADDR_RD   ((SHT20_ADDR<<1) | 0x01)/*=0x81 address bit[0]=1 is read*/

#define SHT20_DATA_SIZE  3

/*
#define	 SOFT_RESET_CMD=0xFE           //command soft reset(软件复位)
#define	 SHT20_MEASURE_TEMP_CMD=0xE3   //触发温度测量，主机模式
#define	 SHT20_MEASURE_RH_CMD=0xE5     //触发湿度测量，主机模式

#define	 SHT20_NO_MEASURE_TEMP_CMD=0xF3   //触发温度测量，非主机模式
#define	 SHT20_NO_MEASURE_RH_CMD=0xF5      //触发湿度测量，非主机模式
*/

//extern int sht20_SampleData(float *temperature,float *humidity);
extern int sht20_sample_temp_or_hum(uint8_t cmd, float  *data);


#endif /* INC_SHT20_H_ */

