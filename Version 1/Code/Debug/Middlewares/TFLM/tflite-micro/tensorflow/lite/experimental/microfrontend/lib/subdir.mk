################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_util.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_test.cc 

C_SRCS += \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_io.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_io.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_main.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_util.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_lut.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_io.c \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_util.c 

C_DEPS += \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_io.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_io.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_main.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_util.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_lut.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_io.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_util.d 

CC_DEPS += \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_util.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_test.d 

OBJS += \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_io.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_util.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_io.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_main.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_util.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_lut.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_io.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_util.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/%.o Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/%.su Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/%.cyclo: ../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/%.cc Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/%.o Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/%.su Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/%.cyclo: ../Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/%.c Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-tensorflow-2f-lite-2f-experimental-2f-microfrontend-2f-lib

clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-tensorflow-2f-lite-2f-experimental-2f-microfrontend-2f-lib:
	-$(RM) ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_io.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_io.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_io.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_io.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_util.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_util.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_util.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_util.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_io.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_io.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_io.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_io.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_main.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_main.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_main.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_main.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_util.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_util.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_util.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_util.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.d
	-$(RM) ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_lut.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_lut.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_lut.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_lut.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_io.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_io.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_io.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_io.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_test.o
	-$(RM) ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_util.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_util.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_util.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_util.su

.PHONY: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-tensorflow-2f-lite-2f-experimental-2f-microfrontend-2f-lib

