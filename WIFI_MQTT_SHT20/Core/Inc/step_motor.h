/*
 * step_motor.h
 *
 *  Created on: Nov 5, 2023
 *      Author: liminyv
 */

#ifndef INC_STEP_MOTOR_H_
#define INC_STEP_MOTOR_H_

#include "stdint.h"

extern void step_motor_control_8A(uint8_t direction);
extern void step_motor_start(uint16_t angle,uint8_t direction);
extern void step_motor_stop(void);

#endif /* INC_STEP_MOTOR_H_ */
