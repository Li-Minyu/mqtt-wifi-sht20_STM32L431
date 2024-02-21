/*
 * hal_oled.c
 *
 *  Created on: Aug 9, 2023
 *      Author: liminyv
 */
#include "hal_oled.h"
#include "gpio_i2c.h"
#include <stdint.h> /*解决error: unknown type name uint8_t*/
#include "font_oled.h"
#include "string.h"
#include "oledbmp.h"


enum
{
	OLED_CMD = 0,
	OLED_DATA,
};


static void i2c_write_command(uint8_t command)
{
	I2c_StartCondition();
	I2c_SendAddress(0x78);
	I2c_WriteByte(0x00);
	I2c_WriteByte(command);
	I2c_StopCondition();
}

static void i2c_write_data(uint8_t data)
{
	I2c_StartCondition();
	I2c_SendAddress(0x78);
	I2c_WriteByte(0x40);
	I2c_WriteByte(data);

	I2c_StopCondition();
}

/* OLED write a byte command data or command */
void OLED_WR_Byte(uint8_t data, uint8_t type)
{
	if( OLED_CMD==type )
		i2c_write_command(data);
	else
		i2c_write_data(data);
}

/*
 *+-------------------------------------------------+
 *|        OLED initial/control function API        |
 *+-------------------------------------------------+
 */

/* Turn OLED display on */
void OLED_Display_On(void)
{
	OLED_WR_Byte(0X8D, OLED_CMD);  //SET DCDC command
	OLED_WR_Byte(0X14, OLED_CMD);  //DCDC ON
	OLED_WR_Byte(0XAF, OLED_CMD);  //DISPLAY ON
}

/* Turn OLED display off */
void OLED_Display_Off(void)
{
	OLED_WR_Byte(0X8D, OLED_CMD);  //SET DCDC command
	OLED_WR_Byte(0X10, OLED_CMD);  //DCDC OFF
	OLED_WR_Byte(0XAE, OLED_CMD);  //DISPLAY OFF
}

/* 全息屏：全赋"0"Clear OLED, it will be black */
void OLED_Clear(void)
{
	uint8_t   i, j;

	/* update display */
	for(i=0;i<8;i++)
	{
		OLED_WR_Byte (0xb0+i, OLED_CMD);    // set page address: 0~7
		OLED_WR_Byte (0x00, OLED_CMD);      // set display address, column address lower bytes;址
		OLED_WR_Byte (0x10, OLED_CMD);      // set display address, column address higher bytes;

		for(j=0; j<128; j++)
			OLED_WR_Byte(0, OLED_DATA); /*j：填满一列又一列*/
	}

	OLED_Set_Pos(0, 0);
}

/*全亮屏：全画实心，全赋"1"*/
void OLED_On(void)
{
	uint8_t   i, j;

	/* update display */
	for(i=0; i<8; i++)
	{
		OLED_WR_Byte (0xb0+i, OLED_CMD);    // set page address: 0~7
		OLED_WR_Byte (0x00, OLED_CMD);      // set display address, row address lower bytes;址
		OLED_WR_Byte (0x10, OLED_CMD);      // set display address, row address higher bytes;

		for(j=0; j<128; j++)
			OLED_WR_Byte(1, OLED_DATA);
	}
}

void OLED_Init(void)
{
/*	if( i2c_init(OLED_I2CBUS, OLED_CHIPADDR) )
	{
		return ;
	}
*/
	I2C_Init(); //GPIO初始化
	//OLED相关配置

	HAL_Delay(200);
	OLED_WR_Byte(0xAE,OLED_CMD); //关闭显示

	OLED_WR_Byte(0x40,OLED_CMD); //---set low column address
	OLED_WR_Byte(0xB0,OLED_CMD); //---set high column address

	OLED_WR_Byte(0xC8,OLED_CMD); //-not offset

	OLED_WR_Byte(0x81,OLED_CMD); //设置对比度
	OLED_WR_Byte(0xff,OLED_CMD);

	OLED_WR_Byte(0xa1,OLED_CMD); //段重定向设置

	OLED_WR_Byte(0xa6,OLED_CMD);

	OLED_WR_Byte(0xa8,OLED_CMD); //设置驱动路数
	OLED_WR_Byte(0x1f,OLED_CMD);

	OLED_WR_Byte(0xd3,OLED_CMD);
	OLED_WR_Byte(0x00,OLED_CMD);

	OLED_WR_Byte(0xd5,OLED_CMD);
	OLED_WR_Byte(0xf0,OLED_CMD);

	OLED_WR_Byte(0xd9,OLED_CMD);
	OLED_WR_Byte(0x22,OLED_CMD);

	OLED_WR_Byte(0xda,OLED_CMD);
	OLED_WR_Byte(0x02,OLED_CMD);

	OLED_WR_Byte(0xdb,OLED_CMD);
	OLED_WR_Byte(0x49,OLED_CMD);

	OLED_WR_Byte(0x8d,OLED_CMD);
	OLED_WR_Byte(0x14,OLED_CMD);

	OLED_WR_Byte(0xaf,OLED_CMD);

	OLED_Clear();
}

/*
 *+-------------------------------------------------+
 *|          OLED display function API              |
 *+-------------------------------------------------+
 */

/* set OLED display position */
void OLED_Set_Pos(uint8_t x, uint8_t y)
{
	OLED_WR_Byte(0xb0+y, OLED_CMD);
	OLED_WR_Byte(((x&0xf0)>>4)|0x10, OLED_CMD);
	OLED_WR_Byte((x&0x0f), OLED_CMD);
}

/* show a character on OLED as $Char_Size */
void OLED_ShowChar(uint8_t x, uint8_t y, uint8_t chr, uint8_t char_Size)
{
	uint8_t c=0,i=0;

	c=chr-' ';  // get offset value

	if( x>X_WIDTH-1 )
	{
		x=0;
		y=y+2;
	}

	if(char_Size ==16)
	{
		OLED_Set_Pos(x,y);

		for(i=0; i<8; i++)
			OLED_WR_Byte(F8X16[c*16+i],OLED_DATA);

		OLED_Set_Pos(x,y+1);

		for(i=0;i<8;i++)
			OLED_WR_Byte(F8X16[c*16+i+8],OLED_DATA);
	}
	else
	{
		OLED_Set_Pos(x,y);
		for(i=0;i<6;i++)
			OLED_WR_Byte(F6x8[c][i],OLED_DATA);
	}
}

/* show a string on OLED  */
void OLED_ShowString(uint8_t x, uint8_t y, char *chr, uint8_t font_size)
{
	uint8_t 	j=0;

	while( chr[j]!='\0' )
	{
		OLED_ShowChar(x, y, chr[j], font_size);

		x+=8;

		if(x>120)
		{
			x=0;
			y+=2;
		}

		j++;
	}
}

/* Show Chinese on OLED */
void OLED_ShowChinese(uint8_t x, uint8_t y, uint8_t no)
{
	uint8_t 		t,adder=0;

	OLED_Set_Pos(x, y);
	for(t=0;t<16;t++)
	{
		OLED_WR_Byte(Hzk[2*no][t],OLED_DATA);
		adder+=1;
	}

	OLED_Set_Pos(x,y+1);
	for(t=0;t<16;t++)
	{
		OLED_WR_Byte(Hzk[2*no+1][t],OLED_DATA);
		adder+=1;
	}
}

/* Show BMP images(128x64) on OLED, x: 0~127  y:0~7 */
void OLED_DrawBMP(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1, uint8_t *BMP)
{
	uint32_t 	    j=0;
	uint8_t 		x,y;

	if( y1%8==0 )
		y = y1/8;
	else
		y = y1/8+1;

	for(y=y0; y<y1; y++)
	{
		OLED_Set_Pos(x0, y);
		for(x=x0;x<x1;x++)
		{
			OLED_WR_Byte(BMP[j++],OLED_DATA);
		}
	}
}













