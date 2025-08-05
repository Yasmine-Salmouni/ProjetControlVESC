################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/micro/memory_planner/greedy_memory_planner.cc \
../Middlewares/TFLM/micro/memory_planner/greedy_memory_planner_test.cc \
../Middlewares/TFLM/micro/memory_planner/linear_memory_planner.cc \
../Middlewares/TFLM/micro/memory_planner/linear_memory_planner_test.cc \
../Middlewares/TFLM/micro/memory_planner/non_persistent_buffer_planner_shim.cc \
../Middlewares/TFLM/micro/memory_planner/non_persistent_buffer_planner_shim_test.cc 

CC_DEPS += \
./Middlewares/TFLM/micro/memory_planner/greedy_memory_planner.d \
./Middlewares/TFLM/micro/memory_planner/greedy_memory_planner_test.d \
./Middlewares/TFLM/micro/memory_planner/linear_memory_planner.d \
./Middlewares/TFLM/micro/memory_planner/linear_memory_planner_test.d \
./Middlewares/TFLM/micro/memory_planner/non_persistent_buffer_planner_shim.d \
./Middlewares/TFLM/micro/memory_planner/non_persistent_buffer_planner_shim_test.d 

OBJS += \
./Middlewares/TFLM/micro/memory_planner/greedy_memory_planner.o \
./Middlewares/TFLM/micro/memory_planner/greedy_memory_planner_test.o \
./Middlewares/TFLM/micro/memory_planner/linear_memory_planner.o \
./Middlewares/TFLM/micro/memory_planner/linear_memory_planner_test.o \
./Middlewares/TFLM/micro/memory_planner/non_persistent_buffer_planner_shim.o \
./Middlewares/TFLM/micro/memory_planner/non_persistent_buffer_planner_shim_test.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/micro/memory_planner/%.o Middlewares/TFLM/micro/memory_planner/%.su Middlewares/TFLM/micro/memory_planner/%.cyclo: ../Middlewares/TFLM/micro/memory_planner/%.cc Middlewares/TFLM/micro/memory_planner/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-micro-2f-memory_planner

clean-Middlewares-2f-TFLM-2f-micro-2f-memory_planner:
	-$(RM) ./Middlewares/TFLM/micro/memory_planner/greedy_memory_planner.cyclo ./Middlewares/TFLM/micro/memory_planner/greedy_memory_planner.d ./Middlewares/TFLM/micro/memory_planner/greedy_memory_planner.o ./Middlewares/TFLM/micro/memory_planner/greedy_memory_planner.su ./Middlewares/TFLM/micro/memory_planner/greedy_memory_planner_test.cyclo ./Middlewares/TFLM/micro/memory_planner/greedy_memory_planner_test.d ./Middlewares/TFLM/micro/memory_planner/greedy_memory_planner_test.o ./Middlewares/TFLM/micro/memory_planner/greedy_memory_planner_test.su ./Middlewares/TFLM/micro/memory_planner/linear_memory_planner.cyclo ./Middlewares/TFLM/micro/memory_planner/linear_memory_planner.d ./Middlewares/TFLM/micro/memory_planner/linear_memory_planner.o ./Middlewares/TFLM/micro/memory_planner/linear_memory_planner.su ./Middlewares/TFLM/micro/memory_planner/linear_memory_planner_test.cyclo ./Middlewares/TFLM/micro/memory_planner/linear_memory_planner_test.d ./Middlewares/TFLM/micro/memory_planner/linear_memory_planner_test.o ./Middlewares/TFLM/micro/memory_planner/linear_memory_planner_test.su ./Middlewares/TFLM/micro/memory_planner/non_persistent_buffer_planner_shim.cyclo ./Middlewares/TFLM/micro/memory_planner/non_persistent_buffer_planner_shim.d ./Middlewares/TFLM/micro/memory_planner/non_persistent_buffer_planner_shim.o ./Middlewares/TFLM/micro/memory_planner/non_persistent_buffer_planner_shim.su ./Middlewares/TFLM/micro/memory_planner/non_persistent_buffer_planner_shim_test.cyclo ./Middlewares/TFLM/micro/memory_planner/non_persistent_buffer_planner_shim_test.d ./Middlewares/TFLM/micro/memory_planner/non_persistent_buffer_planner_shim_test.o ./Middlewares/TFLM/micro/memory_planner/non_persistent_buffer_planner_shim_test.su

.PHONY: clean-Middlewares-2f-TFLM-2f-micro-2f-memory_planner

