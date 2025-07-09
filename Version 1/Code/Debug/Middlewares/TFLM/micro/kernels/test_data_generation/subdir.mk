################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/micro/kernels/test_data_generation/generate_circular_buffer_flexbuffers_data.cc \
../Middlewares/TFLM/micro/kernels/test_data_generation/generate_detection_postprocess_flexbuffers_data.cc 

CC_DEPS += \
./Middlewares/TFLM/micro/kernels/test_data_generation/generate_circular_buffer_flexbuffers_data.d \
./Middlewares/TFLM/micro/kernels/test_data_generation/generate_detection_postprocess_flexbuffers_data.d 

OBJS += \
./Middlewares/TFLM/micro/kernels/test_data_generation/generate_circular_buffer_flexbuffers_data.o \
./Middlewares/TFLM/micro/kernels/test_data_generation/generate_detection_postprocess_flexbuffers_data.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/micro/kernels/test_data_generation/%.o Middlewares/TFLM/micro/kernels/test_data_generation/%.su Middlewares/TFLM/micro/kernels/test_data_generation/%.cyclo: ../Middlewares/TFLM/micro/kernels/test_data_generation/%.cc Middlewares/TFLM/micro/kernels/test_data_generation/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-micro-2f-kernels-2f-test_data_generation

clean-Middlewares-2f-TFLM-2f-micro-2f-kernels-2f-test_data_generation:
	-$(RM) ./Middlewares/TFLM/micro/kernels/test_data_generation/generate_circular_buffer_flexbuffers_data.cyclo ./Middlewares/TFLM/micro/kernels/test_data_generation/generate_circular_buffer_flexbuffers_data.d ./Middlewares/TFLM/micro/kernels/test_data_generation/generate_circular_buffer_flexbuffers_data.o ./Middlewares/TFLM/micro/kernels/test_data_generation/generate_circular_buffer_flexbuffers_data.su ./Middlewares/TFLM/micro/kernels/test_data_generation/generate_detection_postprocess_flexbuffers_data.cyclo ./Middlewares/TFLM/micro/kernels/test_data_generation/generate_detection_postprocess_flexbuffers_data.d ./Middlewares/TFLM/micro/kernels/test_data_generation/generate_detection_postprocess_flexbuffers_data.o ./Middlewares/TFLM/micro/kernels/test_data_generation/generate_detection_postprocess_flexbuffers_data.su

.PHONY: clean-Middlewares-2f-TFLM-2f-micro-2f-kernels-2f-test_data_generation

