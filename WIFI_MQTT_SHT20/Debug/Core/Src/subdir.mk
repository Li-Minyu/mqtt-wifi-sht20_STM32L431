################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/adc.c \
../Core/Src/bc28.c \
../Core/Src/can.c \
../Core/Src/core_json.c \
../Core/Src/ds18b20.c \
../Core/Src/esp8266.c \
../Core/Src/freertos.c \
../Core/Src/gpio.c \
../Core/Src/gpio_i2c.c \
../Core/Src/main.c \
../Core/Src/main_other.c \
../Core/Src/sht20.c \
../Core/Src/spi.c \
../Core/Src/step_motor.c \
../Core/Src/stm32l4xx_hal_msp.c \
../Core/Src/stm32l4xx_hal_timebase_tim.c \
../Core/Src/stm32l4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32l4xx.c \
../Core/Src/tim.c \
../Core/Src/usart.c \
../Core/Src/usart_port.c \
../Core/Src/w25q32.c 

OBJS += \
./Core/Src/adc.o \
./Core/Src/bc28.o \
./Core/Src/can.o \
./Core/Src/core_json.o \
./Core/Src/ds18b20.o \
./Core/Src/esp8266.o \
./Core/Src/freertos.o \
./Core/Src/gpio.o \
./Core/Src/gpio_i2c.o \
./Core/Src/main.o \
./Core/Src/main_other.o \
./Core/Src/sht20.o \
./Core/Src/spi.o \
./Core/Src/step_motor.o \
./Core/Src/stm32l4xx_hal_msp.o \
./Core/Src/stm32l4xx_hal_timebase_tim.o \
./Core/Src/stm32l4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32l4xx.o \
./Core/Src/tim.o \
./Core/Src/usart.o \
./Core/Src/usart_port.o \
./Core/Src/w25q32.o 

C_DEPS += \
./Core/Src/adc.d \
./Core/Src/bc28.d \
./Core/Src/can.d \
./Core/Src/core_json.d \
./Core/Src/ds18b20.d \
./Core/Src/esp8266.d \
./Core/Src/freertos.d \
./Core/Src/gpio.d \
./Core/Src/gpio_i2c.d \
./Core/Src/main.d \
./Core/Src/main_other.d \
./Core/Src/sht20.d \
./Core/Src/spi.d \
./Core/Src/step_motor.d \
./Core/Src/stm32l4xx_hal_msp.d \
./Core/Src/stm32l4xx_hal_timebase_tim.d \
./Core/Src/stm32l4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32l4xx.d \
./Core/Src/tim.d \
./Core/Src/usart.d \
./Core/Src/usart_port.d \
./Core/Src/w25q32.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L431xx -c -I"E:/project/other project/WIFI_MQTT_SHT20/Core/Src/oled" -I../Core/Inc -I"E:/project/other project/WIFI_MQTT_SHT20/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"E:/project/other project/WIFI_MQTT_SHT20/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"E:/project/other project/WIFI_MQTT_SHT20/Middlewares/Third_Party/FreeRTOS/Source/include" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"E:/project/other project/WIFI_MQTT_SHT20/Core/Src/mqtt" -O0 -ffunction-sections -fdata-sections -Wall -save-temps -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/adc.cyclo ./Core/Src/adc.d ./Core/Src/adc.o ./Core/Src/adc.su ./Core/Src/bc28.cyclo ./Core/Src/bc28.d ./Core/Src/bc28.o ./Core/Src/bc28.su ./Core/Src/can.cyclo ./Core/Src/can.d ./Core/Src/can.o ./Core/Src/can.su ./Core/Src/core_json.cyclo ./Core/Src/core_json.d ./Core/Src/core_json.o ./Core/Src/core_json.su ./Core/Src/ds18b20.cyclo ./Core/Src/ds18b20.d ./Core/Src/ds18b20.o ./Core/Src/ds18b20.su ./Core/Src/esp8266.cyclo ./Core/Src/esp8266.d ./Core/Src/esp8266.o ./Core/Src/esp8266.su ./Core/Src/freertos.cyclo ./Core/Src/freertos.d ./Core/Src/freertos.o ./Core/Src/freertos.su ./Core/Src/gpio.cyclo ./Core/Src/gpio.d ./Core/Src/gpio.o ./Core/Src/gpio.su ./Core/Src/gpio_i2c.cyclo ./Core/Src/gpio_i2c.d ./Core/Src/gpio_i2c.o ./Core/Src/gpio_i2c.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/main_other.cyclo ./Core/Src/main_other.d ./Core/Src/main_other.o ./Core/Src/main_other.su ./Core/Src/sht20.cyclo ./Core/Src/sht20.d ./Core/Src/sht20.o ./Core/Src/sht20.su ./Core/Src/spi.cyclo ./Core/Src/spi.d ./Core/Src/spi.o ./Core/Src/spi.su ./Core/Src/step_motor.cyclo ./Core/Src/step_motor.d ./Core/Src/step_motor.o ./Core/Src/step_motor.su ./Core/Src/stm32l4xx_hal_msp.cyclo ./Core/Src/stm32l4xx_hal_msp.d ./Core/Src/stm32l4xx_hal_msp.o ./Core/Src/stm32l4xx_hal_msp.su ./Core/Src/stm32l4xx_hal_timebase_tim.cyclo ./Core/Src/stm32l4xx_hal_timebase_tim.d ./Core/Src/stm32l4xx_hal_timebase_tim.o ./Core/Src/stm32l4xx_hal_timebase_tim.su ./Core/Src/stm32l4xx_it.cyclo ./Core/Src/stm32l4xx_it.d ./Core/Src/stm32l4xx_it.o ./Core/Src/stm32l4xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32l4xx.cyclo ./Core/Src/system_stm32l4xx.d ./Core/Src/system_stm32l4xx.o ./Core/Src/system_stm32l4xx.su ./Core/Src/tim.cyclo ./Core/Src/tim.d ./Core/Src/tim.o ./Core/Src/tim.su ./Core/Src/usart.cyclo ./Core/Src/usart.d ./Core/Src/usart.o ./Core/Src/usart.su ./Core/Src/usart_port.cyclo ./Core/Src/usart_port.d ./Core/Src/usart_port.o ./Core/Src/usart_port.su ./Core/Src/w25q32.cyclo ./Core/Src/w25q32.d ./Core/Src/w25q32.o ./Core/Src/w25q32.su

.PHONY: clean-Core-2f-Src

