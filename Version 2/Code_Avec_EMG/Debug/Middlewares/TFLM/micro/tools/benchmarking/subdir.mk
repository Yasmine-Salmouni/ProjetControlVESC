################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/micro/tools/benchmarking/generic_model_benchmark.cc \
../Middlewares/TFLM/micro/tools/benchmarking/metrics.cc 

CC_DEPS += \
./Middlewares/TFLM/micro/tools/benchmarking/generic_model_benchmark.d \
./Middlewares/TFLM/micro/tools/benchmarking/metrics.d 

OBJS += \
./Middlewares/TFLM/micro/tools/benchmarking/generic_model_benchmark.o \
./Middlewares/TFLM/micro/tools/benchmarking/metrics.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/micro/tools/benchmarking/%.o Middlewares/TFLM/micro/tools/benchmarking/%.su Middlewares/TFLM/micro/tools/benchmarking/%.cyclo: ../Middlewares/TFLM/micro/tools/benchmarking/%.cc Middlewares/TFLM/micro/tools/benchmarking/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-micro-2f-tools-2f-benchmarking

clean-Middlewares-2f-TFLM-2f-micro-2f-tools-2f-benchmarking:
	-$(RM) ./Middlewares/TFLM/micro/tools/benchmarking/generic_model_benchmark.cyclo ./Middlewares/TFLM/micro/tools/benchmarking/generic_model_benchmark.d ./Middlewares/TFLM/micro/tools/benchmarking/generic_model_benchmark.o ./Middlewares/TFLM/micro/tools/benchmarking/generic_model_benchmark.su ./Middlewares/TFLM/micro/tools/benchmarking/metrics.cyclo ./Middlewares/TFLM/micro/tools/benchmarking/metrics.d ./Middlewares/TFLM/micro/tools/benchmarking/metrics.o ./Middlewares/TFLM/micro/tools/benchmarking/metrics.su

.PHONY: clean-Middlewares-2f-TFLM-2f-micro-2f-tools-2f-benchmarking

