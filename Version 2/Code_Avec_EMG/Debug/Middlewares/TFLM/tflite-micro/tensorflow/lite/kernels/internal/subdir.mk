################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/common.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/portable_tensor_utils.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/quantization_util.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/runtime_shape.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/tensor_ctypes.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/tensor_utils.cc 

CC_DEPS += \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/common.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/portable_tensor_utils.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/quantization_util.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/runtime_shape.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/tensor_ctypes.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/tensor_utils.d 

OBJS += \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/common.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/portable_tensor_utils.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/quantization_util.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/runtime_shape.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/tensor_ctypes.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/tensor_utils.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/%.o Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/%.su Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/%.cyclo: ../Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/%.cc Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-tensorflow-2f-lite-2f-kernels-2f-internal

clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-tensorflow-2f-lite-2f-kernels-2f-internal:
	-$(RM) ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/common.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/common.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/common.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/common.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/portable_tensor_utils.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/portable_tensor_utils.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/portable_tensor_utils.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/portable_tensor_utils.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/quantization_util.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/quantization_util.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/quantization_util.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/quantization_util.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/runtime_shape.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/runtime_shape.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/runtime_shape.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/runtime_shape.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/tensor_ctypes.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/tensor_ctypes.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/tensor_ctypes.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/tensor_ctypes.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/tensor_utils.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/tensor_utils.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/tensor_utils.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/tensor_utils.su

.PHONY: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-tensorflow-2f-lite-2f-kernels-2f-internal

