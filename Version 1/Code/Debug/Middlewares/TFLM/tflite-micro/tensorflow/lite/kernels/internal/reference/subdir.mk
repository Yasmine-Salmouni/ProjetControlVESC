################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/comparisons.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cc 

CC_DEPS += \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/comparisons.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.d 

OBJS += \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/comparisons.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/%.o Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/%.su Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/%.cyclo: ../Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/%.cc Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference

clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference:
	-$(RM) ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/comparisons.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/comparisons.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/comparisons.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/comparisons.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.su

.PHONY: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference

