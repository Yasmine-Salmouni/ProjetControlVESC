################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/lite/micro/kernels/xtensa/add.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/add_vision.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/conv.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/conv_common_xtensa.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/conv_hifi.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int16_reference.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int8_int16.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int8_reference.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/conv_vision.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/decompress.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv_hifi.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv_vision.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/dequantize.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_common_xtensa.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_int8.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_vision.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/leaky_relu.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/logistic.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/lstm_eval.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/lstm_eval_hifi.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/pad.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/pad_vision.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/pooling.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/pooling_int8.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/pooling_vision.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/quantize.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/reduce.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/reduce_vision.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/reshape.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/reshape_vision.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/softmax.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/softmax_int8_int16.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/softmax_vision.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/strided_slice.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/sub.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/svdf.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/transpose_conv.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.cc 

CC_DEPS += \
./Middlewares/TFLM/lite/micro/kernels/xtensa/add.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/add_vision.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/conv.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_common_xtensa.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_hifi.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int16_reference.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int8_int16.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int8_reference.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_vision.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/decompress.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv_hifi.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv_vision.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/dequantize.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_common_xtensa.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_int8.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_vision.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/leaky_relu.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/logistic.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/lstm_eval.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/lstm_eval_hifi.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/pad.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/pad_vision.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling_int8.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling_vision.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/quantize.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/reduce.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/reduce_vision.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/reshape.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/reshape_vision.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax_int8_int16.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax_vision.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/strided_slice.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/sub.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/svdf.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/transpose_conv.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.d 

OBJS += \
./Middlewares/TFLM/lite/micro/kernels/xtensa/add.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/add_vision.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/conv.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_common_xtensa.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_hifi.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int16_reference.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int8_int16.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int8_reference.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_vision.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/decompress.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv_hifi.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv_vision.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/dequantize.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_common_xtensa.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_int8.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_vision.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/leaky_relu.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/logistic.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/lstm_eval.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/lstm_eval_hifi.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/pad.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/pad_vision.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling_int8.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling_vision.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/quantize.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/reduce.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/reduce_vision.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/reshape.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/reshape_vision.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax_int8_int16.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax_vision.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/strided_slice.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/sub.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/svdf.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/transpose_conv.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/lite/micro/kernels/xtensa/%.o Middlewares/TFLM/lite/micro/kernels/xtensa/%.su Middlewares/TFLM/lite/micro/kernels/xtensa/%.cyclo: ../Middlewares/TFLM/lite/micro/kernels/xtensa/%.cc Middlewares/TFLM/lite/micro/kernels/xtensa/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-lite-2f-micro-2f-kernels-2f-xtensa

clean-Middlewares-2f-TFLM-2f-lite-2f-micro-2f-kernels-2f-xtensa:
	-$(RM) ./Middlewares/TFLM/lite/micro/kernels/xtensa/add.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/add.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/add.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/add.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/add_vision.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/add_vision.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/add_vision.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/add_vision.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_common_xtensa.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_common_xtensa.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_common_xtensa.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_common_xtensa.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_hifi.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_hifi.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_hifi.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_hifi.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int16_reference.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int16_reference.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int16_reference.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int16_reference.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int8_int16.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int8_int16.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int8_int16.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int8_int16.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int8_reference.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int8_reference.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int8_reference.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_int8_reference.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_vision.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_vision.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_vision.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/conv_vision.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/decompress.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/decompress.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/decompress.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/decompress.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv_hifi.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv_hifi.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv_hifi.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv_hifi.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv_vision.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv_vision.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv_vision.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/depthwise_conv_vision.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/dequantize.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/dequantize.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/dequantize.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/dequantize.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_common_xtensa.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_common_xtensa.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_common_xtensa.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_common_xtensa.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_int8.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_int8.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_int8.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_int8.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_vision.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_vision.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_vision.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/fully_connected_vision.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/leaky_relu.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/leaky_relu.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/leaky_relu.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/leaky_relu.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/logistic.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/logistic.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/logistic.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/logistic.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/lstm_eval.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/lstm_eval.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/lstm_eval.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/lstm_eval.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/lstm_eval_hifi.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/lstm_eval_hifi.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/lstm_eval_hifi.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/lstm_eval_hifi.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/pad.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/pad.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/pad.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/pad.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/pad_vision.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/pad_vision.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/pad_vision.o
	-$(RM) ./Middlewares/TFLM/lite/micro/kernels/xtensa/pad_vision.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling_int8.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling_int8.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling_int8.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling_int8.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling_vision.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling_vision.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling_vision.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/pooling_vision.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/quantize.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/quantize.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/quantize.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/quantize.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/reduce.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/reduce.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/reduce.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/reduce.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/reduce_vision.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/reduce_vision.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/reduce_vision.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/reduce_vision.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/reshape.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/reshape.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/reshape.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/reshape.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/reshape_vision.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/reshape_vision.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/reshape_vision.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/reshape_vision.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax_int8_int16.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax_int8_int16.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax_int8_int16.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax_int8_int16.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax_vision.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax_vision.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax_vision.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/softmax_vision.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/strided_slice.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/strided_slice.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/strided_slice.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/strided_slice.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/sub.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/sub.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/sub.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/sub.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/svdf.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/svdf.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/svdf.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/svdf.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/transpose_conv.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/transpose_conv.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/transpose_conv.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/transpose_conv.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.su

.PHONY: clean-Middlewares-2f-TFLM-2f-lite-2f-micro-2f-kernels-2f-xtensa

