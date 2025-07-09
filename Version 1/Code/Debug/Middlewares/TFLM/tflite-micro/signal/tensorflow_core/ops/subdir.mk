################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/delay_op.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/energy_op.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/fft_ops.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/filter_bank_ops.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/framer_op.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/overlap_add_op.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/pcan_op.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/stacker_op.cc \
../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/window_op.cc 

CC_DEPS += \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/delay_op.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/energy_op.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/fft_ops.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/filter_bank_ops.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/framer_op.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/overlap_add_op.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/pcan_op.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/stacker_op.d \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/window_op.d 

OBJS += \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/delay_op.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/energy_op.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/fft_ops.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/filter_bank_ops.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/framer_op.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/overlap_add_op.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/pcan_op.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/stacker_op.o \
./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/window_op.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/%.o Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/%.su Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/%.cyclo: ../Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/%.cc Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-tensorflow_core-2f-ops

clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-tensorflow_core-2f-ops:
	-$(RM) ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/delay_op.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/delay_op.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/delay_op.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/delay_op.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/energy_op.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/energy_op.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/energy_op.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/energy_op.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/fft_ops.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/fft_ops.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/fft_ops.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/fft_ops.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/filter_bank_ops.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/filter_bank_ops.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/filter_bank_ops.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/filter_bank_ops.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/framer_op.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/framer_op.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/framer_op.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/framer_op.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/overlap_add_op.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/overlap_add_op.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/overlap_add_op.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/overlap_add_op.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/pcan_op.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/pcan_op.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/pcan_op.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/pcan_op.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/stacker_op.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/stacker_op.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/stacker_op.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/stacker_op.su ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/window_op.cyclo ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/window_op.d ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/window_op.o ./Middlewares/TFLM/tflite-micro/signal/tensorflow_core/ops/window_op.su

.PHONY: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-tensorflow_core-2f-ops

