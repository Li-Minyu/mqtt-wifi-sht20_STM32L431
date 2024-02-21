#ifndef __OLEDBMP_H_
#define __OLEDBMP_H_

#include <stdint.h>

#if 0
/* lingyun-128x32.bmp */
static uint8_t BMP_1[][16] =
{
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xC0,0xE0,0xF0,0x30,0x30},
	{0x30,0x30,0x30,0x70,0x70,0xFC,0xEC,0xCE,0x0E,0x06,0x00,0x00,0x00,0x00,0x00,0x00},
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,0x03,0xFF,0xFF,0x03,0x03,0x00,0x00},
	{0x00,0xF8,0xF8,0x90,0x3E,0x3E,0x10,0xF8,0xF8,0x00,0x03,0x03,0xFF,0xFF,0x03,0x03},
	{0x00,0x18,0xF8,0xF8,0xF8,0xF8,0x00,0x00,0x00,0x00,0x00,0x0F,0x1F,0x1E,0x1C,0x1C},
	{0xFC,0xFC,0xFC,0xFE,0x0E,0x07,0x07,0x83,0xC0,0xE0,0xF0,0xF8,0xF8,0x78,0x78,0x78},
	{0xF8,0xF8,0xF8,0xF0,0xC0,0x80,0x00,0x00,0x00,0x80,0x80,0xE0,0xE0,0xF0,0xF0,0x70},
	{0x78,0x78,0x78,0x78,0x78,0xF0,0xF0,0xE0,0xE0,0xC0,0x00,0x00,0x00,0xF0,0xF0,0xF0},
	{0xF0,0x00,0x00,0x00,0x00,0x00,0x00,0xF0,0xF0,0xF0,0xF0,0xF0,0x00,0x00,0xF0,0xF0},
	{0xF0,0xF0,0xF0,0x00,0x00,0x00,0x00,0x00,0x00,0xF0,0xF0,0xF0,0xF0,0x00,0x00,0x00},
	{0xC0,0xE0,0xF0,0xF8,0xF8,0xF8,0xF8,0xF8,0xFB,0xFB,0xF3,0xF3,0xE3,0xC3,0x04,0x03},
	{0x03,0x00,0x01,0x03,0x03,0x03,0x03,0x01,0x00,0x03,0x03,0x00,0x03,0x03,0x00,0x00},
	{0x00,0x00,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
	{0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0xFF,0xFF,0xFF,0xFF,0x01,0x00,0x00,0x00,0x00},
	{0x00,0x01,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0xFF,0xFF,0xFF,0xFF,0x47,0x03,0x00,0x00},
	{0x00,0x40,0xE0,0xE0,0xE0,0xE0,0xE1,0xE3,0xE3,0xE3,0xE3,0xE0,0x00,0x1F,0x3F,0x7F},
	{0xFF,0xFC,0xF0,0xE0,0xF0,0xF0,0xF8,0xFF,0xFF,0xFF,0x3F,0x1F,0x00,0x00,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00},
	{0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0xFF,0xFF,0x00,0x00},
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
	{0x00,0x00,0x3F,0x7F,0x7F,0x7F,0xFC,0x70,0x70,0x70,0x70,0x70,0x70,0x70,0x00,0x00},
	{0x7F,0x7F,0x7F,0x7F,0x00,0x00,0x00,0x7F,0x7F,0x7F,0x7F,0x00,0x00,0x00,0x00,0x00},
	{0x00,0x00,0x7F,0x7F,0x7F,0x7F,0x00,0x00,0x03,0x0F,0x1F,0x3F,0x3E,0x7C,0x78,0x70},
	{0x70,0x60,0x61,0x71,0x71,0x7B,0x7F,0x3F,0x3F,0x1F,0x07,0x03,0x00,0x00,0x00,0x00},
	{0x00,0x01,0x7F,0x7F,0x7F,0xFF,0x7F,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x0F,0x1F},
	{0x3F,0x7F,0x7F,0x78,0x70,0x70,0x70,0x70,0x78,0x7F,0x3F,0x1F,0x0F,0x00,0x00,0x00},
	{0x7F,0x7F,0x7F,0x7F,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x7F,0x7F,0x7F,0x00,0x00},
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
};

static uint8_t BMP[][16] =
{

		{0xFF,0x01,0x03,0x07,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01},
		{0x01,0x01,0x01,0x01,0x81,0x81,0x81,0xC1,0xC1,0xC1,0xE1,0xE1,0x61,0x61,0x71,0x71},
		{0xB1,0x31,0x39,0x39,0x19,0x19,0x19,0x19,0x19,0x1D,0x0D,0x0D,0x8D,0x8D,0x8D,0x8D},
		{0x8D,0x8C,0xCE,0xCE,0xC6,0xC6,0xD6,0xD6,0xC6,0xC6,0xC6,0xC6,0xC6,0xC6,0xC6,0xC6},
		{0xC6,0xC6,0xC6,0xC6,0xC6,0xC6,0xC6,0xC6,0xC6,0xC6,0xC6,0xC6,0xCE,0xCE,0x8C,0x8D},
		{0x8D,0x8D,0x8D,0x8D,0x0D,0x0D,0x1D,0x19,0x19,0x19,0x19,0x19,0x39,0x39,0x31,0x31},
		{0x71,0x71,0x61,0x61,0xE1,0xE1,0xC1,0xC1,0xC1,0x81,0x81,0x81,0x01,0x01,0x01,0x01},
		{0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xFF},
		{0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0xE0,0xF0,0xF8,0xFC,0xFC},
		{0x7E,0x1E,0x0F,0x07,0x07,0x03,0x03,0x05,0x05,0x04,0x00,0x00,0xC0,0xE9,0xF1,0xF8},
		{0xF8,0xFC,0x3C,0xDC,0x0E,0x0E,0x0E,0x17,0x17,0x03,0x0B,0x0B,0x83,0xC3,0xE1,0xE1},
		{0xE1,0xF1,0x71,0x71,0x38,0x38,0x38,0x18,0x18,0x18,0x18,0x5C,0x9C,0x8C,0x8C,0x8C},
		{0x8C,0x8C,0x8C,0x9C,0x5C,0x18,0x18,0x18,0x18,0x18,0x38,0x38,0x71,0x71,0xF1,0xE1},
		{0xE1,0xE1,0xC3,0xA3,0x03,0x83,0x03,0x07,0x07,0x0E,0x0E,0x0E,0x1C,0x3C,0xFC,0xFA},
		{0xF8,0xF0,0xE0,0xC0,0x00,0x80,0x80,0x01,0x01,0x03,0x03,0x07,0x07,0x0F,0x1E,0x7E},
		{0xFC,0xFC,0xF8,0xF0,0xE0,0x98,0x60,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF},
		{0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x07,0x0F,0x1F,0x3F,0x3F},
		{0x7E,0x78,0xF7,0xE0,0xE0,0xC0,0xC0,0x80,0x80,0x00,0x00,0x00,0x03,0x07,0x0F,0x1F},
		{0x1F,0x3F,0x3C,0x3A,0x70,0x70,0x70,0xE0,0xE0,0xC0,0xC0,0xC0,0xC1,0xC3,0x87,0x87},
		{0x87,0x8F,0x8E,0x8E,0x1C,0x1C,0x18,0x18,0x18,0x18,0x18,0x38,0x39,0x31,0x31,0x31},
		{0x31,0x31,0x31,0x39,0x38,0x18,0x18,0x18,0x18,0x18,0x1C,0x1C,0x8E,0x8E,0x8F,0x87},
		{0x87,0x87,0xC3,0xC1,0xC2,0xC3,0xC0,0xE0,0xE0,0x70,0x70,0x70,0x38,0x3C,0x3F,0x1F},
		{0x1F,0x0F,0x07,0x0B,0x00,0x03,0x03,0x80,0x80,0xC0,0xC0,0xE0,0xE0,0xF0,0x78,0x7E},
		{0x3F,0x3F,0x1F,0x0F,0x07,0x19,0x02,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF},
		{0xFF,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80},
		{0x80,0x80,0x80,0x80,0x81,0x81,0x81,0x83,0x83,0x83,0x87,0x87,0x86,0x86,0x8E,0x8E},
		{0x8C,0x8C,0x9C,0x9C,0x98,0x98,0x98,0x98,0x98,0xB8,0xB0,0xB0,0xB1,0xB1,0xB1,0xB1},
		{0xB1,0x31,0x73,0x73,0x63,0x63,0x63,0x63,0x63,0x63,0x63,0x63,0x63,0x63,0x63,0x63},
		{0x63,0x63,0x63,0x63,0x63,0x63,0x63,0x63,0x63,0x63,0x63,0x63,0x73,0x73,0x31,0xB1},
		{0xB1,0xB1,0xB1,0xB1,0xB0,0xB0,0xB8,0x98,0x98,0x98,0x98,0x98,0x9C,0x9C,0x8C,0x8C},
		{0x8E,0x8E,0x86,0x86,0x87,0x87,0x83,0x8B,0x83,0x81,0x85,0x81,0x80,0x80,0x80,0x81},
		{0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0xFF},/*"D:\3.bmp",0*/
		/* (128 X 32 )*/
};
#endif




#endif