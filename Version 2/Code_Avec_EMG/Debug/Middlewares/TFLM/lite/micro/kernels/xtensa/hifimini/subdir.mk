################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/fully_connected.cc \
../Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/svdf.cc 

CC_DEPS += \
./Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/fully_connected.d \
./Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/svdf.d 

OBJS += \
./Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/fully_connected.o \
./Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/svdf.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/%.o Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/%.su Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/%.cyclo: ../Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/%.cc Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-lite-2f-micro-2f-kernels-2f-xtensa-2f-hifimini

clean-Middlewares-2f-TFLM-2f-lite-2f-micro-2f-kernels-2f-xtensa-2f-hifimini:
	-$(RM) ./Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/fully_connected.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/fully_connected.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/fully_connected.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/fully_connected.su ./Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/svdf.cyclo ./Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/svdf.d ./Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/svdf.o ./Middlewares/TFLM/lite/micro/kernels/xtensa/hifimini/svdf.su

.PHONY: clean-Middlewares-2f-TFLM-2f-lite-2f-micro-2f-kernels-2f-xtensa-2f-hifimini

