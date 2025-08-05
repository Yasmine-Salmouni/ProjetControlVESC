################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/freq_to_mel_wrapper.cc \
../Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/wide_dynamic_func_lut_wrapper.cc 

CC_DEPS += \
./Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/freq_to_mel_wrapper.d \
./Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/wide_dynamic_func_lut_wrapper.d 

OBJS += \
./Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/freq_to_mel_wrapper.o \
./Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/wide_dynamic_func_lut_wrapper.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/%.o Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/%.su Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/%.cyclo: ../Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/%.cc Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-python-2f-tflite_micro-2f-signal-2f-utils

clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-python-2f-tflite_micro-2f-signal-2f-utils:
	-$(RM) ./Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/freq_to_mel_wrapper.cyclo ./Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/freq_to_mel_wrapper.d ./Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/freq_to_mel_wrapper.o ./Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/freq_to_mel_wrapper.su ./Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/wide_dynamic_func_lut_wrapper.cyclo ./Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/wide_dynamic_func_lut_wrapper.d ./Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/wide_dynamic_func_lut_wrapper.o ./Middlewares/TFLM/tflite-micro/python/tflite_micro/signal/utils/wide_dynamic_func_lut_wrapper.su

.PHONY: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-python-2f-tflite_micro-2f-signal-2f-utils

