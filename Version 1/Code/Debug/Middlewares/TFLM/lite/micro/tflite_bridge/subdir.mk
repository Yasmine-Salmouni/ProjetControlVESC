################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/lite/micro/tflite_bridge/flatbuffer_conversions.cc \
../Middlewares/TFLM/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.cc \
../Middlewares/TFLM/lite/micro/tflite_bridge/micro_error_reporter.cc \
../Middlewares/TFLM/lite/micro/tflite_bridge/micro_log.cc 

CC_DEPS += \
./Middlewares/TFLM/lite/micro/tflite_bridge/flatbuffer_conversions.d \
./Middlewares/TFLM/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.d \
./Middlewares/TFLM/lite/micro/tflite_bridge/micro_error_reporter.d \
./Middlewares/TFLM/lite/micro/tflite_bridge/micro_log.d 

OBJS += \
./Middlewares/TFLM/lite/micro/tflite_bridge/flatbuffer_conversions.o \
./Middlewares/TFLM/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.o \
./Middlewares/TFLM/lite/micro/tflite_bridge/micro_error_reporter.o \
./Middlewares/TFLM/lite/micro/tflite_bridge/micro_log.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/lite/micro/tflite_bridge/%.o Middlewares/TFLM/lite/micro/tflite_bridge/%.su Middlewares/TFLM/lite/micro/tflite_bridge/%.cyclo: ../Middlewares/TFLM/lite/micro/tflite_bridge/%.cc Middlewares/TFLM/lite/micro/tflite_bridge/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-lite-2f-micro-2f-tflite_bridge

clean-Middlewares-2f-TFLM-2f-lite-2f-micro-2f-tflite_bridge:
	-$(RM) ./Middlewares/TFLM/lite/micro/tflite_bridge/flatbuffer_conversions.cyclo ./Middlewares/TFLM/lite/micro/tflite_bridge/flatbuffer_conversions.d ./Middlewares/TFLM/lite/micro/tflite_bridge/flatbuffer_conversions.o ./Middlewares/TFLM/lite/micro/tflite_bridge/flatbuffer_conversions.su ./Middlewares/TFLM/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.cyclo ./Middlewares/TFLM/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.d ./Middlewares/TFLM/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.o ./Middlewares/TFLM/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.su ./Middlewares/TFLM/lite/micro/tflite_bridge/micro_error_reporter.cyclo ./Middlewares/TFLM/lite/micro/tflite_bridge/micro_error_reporter.d ./Middlewares/TFLM/lite/micro/tflite_bridge/micro_error_reporter.o ./Middlewares/TFLM/lite/micro/tflite_bridge/micro_error_reporter.su ./Middlewares/TFLM/lite/micro/tflite_bridge/micro_log.cyclo ./Middlewares/TFLM/lite/micro/tflite_bridge/micro_log.d ./Middlewares/TFLM/lite/micro/tflite_bridge/micro_log.o ./Middlewares/TFLM/lite/micro/tflite_bridge/micro_log.su

.PHONY: clean-Middlewares-2f-TFLM-2f-lite-2f-micro-2f-tflite_bridge

