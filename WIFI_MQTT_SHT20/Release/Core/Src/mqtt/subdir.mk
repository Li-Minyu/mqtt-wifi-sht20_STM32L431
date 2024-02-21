################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/mqtt/MQTTConnectClient.c \
../Core/Src/mqtt/MQTTConnectServer.c \
../Core/Src/mqtt/MQTTDeserializePublish.c \
../Core/Src/mqtt/MQTTFormat.c \
../Core/Src/mqtt/MQTTPacket.c \
../Core/Src/mqtt/MQTTSerializePublish.c \
../Core/Src/mqtt/MQTTSubscribeClient.c \
../Core/Src/mqtt/MQTTSubscribeServer.c \
../Core/Src/mqtt/MQTTUnsubscribeClient.c \
../Core/Src/mqtt/MQTTUnsubscribeServer.c \
../Core/Src/mqtt/core_mqtt.c \
../Core/Src/mqtt/transport.c 

OBJS += \
./Core/Src/mqtt/MQTTConnectClient.o \
./Core/Src/mqtt/MQTTConnectServer.o \
./Core/Src/mqtt/MQTTDeserializePublish.o \
./Core/Src/mqtt/MQTTFormat.o \
./Core/Src/mqtt/MQTTPacket.o \
./Core/Src/mqtt/MQTTSerializePublish.o \
./Core/Src/mqtt/MQTTSubscribeClient.o \
./Core/Src/mqtt/MQTTSubscribeServer.o \
./Core/Src/mqtt/MQTTUnsubscribeClient.o \
./Core/Src/mqtt/MQTTUnsubscribeServer.o \
./Core/Src/mqtt/core_mqtt.o \
./Core/Src/mqtt/transport.o 

C_DEPS += \
./Core/Src/mqtt/MQTTConnectClient.d \
./Core/Src/mqtt/MQTTConnectServer.d \
./Core/Src/mqtt/MQTTDeserializePublish.d \
./Core/Src/mqtt/MQTTFormat.d \
./Core/Src/mqtt/MQTTPacket.d \
./Core/Src/mqtt/MQTTSerializePublish.d \
./Core/Src/mqtt/MQTTSubscribeClient.d \
./Core/Src/mqtt/MQTTSubscribeServer.d \
./Core/Src/mqtt/MQTTUnsubscribeClient.d \
./Core/Src/mqtt/MQTTUnsubscribeServer.d \
./Core/Src/mqtt/core_mqtt.d \
./Core/Src/mqtt/transport.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/mqtt/%.o Core/Src/mqtt/%.su Core/Src/mqtt/%.cyclo: ../Core/Src/mqtt/%.c Core/Src/mqtt/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L431xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-mqtt

clean-Core-2f-Src-2f-mqtt:
	-$(RM) ./Core/Src/mqtt/MQTTConnectClient.cyclo ./Core/Src/mqtt/MQTTConnectClient.d ./Core/Src/mqtt/MQTTConnectClient.o ./Core/Src/mqtt/MQTTConnectClient.su ./Core/Src/mqtt/MQTTConnectServer.cyclo ./Core/Src/mqtt/MQTTConnectServer.d ./Core/Src/mqtt/MQTTConnectServer.o ./Core/Src/mqtt/MQTTConnectServer.su ./Core/Src/mqtt/MQTTDeserializePublish.cyclo ./Core/Src/mqtt/MQTTDeserializePublish.d ./Core/Src/mqtt/MQTTDeserializePublish.o ./Core/Src/mqtt/MQTTDeserializePublish.su ./Core/Src/mqtt/MQTTFormat.cyclo ./Core/Src/mqtt/MQTTFormat.d ./Core/Src/mqtt/MQTTFormat.o ./Core/Src/mqtt/MQTTFormat.su ./Core/Src/mqtt/MQTTPacket.cyclo ./Core/Src/mqtt/MQTTPacket.d ./Core/Src/mqtt/MQTTPacket.o ./Core/Src/mqtt/MQTTPacket.su ./Core/Src/mqtt/MQTTSerializePublish.cyclo ./Core/Src/mqtt/MQTTSerializePublish.d ./Core/Src/mqtt/MQTTSerializePublish.o ./Core/Src/mqtt/MQTTSerializePublish.su ./Core/Src/mqtt/MQTTSubscribeClient.cyclo ./Core/Src/mqtt/MQTTSubscribeClient.d ./Core/Src/mqtt/MQTTSubscribeClient.o ./Core/Src/mqtt/MQTTSubscribeClient.su ./Core/Src/mqtt/MQTTSubscribeServer.cyclo ./Core/Src/mqtt/MQTTSubscribeServer.d ./Core/Src/mqtt/MQTTSubscribeServer.o ./Core/Src/mqtt/MQTTSubscribeServer.su ./Core/Src/mqtt/MQTTUnsubscribeClient.cyclo ./Core/Src/mqtt/MQTTUnsubscribeClient.d ./Core/Src/mqtt/MQTTUnsubscribeClient.o ./Core/Src/mqtt/MQTTUnsubscribeClient.su ./Core/Src/mqtt/MQTTUnsubscribeServer.cyclo ./Core/Src/mqtt/MQTTUnsubscribeServer.d ./Core/Src/mqtt/MQTTUnsubscribeServer.o ./Core/Src/mqtt/MQTTUnsubscribeServer.su ./Core/Src/mqtt/core_mqtt.cyclo ./Core/Src/mqtt/core_mqtt.d ./Core/Src/mqtt/core_mqtt.o ./Core/Src/mqtt/core_mqtt.su ./Core/Src/mqtt/transport.cyclo ./Core/Src/mqtt/transport.d ./Core/Src/mqtt/transport.o ./Core/Src/mqtt/transport.su

.PHONY: clean-Core-2f-Src-2f-mqtt

