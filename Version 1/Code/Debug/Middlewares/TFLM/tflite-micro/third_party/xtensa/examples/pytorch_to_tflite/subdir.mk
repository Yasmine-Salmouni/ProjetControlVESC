################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_images_dog_jpg.cc \
../Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_op_resolver.cc \
../Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_to_tflite_test.cc 

CC_DEPS += \
./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_images_dog_jpg.d \
./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_op_resolver.d \
./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_to_tflite_test.d 

OBJS += \
./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_images_dog_jpg.o \
./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_op_resolver.o \
./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_to_tflite_test.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/%.o Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/%.su Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/%.cyclo: ../Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/%.cc Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-third_party-2f-xtensa-2f-examples-2f-pytorch_to_tflite

clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-third_party-2f-xtensa-2f-examples-2f-pytorch_to_tflite:
	-$(RM) ./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_images_dog_jpg.cyclo ./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_images_dog_jpg.d ./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_images_dog_jpg.o ./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_images_dog_jpg.su ./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_op_resolver.cyclo ./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_op_resolver.d ./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_op_resolver.o ./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_op_resolver.su ./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_to_tflite_test.cyclo ./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_to_tflite_test.d ./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_to_tflite_test.o ./Middlewares/TFLM/tflite-micro/third_party/xtensa/examples/pytorch_to_tflite/pytorch_to_tflite_test.su

.PHONY: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-third_party-2f-xtensa-2f-examples-2f-pytorch_to_tflite

