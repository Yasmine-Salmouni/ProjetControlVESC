################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay_flexbuffers_generated_data.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay_test.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy_flexbuffers_generated_data.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy_test.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_auto_scale_common.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_auto_scale_kernel.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_flexbuffers_generated_data.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_test.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_flexbuffers_generated_data.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log_flexbuffers_generated_data.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log_test.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction_flexbuffers_generated_data.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction_test.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root_common.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root_test.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_test.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer_flexbuffers_generated_data.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer_test.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/irfft.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add_flexbuffers_generated_data.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add_test.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan_flexbuffers_generated_data.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan_test.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/rfft.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker_flexbuffers_generated_data.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker_test.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/window.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/window_flexbuffers_generated_data.cc \
../Middlewares/TFLM/tflite-micro/signal/micro/kernels/window_test.cc 

CC_DEPS += \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay_flexbuffers_generated_data.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay_test.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy_flexbuffers_generated_data.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy_test.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_auto_scale_common.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_auto_scale_kernel.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_flexbuffers_generated_data.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_test.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_flexbuffers_generated_data.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log_flexbuffers_generated_data.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log_test.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction_flexbuffers_generated_data.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction_test.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root_common.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root_test.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_test.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer_flexbuffers_generated_data.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer_test.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/irfft.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add_flexbuffers_generated_data.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add_test.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan_flexbuffers_generated_data.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan_test.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/rfft.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker_flexbuffers_generated_data.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker_test.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window_flexbuffers_generated_data.d \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window_test.d 

OBJS += \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay_flexbuffers_generated_data.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay_test.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy_flexbuffers_generated_data.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy_test.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_auto_scale_common.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_auto_scale_kernel.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_flexbuffers_generated_data.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_test.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_flexbuffers_generated_data.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log_flexbuffers_generated_data.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log_test.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction_flexbuffers_generated_data.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction_test.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root_common.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root_test.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_test.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer_flexbuffers_generated_data.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer_test.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/irfft.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add_flexbuffers_generated_data.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add_test.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan_flexbuffers_generated_data.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan_test.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/rfft.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker_flexbuffers_generated_data.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker_test.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window_flexbuffers_generated_data.o \
./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window_test.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/tflite-micro/signal/micro/kernels/%.o Middlewares/TFLM/tflite-micro/signal/micro/kernels/%.su Middlewares/TFLM/tflite-micro/signal/micro/kernels/%.cyclo: ../Middlewares/TFLM/tflite-micro/signal/micro/kernels/%.cc Middlewares/TFLM/tflite-micro/signal/micro/kernels/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-micro-2f-kernels

clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-micro-2f-kernels:
	-$(RM) ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay_flexbuffers_generated_data.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay_flexbuffers_generated_data.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay_flexbuffers_generated_data.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay_flexbuffers_generated_data.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay_test.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay_test.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay_test.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/delay_test.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy_flexbuffers_generated_data.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy_flexbuffers_generated_data.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy_flexbuffers_generated_data.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy_flexbuffers_generated_data.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy_test.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy_test.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy_test.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/energy_test.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_auto_scale_common.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_auto_scale_common.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_auto_scale_common.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_auto_scale_common.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_auto_scale_kernel.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_auto_scale_kernel.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_auto_scale_kernel.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_auto_scale_kernel.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_flexbuffers_generated_data.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_flexbuffers_generated_data.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_flexbuffers_generated_data.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_flexbuffers_generated_data.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_test.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_test.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_test.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/fft_test.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_flexbuffers_generated_data.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_flexbuffers_generated_data.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_flexbuffers_generated_data.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_flexbuffers_generated_data.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log_flexbuffers_generated_data.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log_flexbuffers_generated_data.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log_flexbuffers_generated_data.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log_flexbuffers_generated_data.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log_test.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log_test.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log_test.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_log_test.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction_flexbuffers_generated_data.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction_flexbuffers_generated_data.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction_flexbuffers_generated_data.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction_flexbuffers_generated_data.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction_test.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction_test.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction_test.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_spectral_subtraction_test.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root.cyclo
	-$(RM) ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root_common.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root_common.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root_common.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root_common.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root_test.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root_test.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root_test.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_square_root_test.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_test.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_test.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_test.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/filter_bank_test.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer_flexbuffers_generated_data.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer_flexbuffers_generated_data.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer_flexbuffers_generated_data.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer_flexbuffers_generated_data.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer_test.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer_test.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer_test.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/framer_test.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/irfft.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/irfft.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/irfft.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/irfft.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add_flexbuffers_generated_data.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add_flexbuffers_generated_data.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add_flexbuffers_generated_data.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add_flexbuffers_generated_data.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add_test.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add_test.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add_test.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/overlap_add_test.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan_flexbuffers_generated_data.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan_flexbuffers_generated_data.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan_flexbuffers_generated_data.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan_flexbuffers_generated_data.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan_test.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan_test.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan_test.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/pcan_test.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/rfft.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/rfft.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/rfft.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/rfft.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker_flexbuffers_generated_data.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker_flexbuffers_generated_data.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker_flexbuffers_generated_data.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker_flexbuffers_generated_data.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker_test.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker_test.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker_test.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/stacker_test.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window.su ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window_flexbuffers_generated_data.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window_flexbuffers_generated_data.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window_flexbuffers_generated_data.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window_flexbuffers_generated_data.su
	-$(RM) ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window_test.cyclo ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window_test.d ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window_test.o ./Middlewares/TFLM/tflite-micro/signal/micro/kernels/window_test.su

.PHONY: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-signal-2f-micro-2f-kernels

