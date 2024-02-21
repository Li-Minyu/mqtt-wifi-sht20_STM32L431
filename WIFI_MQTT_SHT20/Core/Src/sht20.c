/*
 * sht20.c
 */

#include "sht20.h"
#include <stdio.h>
#include "stm32l4xx_hal.h"
#include "tim.h"

#define CONFIG_GPIO_I2C
#ifdef  CONFIG_GPIO_I2C
#include "gpio_i2c.h"   /*GPIO模拟I2C*/
#else
#include "i2c.h"        /* I2C */
#endif

/*
//#define CONFIG_SHT20_DEBUG
#ifdef	CONFIG_SHT20_DEBUG
#define	sht20_print(format,args...) printf(format,##args)
#else
#define	sht20_print(format,args...) do{} while(0)
#endif
*/

int sht20_sample_temp_or_hum(uint8_t cmd, float  *data)
{
	uint8_t           buf[2];
	unsigned short    sht20_data=0;
	int               rv;

#ifdef CONFIG_GPIO_I2C
	/*主设备向发送从设备地址信号，这里sht20的写地址是0x80,成功则返回1个字节*/
	rv=I2C_Master_Transmit(0x80,&cmd,1);
#else
	rv=HAL_I2C_Master_Transmit(&hi2c1,0x80,&cmd,1,0xFF);
#endif

	if(0!=rv)
		return -1;

	if(cmd==0xF3)/*SHT20_NO_MEASURE_TEMP_CMD=0xF3 触发温度测量，非主机模式*/
		HAL_Delay(85);
	else if(cmd==0xF5)/*SHT20_NO_MEASURE_RH_CMD=0xF5 触发湿度测量，非主机模式*/
		HAL_Delay(29);

#ifdef CONFIG_GPIO_I2C
	/*主设备向发送从设备地址信号，这里sht20的读地址是0x81,成功则返回2个字节，分别是温湿度的整数和小数，并且数据放在buf中*/
	rv=I2C_Master_Receive(0x81,buf,2);
#else
	rv=HAL_I2C_Master_Receive(&hi2c1,0x81,buf,2,0xFF);
#endif

	if(0!=rv)
		return -1;

	sht20_data=buf[0];
	sht20_data=(sht20_data<<8);
	sht20_data+=buf[1]&0xFC;
	if(cmd==0xF3)
	{
		*data= -46.85+175.72*((float)sht20_data/65536);//计算
		//printf("Temperature=%d\n",sht20_data);
	}
	else if(cmd==0xF5)
	{
		*data= -6.0+125.0*((float)sht20_data/65536);//计算
		//printf("Humidity=%d\n",sht20_data);
	}
	return *data;
}


/*
static int sht20_send_cmd(SHT20_CMD cmd)
{
	uint8_t buf;
	buf = cmd;

	return HAL_I2C_Master_Transmit(&hi2c1,SHT20_ADDR_WR,(uint8_t*)buf,1,0xFF);
}

static void sht20_soft_reset(void)
{
	sht20_send_cmd(SOFT_RESET_CMD);
	HAL_Delay(1);
}

static uint8_t sht20_read_TEMP(uint8_t *buf,uint8_t buf_size)
{
	uint16_t  cmd=SHT20_MEASURE_TEMP_CMD; //触发温度测量，主机模式
	uint8_t   rv;

	if (!buf || buf_size < SHT20_DATA_SIZE)
		{
			sht20_print("%s():Invalid input arguments\r\n",__func__);
			return -1;
		}

		rv = sht20_send_cmd(cmd);
		if (rv)
		{
			sht20_print("ERROR:sht20_read_TEMP sht20_send_cmd,rv=%d\r\n",rv);
			sht20_soft_reset();
			return -2;
		}

		rv=HAL_I2C_Master_Receive(&hi2c1,SHT20_ADDR_RD,buf,SHT20_DATA_SIZE,0xFF);
		if(rv)
		{
			sht20_print("ERROR:HAL_I2C_Master_Receive,rv=%d\r\n",rv);
			return -3;
		}

		return 0;

}

static uint8_t sht20_read_RH(uint8_t *buf,uint8_t buf_size)
{
	uint16_t  cmd=SHT20_MEASURE_RH_CMD;//触发湿度测量，主机模式
	uint8_t   rv;

	if (!buf || buf_size < SHT20_DATA_SIZE)
		{
			sht20_print("%s():Invalid input arguments\r\n",__func__);
			return -1;
		}

		rv = sht20_send_cmd(cmd);
		if(rv)
		{
			sht20_print("ERROR:sht20_read_RH sht20_send_cmd,rv=%d\r\n",rv);
			sht20_soft_reset();
			return -2;
		}

		rv=HAL_I2C_Master_Receive(&hi2c1,SHT20_ADDR_RD,buf,SHT20_DATA_SIZE,0xFF);
		if(rv)
		{
			sht20_print("ERROR:SHT20 read measurement command failure,rv=%d\r\n",rv);
			return -3;
		}

	return 0;
}

static uint8_t sht20_crc8(const uint8_t *data,int len)
{
	const uint8_t   POLYNOMTAL=0x31;
	uint8_t         crc=0xFF;
	int             i,j;

	for(i=0;i<len;++i)
	{
		crc ^=*data++;
		for(j=0;j<8;++j)
		{
			crc=(crc & 0x88)?(crc << 1)^POLYNOMTAL:(crc << 1);
		}
	}
	return crc;
}

int sht20_SampleData(float *temperature,float *humidity)
{
	uint8_t      buf[SHT20_DATA_SIZE];
	int          rv;
	uint16_t     temp;
	uint16_t     cmd;

	if(!temperature||!humidity)
	{
		sht20_print("%s():Invaild input arguments\r\n",__func__);
		return -1;
	}

	rv=sht20_read_TEMP(buf,SHT20_DATA_SIZE);
    if(rv)
    {
    	sht20_print("%s():ERROR:sht20_SampleData sht20_read_TEMP\r\n",rv);
    	return -1;
    }
    rv=sht20_read_RH(buf,SHT20_DATA_SIZE);
    if(rv)
    {
    	sht20_print("%s():ERROR:sht20_SampleData sht20_read_RH\r\n",rv);
    	return -1;
	}

    temp=((buf[0]) << 8) + (buf[1] & 0xfc);
    if(cmd==0xE3)    //SHT20_MEASURE_TEMP_CMD=0xE3  触发温度测量，主机模式
    {
    	*temperature= -46.85+175.72*((float)temp/65535);
    }
    else if(cmd==0xE5)   //SHT20_MEASURE_RH_CMD=0xE5   触发湿度测量，主机模式
    {
    	*humidity= -6+125*((float)temp/65535);
    }
    return 0;
}
*/























