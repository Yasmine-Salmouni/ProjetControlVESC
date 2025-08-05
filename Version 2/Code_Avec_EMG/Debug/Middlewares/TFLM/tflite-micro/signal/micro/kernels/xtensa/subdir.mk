################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/xtensa_square_root.S 

CC_SRCS += \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/fft_auto_scale_kernel.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/filter_bank_square_root.cc 

CC_DEPS += \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/fft_auto_scale_kernel.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/filter_bank_square_root.d 

OBJS += \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/fft_auto_scale_kernel.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/filter_bank_square_root.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/xtensa_square_root.o 

S_UPPER_DEPS += \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/xtensa_square_root.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/%.o Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/%.su Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/%.cyclo: ../Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/%.cc Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/%.o: ../Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/%.S Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I../Core/Inc -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-micro-2f-kernels-2f-xtensa

clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-micro-2f-kernels-2f-xtensa:
	-$(RM) ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/fft_auto_scale_kernel.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/fft_auto_scale_kernel.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/fft_auto_scale_kernel.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/fft_auto_scale_kernel.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/filter_bank_square_root.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/filter_bank_square_root.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/filter_bank_square_root.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/filter_bank_square_root.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/xtensa_square_root.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/xtensa/xtensa_square_root.o

.PHONY: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-micro-2f-kernels-2f-xtensa

