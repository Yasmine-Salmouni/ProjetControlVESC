################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/debug_log.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/fake_micro_context.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/fake_micro_context_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/flatbuffer_utils.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/flatbuffer_utils_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/hexdump.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/hexdump_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_arena_threshold_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_helpers.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_helpers_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocation_info.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocation_info_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocator.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocator_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_context.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_context.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_context_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_graph.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_log.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_log_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_mutable_op_resolver_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_op_resolver.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_profiler.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_resource_variable.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_resource_variable_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_time.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_time_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_utils.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_utils_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/mock_micro_graph.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/recording_micro_allocator.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/recording_micro_allocator_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/span_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/static_vector_test.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/system_setup.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/test_helper_custom_ops.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/test_helpers.cc \
../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/testing_helpers_test.cc 

CC_DEPS += \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/debug_log.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/fake_micro_context.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/fake_micro_context_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/flatbuffer_utils.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/flatbuffer_utils_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/hexdump.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/hexdump_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_arena_threshold_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_helpers.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_helpers_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocation_info.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocation_info_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocator.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocator_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_context.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_context.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_context_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_graph.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_log.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_log_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_mutable_op_resolver_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_op_resolver.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_profiler.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_resource_variable.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_resource_variable_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_time.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_time_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_utils.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_utils_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/mock_micro_graph.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/recording_micro_allocator.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/recording_micro_allocator_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/span_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/static_vector_test.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/system_setup.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/test_helper_custom_ops.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/test_helpers.d \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/testing_helpers_test.d 

OBJS += \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/debug_log.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/fake_micro_context.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/fake_micro_context_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/flatbuffer_utils.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/flatbuffer_utils_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/hexdump.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/hexdump_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_arena_threshold_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_helpers.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_helpers_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocation_info.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocation_info_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocator.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocator_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_context.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_context.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_context_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_graph.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_log.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_log_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_mutable_op_resolver_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_op_resolver.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_profiler.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_resource_variable.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_resource_variable_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_time.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_time_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_utils.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_utils_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/mock_micro_graph.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/recording_micro_allocator.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/recording_micro_allocator_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/span_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/static_vector_test.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/system_setup.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/test_helper_custom_ops.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/test_helpers.o \
./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/testing_helpers_test.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/%.o Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/%.su Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/%.cyclo: ../Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/%.cc Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-tensorflow-2f-lite-2f-micro

clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-tensorflow-2f-lite-2f-micro:
	-$(RM) ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/debug_log.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/debug_log.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/debug_log.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/debug_log.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/fake_micro_context.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/fake_micro_context.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/fake_micro_context.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/fake_micro_context.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/fake_micro_context_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/fake_micro_context_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/fake_micro_context_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/fake_micro_context_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/flatbuffer_utils.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/flatbuffer_utils.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/flatbuffer_utils.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/flatbuffer_utils.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/flatbuffer_utils_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/flatbuffer_utils_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/flatbuffer_utils_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/flatbuffer_utils_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/hexdump.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/hexdump.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/hexdump.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/hexdump.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/hexdump_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/hexdump_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/hexdump_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/hexdump_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_arena_threshold_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_arena_threshold_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_arena_threshold_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_arena_threshold_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_helpers.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_helpers.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_helpers.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_helpers.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_helpers_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_helpers_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_helpers_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/memory_helpers_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocation_info.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocation_info.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocation_info.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocation_info.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocation_info_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocation_info_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocation_info_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocation_info_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocator.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocator.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocator.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocator.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocator_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocator_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocator_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_allocator_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_context.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_context.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_context.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_context.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_context.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_context.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_context.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_context.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_context_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_context_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_context_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_context_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_graph.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_graph.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_graph.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_graph.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_test.cyclo
	-$(RM) ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_interpreter_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_log.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_log.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_log.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_log.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_log_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_log_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_log_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_log_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_mutable_op_resolver_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_mutable_op_resolver_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_mutable_op_resolver_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_mutable_op_resolver_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_op_resolver.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_op_resolver.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_op_resolver.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_op_resolver.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_profiler.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_profiler.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_profiler.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_profiler.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_resource_variable.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_resource_variable.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_resource_variable.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_resource_variable.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_resource_variable_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_resource_variable_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_resource_variable_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_resource_variable_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_time.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_time.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_time.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_time.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_time_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_time_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_time_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_time_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_utils.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_utils.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_utils.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_utils.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_utils_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_utils_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_utils_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/micro_utils_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/mock_micro_graph.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/mock_micro_graph.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/mock_micro_graph.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/mock_micro_graph.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/recording_micro_allocator.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/recording_micro_allocator.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/recording_micro_allocator.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/recording_micro_allocator.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/recording_micro_allocator_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/recording_micro_allocator_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/recording_micro_allocator_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/recording_micro_allocator_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/span_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/span_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/span_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/span_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/static_vector_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/static_vector_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/static_vector_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/static_vector_test.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/system_setup.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/system_setup.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/system_setup.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/system_setup.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/test_helper_custom_ops.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/test_helper_custom_ops.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/test_helper_custom_ops.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/test_helper_custom_ops.su ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/test_helpers.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/test_helpers.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/test_helpers.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/test_helpers.su
	-$(RM) ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/testing_helpers_test.cyclo ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/testing_helpers_test.d ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/testing_helpers_test.o ./Middlewares/TFLM/tflite-micro/tensorflow/lite/micro/testing_helpers_test.su

.PHONY: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-tensorflow-2f-lite-2f-micro

