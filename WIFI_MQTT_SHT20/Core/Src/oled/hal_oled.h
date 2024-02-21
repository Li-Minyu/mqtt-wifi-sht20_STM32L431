/**********************************************************************
*   Copyright: (C)2023 LingYun IoT System Studio
*      Author: GuoWenxue<guowenxue@gmail.com> QQ: 281143292
* Description: ISKBoard OLED Hardware Abstract Layer driver
*
*   ChangeLog:
*        Version    Date       Author            Description
*        V1.0.0  2023.04.3    GuoWenxue      Release initial version
***********************************************************************/

#ifndef INC_HAL_OLED_H_
#define INC_HAL_OLED_H_

#include "stm32l4xx_hal.h"
#include "font_oled.h"

#define OLED_I2CBUS                I2CBUS0   /* OLED on GPIO I2C bus0 */
#define OLED_CHIPADDR              0x3C      /* OLED chip address */

#define X_WIDTH 		           128
#define Y_WIDTH 		           64

#define OLED_FONT16                16
#define OLED_FONT8                 8

/*
 *+-------------------------------------------------+
 *|        OLED initial/control function API        |
 *+-------------------------------------------------+
 */
void OLED_Init(void);
void OLED_On(void);
void OLED_Clear(void);
void OLED_Display_On(void);
void OLED_Display_Off(void);

/*
 *+-------------------------------------------------+
 *|          OLED display function API              |
 *+-------------------------------------------------+
 */
void OLED_Set_Pos(uint8_t x, uint8_t y);
void OLED_ShowNum(uint8_t x,uint8_t y,uint32_t num,uint8_t len,uint8_t size);
void OLED_ShowString(uint8_t x,uint8_t y, char *p,uint8_t font_size);
void OLED_ShowChinese(uint8_t x, uint8_t y, uint8_t no);
void OLED_DrawBMP(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1, uint8_t *BMP);

#endif /* INC_HAL_OLED_H_ */
