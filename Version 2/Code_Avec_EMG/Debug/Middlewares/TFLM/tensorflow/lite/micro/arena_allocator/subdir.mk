################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.cc \
../Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator_test.cc \
../Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.cc \
../Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator_test.cc \
../Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.cc \
../Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator_test.cc \
../Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.cc \
../Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator_test.cc 

CC_DEPS += \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.d \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator_test.d \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.d \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator_test.d \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.d \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator_test.d \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.d \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator_test.d 

OBJS += \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.o \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator_test.o \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.o \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator_test.o \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.o \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator_test.o \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.o \
./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator_test.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/%.o Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/%.su Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/%.cyclo: ../Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/%.cc Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-tensorflow-2f-lite-2f-micro-2f-arena_allocator

clean-Middlewares-2f-TFLM-2f-tensorflow-2f-lite-2f-micro-2f-arena_allocator:
	-$(RM) ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.cyclo ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.d ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.o ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.su ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator_test.cyclo ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator_test.d ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator_test.o ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator_test.su ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.cyclo ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.d ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.o ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.su ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator_test.cyclo ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator_test.d ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator_test.o ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator_test.su ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.cyclo ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.d ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.o ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.su ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator_test.cyclo ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator_test.d ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator_test.o ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator_test.su ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.cyclo ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.d ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.o ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.su ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator_test.cyclo ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator_test.d ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator_test.o ./Middlewares/TFLM/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator_test.su

.PHONY: clean-Middlewares-2f-TFLM-2f-tensorflow-2f-lite-2f-micro-2f-arena_allocator

