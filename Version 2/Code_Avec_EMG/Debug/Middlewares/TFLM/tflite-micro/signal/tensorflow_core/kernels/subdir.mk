################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/delay_kernel.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/energy_kernel.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/fft_kernels.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/filter_bank_kernels.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/framer_kernel.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/overlap_add_kernel.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/pcan_kernel.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/stacker_kernel.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/window_kernel.cc 

CC_DEPS += \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/delay_kernel.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/energy_kernel.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/fft_kernels.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/filter_bank_kernels.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/framer_kernel.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/overlap_add_kernel.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/pcan_kernel.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/stacker_kernel.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/window_kernel.d 

OBJS += \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/delay_kernel.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/energy_kernel.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/fft_kernels.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/filter_bank_kernels.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/framer_kernel.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/overlap_add_kernel.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/pcan_kernel.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/stacker_kernel.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/window_kernel.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/%.o Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/%.su Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/%.cyclo: ../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/%.cc Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-tensorflow_core-2f-kernels

clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-tensorflow_core-2f-kernels:
	-$(RM) ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/delay_kernel.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/delay_kernel.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/delay_kernel.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/delay_kernel.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/energy_kernel.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/energy_kernel.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/energy_kernel.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/energy_kernel.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/fft_kernels.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/fft_kernels.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/fft_kernels.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/fft_kernels.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/filter_bank_kernels.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/filter_bank_kernels.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/filter_bank_kernels.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/filter_bank_kernels.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/framer_kernel.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/framer_kernel.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/framer_kernel.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/framer_kernel.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/overlap_add_kernel.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/overlap_add_kernel.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/overlap_add_kernel.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/overlap_add_kernel.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/pcan_kernel.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/pcan_kernel.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/pcan_kernel.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/pcan_kernel.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/stacker_kernel.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/stacker_kernel.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/stacker_kernel.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/stacker_kernel.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/window_kernel.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/window_kernel.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/window_kernel.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/kernels/window_kernel.su

.PHONY: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-tensorflow_core-2f-kernels

