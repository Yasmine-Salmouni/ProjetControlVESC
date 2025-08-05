################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/micro/kernels/cmsis_nn/add.cc \
../Middlewares/TFLM/micro/kernels/cmsis_nn/batch_matmul.cc \
../Middlewares/TFLM/micro/kernels/cmsis_nn/conv.cc \
../Middlewares/TFLM/micro/kernels/cmsis_nn/depthwise_conv.cc \
../Middlewares/TFLM/micro/kernels/cmsis_nn/fully_connected.cc \
../Middlewares/TFLM/micro/kernels/cmsis_nn/maximum_minimum.cc \
../Middlewares/TFLM/micro/kernels/cmsis_nn/mul.cc \
../Middlewares/TFLM/micro/kernels/cmsis_nn/pad.cc \
../Middlewares/TFLM/micro/kernels/cmsis_nn/pooling.cc \
../Middlewares/TFLM/micro/kernels/cmsis_nn/softmax.cc \
../Middlewares/TFLM/micro/kernels/cmsis_nn/svdf.cc \
../Middlewares/TFLM/micro/kernels/cmsis_nn/transpose.cc \
../Middlewares/TFLM/micro/kernels/cmsis_nn/transpose_conv.cc \
../Middlewares/TFLM/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.cc 

CC_DEPS += \
./Middlewares/TFLM/micro/kernels/cmsis_nn/add.d \
./Middlewares/TFLM/micro/kernels/cmsis_nn/batch_matmul.d \
./Middlewares/TFLM/micro/kernels/cmsis_nn/conv.d \
./Middlewares/TFLM/micro/kernels/cmsis_nn/depthwise_conv.d \
./Middlewares/TFLM/micro/kernels/cmsis_nn/fully_connected.d \
./Middlewares/TFLM/micro/kernels/cmsis_nn/maximum_minimum.d \
./Middlewares/TFLM/micro/kernels/cmsis_nn/mul.d \
./Middlewares/TFLM/micro/kernels/cmsis_nn/pad.d \
./Middlewares/TFLM/micro/kernels/cmsis_nn/pooling.d \
./Middlewares/TFLM/micro/kernels/cmsis_nn/softmax.d \
./Middlewares/TFLM/micro/kernels/cmsis_nn/svdf.d \
./Middlewares/TFLM/micro/kernels/cmsis_nn/transpose.d \
./Middlewares/TFLM/micro/kernels/cmsis_nn/transpose_conv.d \
./Middlewares/TFLM/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.d 

OBJS += \
./Middlewares/TFLM/micro/kernels/cmsis_nn/add.o \
./Middlewares/TFLM/micro/kernels/cmsis_nn/batch_matmul.o \
./Middlewares/TFLM/micro/kernels/cmsis_nn/conv.o \
./Middlewares/TFLM/micro/kernels/cmsis_nn/depthwise_conv.o \
./Middlewares/TFLM/micro/kernels/cmsis_nn/fully_connected.o \
./Middlewares/TFLM/micro/kernels/cmsis_nn/maximum_minimum.o \
./Middlewares/TFLM/micro/kernels/cmsis_nn/mul.o \
./Middlewares/TFLM/micro/kernels/cmsis_nn/pad.o \
./Middlewares/TFLM/micro/kernels/cmsis_nn/pooling.o \
./Middlewares/TFLM/micro/kernels/cmsis_nn/softmax.o \
./Middlewares/TFLM/micro/kernels/cmsis_nn/svdf.o \
./Middlewares/TFLM/micro/kernels/cmsis_nn/transpose.o \
./Middlewares/TFLM/micro/kernels/cmsis_nn/transpose_conv.o \
./Middlewares/TFLM/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/micro/kernels/cmsis_nn/%.o Middlewares/TFLM/micro/kernels/cmsis_nn/%.su Middlewares/TFLM/micro/kernels/cmsis_nn/%.cyclo: ../Middlewares/TFLM/micro/kernels/cmsis_nn/%.cc Middlewares/TFLM/micro/kernels/cmsis_nn/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-micro-2f-kernels-2f-cmsis_nn

clean-Middlewares-2f-TFLM-2f-micro-2f-kernels-2f-cmsis_nn:
	-$(RM) ./Middlewares/TFLM/micro/kernels/cmsis_nn/add.cyclo ./Middlewares/TFLM/micro/kernels/cmsis_nn/add.d ./Middlewares/TFLM/micro/kernels/cmsis_nn/add.o ./Middlewares/TFLM/micro/kernels/cmsis_nn/add.su ./Middlewares/TFLM/micro/kernels/cmsis_nn/batch_matmul.cyclo ./Middlewares/TFLM/micro/kernels/cmsis_nn/batch_matmul.d ./Middlewares/TFLM/micro/kernels/cmsis_nn/batch_matmul.o ./Middlewares/TFLM/micro/kernels/cmsis_nn/batch_matmul.su ./Middlewares/TFLM/micro/kernels/cmsis_nn/conv.cyclo ./Middlewares/TFLM/micro/kernels/cmsis_nn/conv.d ./Middlewares/TFLM/micro/kernels/cmsis_nn/conv.o ./Middlewares/TFLM/micro/kernels/cmsis_nn/conv.su ./Middlewares/TFLM/micro/kernels/cmsis_nn/depthwise_conv.cyclo ./Middlewares/TFLM/micro/kernels/cmsis_nn/depthwise_conv.d ./Middlewares/TFLM/micro/kernels/cmsis_nn/depthwise_conv.o ./Middlewares/TFLM/micro/kernels/cmsis_nn/depthwise_conv.su ./Middlewares/TFLM/micro/kernels/cmsis_nn/fully_connected.cyclo ./Middlewares/TFLM/micro/kernels/cmsis_nn/fully_connected.d ./Middlewares/TFLM/micro/kernels/cmsis_nn/fully_connected.o ./Middlewares/TFLM/micro/kernels/cmsis_nn/fully_connected.su ./Middlewares/TFLM/micro/kernels/cmsis_nn/maximum_minimum.cyclo ./Middlewares/TFLM/micro/kernels/cmsis_nn/maximum_minimum.d ./Middlewares/TFLM/micro/kernels/cmsis_nn/maximum_minimum.o ./Middlewares/TFLM/micro/kernels/cmsis_nn/maximum_minimum.su ./Middlewares/TFLM/micro/kernels/cmsis_nn/mul.cyclo ./Middlewares/TFLM/micro/kernels/cmsis_nn/mul.d ./Middlewares/TFLM/micro/kernels/cmsis_nn/mul.o ./Middlewares/TFLM/micro/kernels/cmsis_nn/mul.su ./Middlewares/TFLM/micro/kernels/cmsis_nn/pad.cyclo ./Middlewares/TFLM/micro/kernels/cmsis_nn/pad.d ./Middlewares/TFLM/micro/kernels/cmsis_nn/pad.o ./Middlewares/TFLM/micro/kernels/cmsis_nn/pad.su ./Middlewares/TFLM/micro/kernels/cmsis_nn/pooling.cyclo ./Middlewares/TFLM/micro/kernels/cmsis_nn/pooling.d ./Middlewares/TFLM/micro/kernels/cmsis_nn/pooling.o ./Middlewares/TFLM/micro/kernels/cmsis_nn/pooling.su ./Middlewares/TFLM/micro/kernels/cmsis_nn/softmax.cyclo ./Middlewares/TFLM/micro/kernels/cmsis_nn/softmax.d ./Middlewares/TFLM/micro/kernels/cmsis_nn/softmax.o ./Middlewares/TFLM/micro/kernels/cmsis_nn/softmax.su ./Middlewares/TFLM/micro/kernels/cmsis_nn/svdf.cyclo ./Middlewares/TFLM/micro/kernels/cmsis_nn/svdf.d ./Middlewares/TFLM/micro/kernels/cmsis_nn/svdf.o ./Middlewares/TFLM/micro/kernels/cmsis_nn/svdf.su ./Middlewares/TFLM/micro/kernels/cmsis_nn/transpose.cyclo ./Middlewares/TFLM/micro/kernels/cmsis_nn/transpose.d ./Middlewares/TFLM/micro/kernels/cmsis_nn/transpose.o ./Middlewares/TFLM/micro/kernels/cmsis_nn/transpose.su ./Middlewares/TFLM/micro/kernels/cmsis_nn/transpose_conv.cyclo ./Middlewares/TFLM/micro/kernels/cmsis_nn/transpose_conv.d ./Middlewares/TFLM/micro/kernels/cmsis_nn/transpose_conv.o ./Middlewares/TFLM/micro/kernels/cmsis_nn/transpose_conv.su ./Middlewares/TFLM/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.cyclo ./Middlewares/TFLM/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.d ./Middlewares/TFLM/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.o ./Middlewares/TFLM/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.su

.PHONY: clean-Middlewares-2f-TFLM-2f-micro-2f-kernels-2f-cmsis_nn

