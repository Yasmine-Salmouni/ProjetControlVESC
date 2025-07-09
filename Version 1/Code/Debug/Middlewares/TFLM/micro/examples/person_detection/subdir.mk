################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/micro/examples/person_detection/detection_responder.cc \
../Middlewares/TFLM/micro/examples/person_detection/detection_responder_test.cc \
../Middlewares/TFLM/micro/examples/person_detection/image_provider.cc \
../Middlewares/TFLM/micro/examples/person_detection/image_provider_test.cc \
../Middlewares/TFLM/micro/examples/person_detection/main.cc \
../Middlewares/TFLM/micro/examples/person_detection/main_functions.cc \
../Middlewares/TFLM/micro/examples/person_detection/model_settings.cc \
../Middlewares/TFLM/micro/examples/person_detection/person_detection_test.cc 

CC_DEPS += \
./Middlewares/TFLM/micro/examples/person_detection/detection_responder.d \
./Middlewares/TFLM/micro/examples/person_detection/detection_responder_test.d \
./Middlewares/TFLM/micro/examples/person_detection/image_provider.d \
./Middlewares/TFLM/micro/examples/person_detection/image_provider_test.d \
./Middlewares/TFLM/micro/examples/person_detection/main.d \
./Middlewares/TFLM/micro/examples/person_detection/main_functions.d \
./Middlewares/TFLM/micro/examples/person_detection/model_settings.d \
./Middlewares/TFLM/micro/examples/person_detection/person_detection_test.d 

OBJS += \
./Middlewares/TFLM/micro/examples/person_detection/detection_responder.o \
./Middlewares/TFLM/micro/examples/person_detection/detection_responder_test.o \
./Middlewares/TFLM/micro/examples/person_detection/image_provider.o \
./Middlewares/TFLM/micro/examples/person_detection/image_provider_test.o \
./Middlewares/TFLM/micro/examples/person_detection/main.o \
./Middlewares/TFLM/micro/examples/person_detection/main_functions.o \
./Middlewares/TFLM/micro/examples/person_detection/model_settings.o \
./Middlewares/TFLM/micro/examples/person_detection/person_detection_test.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/micro/examples/person_detection/%.o Middlewares/TFLM/micro/examples/person_detection/%.su Middlewares/TFLM/micro/examples/person_detection/%.cyclo: ../Middlewares/TFLM/micro/examples/person_detection/%.cc Middlewares/TFLM/micro/examples/person_detection/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-micro-2f-examples-2f-person_detection

clean-Middlewares-2f-TFLM-2f-micro-2f-examples-2f-person_detection:
	-$(RM) ./Middlewares/TFLM/micro/examples/person_detection/detection_responder.cyclo ./Middlewares/TFLM/micro/examples/person_detection/detection_responder.d ./Middlewares/TFLM/micro/examples/person_detection/detection_responder.o ./Middlewares/TFLM/micro/examples/person_detection/detection_responder.su ./Middlewares/TFLM/micro/examples/person_detection/detection_responder_test.cyclo ./Middlewares/TFLM/micro/examples/person_detection/detection_responder_test.d ./Middlewares/TFLM/micro/examples/person_detection/detection_responder_test.o ./Middlewares/TFLM/micro/examples/person_detection/detection_responder_test.su ./Middlewares/TFLM/micro/examples/person_detection/image_provider.cyclo ./Middlewares/TFLM/micro/examples/person_detection/image_provider.d ./Middlewares/TFLM/micro/examples/person_detection/image_provider.o ./Middlewares/TFLM/micro/examples/person_detection/image_provider.su ./Middlewares/TFLM/micro/examples/person_detection/image_provider_test.cyclo ./Middlewares/TFLM/micro/examples/person_detection/image_provider_test.d ./Middlewares/TFLM/micro/examples/person_detection/image_provider_test.o ./Middlewares/TFLM/micro/examples/person_detection/image_provider_test.su ./Middlewares/TFLM/micro/examples/person_detection/main.cyclo ./Middlewares/TFLM/micro/examples/person_detection/main.d ./Middlewares/TFLM/micro/examples/person_detection/main.o ./Middlewares/TFLM/micro/examples/person_detection/main.su ./Middlewares/TFLM/micro/examples/person_detection/main_functions.cyclo ./Middlewares/TFLM/micro/examples/person_detection/main_functions.d ./Middlewares/TFLM/micro/examples/person_detection/main_functions.o ./Middlewares/TFLM/micro/examples/person_detection/main_functions.su ./Middlewares/TFLM/micro/examples/person_detection/model_settings.cyclo ./Middlewares/TFLM/micro/examples/person_detection/model_settings.d ./Middlewares/TFLM/micro/examples/person_detection/model_settings.o ./Middlewares/TFLM/micro/examples/person_detection/model_settings.su ./Middlewares/TFLM/micro/examples/person_detection/person_detection_test.cyclo ./Middlewares/TFLM/micro/examples/person_detection/person_detection_test.d ./Middlewares/TFLM/micro/examples/person_detection/person_detection_test.o ./Middlewares/TFLM/micro/examples/person_detection/person_detection_test.su

.PHONY: clean-Middlewares-2f-TFLM-2f-micro-2f-examples-2f-person_detection

