################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/tflite-micro/python/tflite_micro/_runtime.cc \
../Middlewares/TFLM/tflite-micro/python/tflite_micro/interpreter_wrapper.cc \
../Middlewares/TFLM/tflite-micro/python/tflite_micro/numpy_utils.cc \
../Middlewares/TFLM/tflite-micro/python/tflite_micro/python_ops_resolver.cc \
../Middlewares/TFLM/tflite-micro/python/tflite_micro/python_utils.cc 

CC_DEPS += \
./Middlewares/TFLM/tflite-micro/python/tflite_micro/_runtime.d \
./Middlewares/TFLM/tflite-micro/python/tflite_micro/interpreter_wrapper.d \
./Middlewares/TFLM/tflite-micro/python/tflite_micro/numpy_utils.d \
./Middlewares/TFLM/tflite-micro/python/tflite_micro/python_ops_resolver.d \
./Middlewares/TFLM/tflite-micro/python/tflite_micro/python_utils.d 

OBJS += \
./Middlewares/TFLM/tflite-micro/python/tflite_micro/_runtime.o \
./Middlewares/TFLM/tflite-micro/python/tflite_micro/interpreter_wrapper.o \
./Middlewares/TFLM/tflite-micro/python/tflite_micro/numpy_utils.o \
./Middlewares/TFLM/tflite-micro/python/tflite_micro/python_ops_resolver.o \
./Middlewares/TFLM/tflite-micro/python/tflite_micro/python_utils.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/tflite-micro/python/tflite_micro/%.o Middlewares/TFLM/tflite-micro/python/tflite_micro/%.su Middlewares/TFLM/tflite-micro/python/tflite_micro/%.cyclo: ../Middlewares/TFLM/tflite-micro/python/tflite_micro/%.cc Middlewares/TFLM/tflite-micro/python/tflite_micro/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-python-2f-tflite_micro

clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-python-2f-tflite_micro:
	-$(RM) ./Middlewares/TFLM/tflite-micro/python/tflite_micro/_runtime.cyclo ./Middlewares/TFLM/tflite-micro/python/tflite_micro/_runtime.d ./Middlewares/TFLM/tflite-micro/python/tflite_micro/_runtime.o ./Middlewares/TFLM/tflite-micro/python/tflite_micro/_runtime.su ./Middlewares/TFLM/tflite-micro/python/tflite_micro/interpreter_wrapper.cyclo ./Middlewares/TFLM/tflite-micro/python/tflite_micro/interpreter_wrapper.d ./Middlewares/TFLM/tflite-micro/python/tflite_micro/interpreter_wrapper.o ./Middlewares/TFLM/tflite-micro/python/tflite_micro/interpreter_wrapper.su ./Middlewares/TFLM/tflite-micro/python/tflite_micro/numpy_utils.cyclo ./Middlewares/TFLM/tflite-micro/python/tflite_micro/numpy_utils.d ./Middlewares/TFLM/tflite-micro/python/tflite_micro/numpy_utils.o ./Middlewares/TFLM/tflite-micro/python/tflite_micro/numpy_utils.su ./Middlewares/TFLM/tflite-micro/python/tflite_micro/python_ops_resolver.cyclo ./Middlewares/TFLM/tflite-micro/python/tflite_micro/python_ops_resolver.d ./Middlewares/TFLM/tflite-micro/python/tflite_micro/python_ops_resolver.o ./Middlewares/TFLM/tflite-micro/python/tflite_micro/python_ops_resolver.su ./Middlewares/TFLM/tflite-micro/python/tflite_micro/python_utils.cyclo ./Middlewares/TFLM/tflite-micro/python/tflite_micro/python_utils.d ./Middlewares/TFLM/tflite-micro/python/tflite_micro/python_utils.o ./Middlewares/TFLM/tflite-micro/python/tflite_micro/python_utils.su

.PHONY: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-python-2f-tflite_micro

