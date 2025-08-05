################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/tflite-micro/signal/src/circular_buffer.cc \
../Middlewares/TFLM/tflite-micro/signal/src/energy.cc \
../Middlewares/TFLM/tflite-micro/signal/src/fft_auto_scale.cc \
../Middlewares/TFLM/tflite-micro/signal/src/filter_bank.cc \
../Middlewares/TFLM/tflite-micro/signal/src/filter_bank_log.cc \
../Middlewares/TFLM/tflite-micro/signal/src/filter_bank_spectral_subtraction.cc \
../Middlewares/TFLM/tflite-micro/signal/src/filter_bank_square_root.cc \
../Middlewares/TFLM/tflite-micro/signal/src/irfft_float.cc \
../Middlewares/TFLM/tflite-micro/signal/src/irfft_int16.cc \
../Middlewares/TFLM/tflite-micro/signal/src/irfft_int32.cc \
../Middlewares/TFLM/tflite-micro/signal/src/log.cc \
../Middlewares/TFLM/tflite-micro/signal/src/max_abs.cc \
../Middlewares/TFLM/tflite-micro/signal/src/msb_32.cc \
../Middlewares/TFLM/tflite-micro/signal/src/msb_64.cc \
../Middlewares/TFLM/tflite-micro/signal/src/overlap_add.cc \
../Middlewares/TFLM/tflite-micro/signal/src/pcan_argc_fixed.cc \
../Middlewares/TFLM/tflite-micro/signal/src/rfft_float.cc \
../Middlewares/TFLM/tflite-micro/signal/src/rfft_int16.cc \
../Middlewares/TFLM/tflite-micro/signal/src/rfft_int32.cc \
../Middlewares/TFLM/tflite-micro/signal/src/square_root_32.cc \
../Middlewares/TFLM/tflite-micro/signal/src/square_root_64.cc \
../Middlewares/TFLM/tflite-micro/signal/src/window.cc 

CC_DEPS += \
./Middlewares/TFLM/tflite-micro/signal/src/circular_buffer.d \
./Middlewares/TFLM/tflite-micro/signal/src/energy.d \
./Middlewares/TFLM/tflite-micro/signal/src/fft_auto_scale.d \
./Middlewares/TFLM/tflite-micro/signal/src/filter_bank.d \
./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_log.d \
./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_spectral_subtraction.d \
./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_square_root.d \
./Middlewares/TFLM/tflite-micro/signal/src/irfft_float.d \
./Middlewares/TFLM/tflite-micro/signal/src/irfft_int16.d \
./Middlewares/TFLM/tflite-micro/signal/src/irfft_int32.d \
./Middlewares/TFLM/tflite-micro/signal/src/log.d \
./Middlewares/TFLM/tflite-micro/signal/src/max_abs.d \
./Middlewares/TFLM/tflite-micro/signal/src/msb_32.d \
./Middlewares/TFLM/tflite-micro/signal/src/msb_64.d \
./Middlewares/TFLM/tflite-micro/signal/src/overlap_add.d \
./Middlewares/TFLM/tflite-micro/signal/src/pcan_argc_fixed.d \
./Middlewares/TFLM/tflite-micro/signal/src/rfft_float.d \
./Middlewares/TFLM/tflite-micro/signal/src/rfft_int16.d \
./Middlewares/TFLM/tflite-micro/signal/src/rfft_int32.d \
./Middlewares/TFLM/tflite-micro/signal/src/square_root_32.d \
./Middlewares/TFLM/tflite-micro/signal/src/square_root_64.d \
./Middlewares/TFLM/tflite-micro/signal/src/window.d 

OBJS += \
./Middlewares/TFLM/tflite-micro/signal/src/circular_buffer.o \
./Middlewares/TFLM/tflite-micro/signal/src/energy.o \
./Middlewares/TFLM/tflite-micro/signal/src/fft_auto_scale.o \
./Middlewares/TFLM/tflite-micro/signal/src/filter_bank.o \
./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_log.o \
./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_spectral_subtraction.o \
./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_square_root.o \
./Middlewares/TFLM/tflite-micro/signal/src/irfft_float.o \
./Middlewares/TFLM/tflite-micro/signal/src/irfft_int16.o \
./Middlewares/TFLM/tflite-micro/signal/src/irfft_int32.o \
./Middlewares/TFLM/tflite-micro/signal/src/log.o \
./Middlewares/TFLM/tflite-micro/signal/src/max_abs.o \
./Middlewares/TFLM/tflite-micro/signal/src/msb_32.o \
./Middlewares/TFLM/tflite-micro/signal/src/msb_64.o \
./Middlewares/TFLM/tflite-micro/signal/src/overlap_add.o \
./Middlewares/TFLM/tflite-micro/signal/src/pcan_argc_fixed.o \
./Middlewares/TFLM/tflite-micro/signal/src/rfft_float.o \
./Middlewares/TFLM/tflite-micro/signal/src/rfft_int16.o \
./Middlewares/TFLM/tflite-micro/signal/src/rfft_int32.o \
./Middlewares/TFLM/tflite-micro/signal/src/square_root_32.o \
./Middlewares/TFLM/tflite-micro/signal/src/square_root_64.o \
./Middlewares/TFLM/tflite-micro/signal/src/window.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/tflite-micro/signal/src/%.o Middlewares/TFLM/tflite-micro/signal/src/%.su Middlewares/TFLM/tflite-micro/signal/src/%.cyclo: ../Middlewares/TFLM/tflite-micro/signal/src/%.cc Middlewares/TFLM/tflite-micro/signal/src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-src

clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-src:
	-$(RM) ./Middlewares/TFLM/tflite-micro/signal/src/circular_buffer.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/circular_buffer.d ./Middlewares/TFLM/tflite-micro/signal/src/circular_buffer.o ./Middlewares/TFLM/tflite-micro/signal/src/circular_buffer.su ./Middlewares/TFLM/tflite-micro/signal/src/energy.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/energy.d ./Middlewares/TFLM/tflite-micro/signal/src/energy.o ./Middlewares/TFLM/tflite-micro/signal/src/energy.su ./Middlewares/TFLM/tflite-micro/signal/src/fft_auto_scale.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/fft_auto_scale.d ./Middlewares/TFLM/tflite-micro/signal/src/fft_auto_scale.o ./Middlewares/TFLM/tflite-micro/signal/src/fft_auto_scale.su ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank.d ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank.o ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank.su ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_log.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_log.d ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_log.o ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_log.su ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_spectral_subtraction.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_spectral_subtraction.d ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_spectral_subtraction.o ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_spectral_subtraction.su ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_square_root.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_square_root.d ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_square_root.o ./Middlewares/TFLM/tflite-micro/signal/src/filter_bank_square_root.su ./Middlewares/TFLM/tflite-micro/signal/src/irfft_float.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/irfft_float.d ./Middlewares/TFLM/tflite-micro/signal/src/irfft_float.o ./Middlewares/TFLM/tflite-micro/signal/src/irfft_float.su ./Middlewares/TFLM/tflite-micro/signal/src/irfft_int16.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/irfft_int16.d ./Middlewares/TFLM/tflite-micro/signal/src/irfft_int16.o ./Middlewares/TFLM/tflite-micro/signal/src/irfft_int16.su ./Middlewares/TFLM/tflite-micro/signal/src/irfft_int32.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/irfft_int32.d ./Middlewares/TFLM/tflite-micro/signal/src/irfft_int32.o ./Middlewares/TFLM/tflite-micro/signal/src/irfft_int32.su ./Middlewares/TFLM/tflite-micro/signal/src/log.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/log.d ./Middlewares/TFLM/tflite-micro/signal/src/log.o ./Middlewares/TFLM/tflite-micro/signal/src/log.su ./Middlewares/TFLM/tflite-micro/signal/src/max_abs.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/max_abs.d ./Middlewares/TFLM/tflite-micro/signal/src/max_abs.o ./Middlewares/TFLM/tflite-micro/signal/src/max_abs.su ./Middlewares/TFLM/tflite-micro/signal/src/msb_32.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/msb_32.d ./Middlewares/TFLM/tflite-micro/signal/src/msb_32.o ./Middlewares/TFLM/tflite-micro/signal/src/msb_32.su ./Middlewares/TFLM/tflite-micro/signal/src/msb_64.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/msb_64.d ./Middlewares/TFLM/tflite-micro/signal/src/msb_64.o ./Middlewares/TFLM/tflite-micro/signal/src/msb_64.su ./Middlewares/TFLM/tflite-micro/signal/src/overlap_add.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/overlap_add.d ./Middlewares/TFLM/tflite-micro/signal/src/overlap_add.o ./Middlewares/TFLM/tflite-micro/signal/src/overlap_add.su ./Middlewares/TFLM/tflite-micro/signal/src/pcan_argc_fixed.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/pcan_argc_fixed.d ./Middlewares/TFLM/tflite-micro/signal/src/pcan_argc_fixed.o ./Middlewares/TFLM/tflite-micro/signal/src/pcan_argc_fixed.su ./Middlewares/TFLM/tflite-micro/signal/src/rfft_float.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/rfft_float.d ./Middlewares/TFLM/tflite-micro/signal/src/rfft_float.o ./Middlewares/TFLM/tflite-micro/signal/src/rfft_float.su ./Middlewares/TFLM/tflite-micro/signal/src/rfft_int16.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/rfft_int16.d ./Middlewares/TFLM/tflite-micro/signal/src/rfft_int16.o ./Middlewares/TFLM/tflite-micro/signal/src/rfft_int16.su ./Middlewares/TFLM/tflite-micro/signal/src/rfft_int32.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/rfft_int32.d ./Middlewares/TFLM/tflite-micro/signal/src/rfft_int32.o ./Middlewares/TFLM/tflite-micro/signal/src/rfft_int32.su ./Middlewares/TFLM/tflite-micro/signal/src/square_root_32.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/square_root_32.d ./Middlewares/TFLM/tflite-micro/signal/src/square_root_32.o ./Middlewares/TFLM/tflite-micro/signal/src/square_root_32.su ./Middlewares/TFLM/tflite-micro/signal/src/square_root_64.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/square_root_64.d ./Middlewares/TFLM/tflite-micro/signal/src/square_root_64.o ./Middlewares/TFLM/tflite-micro/signal/src/square_root_64.su ./Middlewares/TFLM/tflite-micro/signal/src/window.cyclo ./Middlewares/TFLM/tflite-micro/signal/src/window.d ./Middlewares/TFLM/tflite-micro/signal/src/window.o ./Middlewares/TFLM/tflite-micro/signal/src/window.su

.PHONY: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-src

