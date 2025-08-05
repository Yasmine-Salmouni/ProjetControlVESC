################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/micro/kernels/ceva/ceva_common.cc \
../Middlewares/TFLM/micro/kernels/ceva/conv.cc \
../Middlewares/TFLM/micro/kernels/ceva/depthwise_conv.cc \
../Middlewares/TFLM/micro/kernels/ceva/fully_connected.cc \
../Middlewares/TFLM/micro/kernels/ceva/logistic.cc \
../Middlewares/TFLM/micro/kernels/ceva/quantize.cc \
../Middlewares/TFLM/micro/kernels/ceva/softmax.cc 

CC_DEPS += \
./Middlewares/TFLM/micro/kernels/ceva/ceva_common.d \
./Middlewares/TFLM/micro/kernels/ceva/conv.d \
./Middlewares/TFLM/micro/kernels/ceva/depthwise_conv.d \
./Middlewares/TFLM/micro/kernels/ceva/fully_connected.d \
./Middlewares/TFLM/micro/kernels/ceva/logistic.d \
./Middlewares/TFLM/micro/kernels/ceva/quantize.d \
./Middlewares/TFLM/micro/kernels/ceva/softmax.d 

OBJS += \
./Middlewares/TFLM/micro/kernels/ceva/ceva_common.o \
./Middlewares/TFLM/micro/kernels/ceva/conv.o \
./Middlewares/TFLM/micro/kernels/ceva/depthwise_conv.o \
./Middlewares/TFLM/micro/kernels/ceva/fully_connected.o \
./Middlewares/TFLM/micro/kernels/ceva/logistic.o \
./Middlewares/TFLM/micro/kernels/ceva/quantize.o \
./Middlewares/TFLM/micro/kernels/ceva/softmax.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/micro/kernels/ceva/%.o Middlewares/TFLM/micro/kernels/ceva/%.su Middlewares/TFLM/micro/kernels/ceva/%.cyclo: ../Middlewares/TFLM/micro/kernels/ceva/%.cc Middlewares/TFLM/micro/kernels/ceva/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-micro-2f-kernels-2f-ceva

clean-Middlewares-2f-TFLM-2f-micro-2f-kernels-2f-ceva:
	-$(RM) ./Middlewares/TFLM/micro/kernels/ceva/ceva_common.cyclo ./Middlewares/TFLM/micro/kernels/ceva/ceva_common.d ./Middlewares/TFLM/micro/kernels/ceva/ceva_common.o ./Middlewares/TFLM/micro/kernels/ceva/ceva_common.su ./Middlewares/TFLM/micro/kernels/ceva/conv.cyclo ./Middlewares/TFLM/micro/kernels/ceva/conv.d ./Middlewares/TFLM/micro/kernels/ceva/conv.o ./Middlewares/TFLM/micro/kernels/ceva/conv.su ./Middlewares/TFLM/micro/kernels/ceva/depthwise_conv.cyclo ./Middlewares/TFLM/micro/kernels/ceva/depthwise_conv.d ./Middlewares/TFLM/micro/kernels/ceva/depthwise_conv.o ./Middlewares/TFLM/micro/kernels/ceva/depthwise_conv.su ./Middlewares/TFLM/micro/kernels/ceva/fully_connected.cyclo ./Middlewares/TFLM/micro/kernels/ceva/fully_connected.d ./Middlewares/TFLM/micro/kernels/ceva/fully_connected.o ./Middlewares/TFLM/micro/kernels/ceva/fully_connected.su ./Middlewares/TFLM/micro/kernels/ceva/logistic.cyclo ./Middlewares/TFLM/micro/kernels/ceva/logistic.d ./Middlewares/TFLM/micro/kernels/ceva/logistic.o ./Middlewares/TFLM/micro/kernels/ceva/logistic.su ./Middlewares/TFLM/micro/kernels/ceva/quantize.cyclo ./Middlewares/TFLM/micro/kernels/ceva/quantize.d ./Middlewares/TFLM/micro/kernels/ceva/quantize.o ./Middlewares/TFLM/micro/kernels/ceva/quantize.su ./Middlewares/TFLM/micro/kernels/ceva/softmax.cyclo ./Middlewares/TFLM/micro/kernels/ceva/softmax.d ./Middlewares/TFLM/micro/kernels/ceva/softmax.o ./Middlewares/TFLM/micro/kernels/ceva/softmax.su

.PHONY: clean-Middlewares-2f-TFLM-2f-micro-2f-kernels-2f-ceva

