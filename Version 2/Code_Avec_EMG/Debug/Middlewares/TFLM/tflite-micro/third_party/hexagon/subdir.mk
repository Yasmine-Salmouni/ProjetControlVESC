################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/TFLM/tflite-micro/third_party/hexagon/fully_connected.cc \
../Middlewares/TFLM/tflite-micro/third_party/hexagon/fully_connected_int8.cc \
../Middlewares/TFLM/tflite-micro/third_party/hexagon/svdf.cc \
../Middlewares/TFLM/tflite-micro/third_party/hexagon/svdf_int8.cc 

CC_DEPS += \
./Middlewares/TFLM/tflite-micro/third_party/hexagon/fully_connected.d \
./Middlewares/TFLM/tflite-micro/third_party/hexagon/fully_connected_int8.d \
./Middlewares/TFLM/tflite-micro/third_party/hexagon/svdf.d \
./Middlewares/TFLM/tflite-micro/third_party/hexagon/svdf_int8.d 

OBJS += \
./Middlewares/TFLM/tflite-micro/third_party/hexagon/fully_connected.o \
./Middlewares/TFLM/tflite-micro/third_party/hexagon/fully_connected_int8.o \
./Middlewares/TFLM/tflite-micro/third_party/hexagon/svdf.o \
./Middlewares/TFLM/tflite-micro/third_party/hexagon/svdf_int8.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/TFLM/tflite-micro/third_party/hexagon/%.o Middlewares/TFLM/tflite-micro/third_party/hexagon/%.su Middlewares/TFLM/tflite-micro/third_party/hexagon/%.cyclo: ../Middlewares/TFLM/tflite-micro/third_party/hexagon/%.cc Middlewares/TFLM/tflite-micro/third_party/hexagon/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -std=c++14 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-third_party-2f-hexagon

clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-third_party-2f-hexagon:
	-$(RM) ./Middlewares/TFLM/tflite-micro/third_party/hexagon/fully_connected.cyclo ./Middlewares/TFLM/tflite-micro/third_party/hexagon/fully_connected.d ./Middlewares/TFLM/tflite-micro/third_party/hexagon/fully_connected.o ./Middlewares/TFLM/tflite-micro/third_party/hexagon/fully_connected.su ./Middlewares/TFLM/tflite-micro/third_party/hexagon/fully_connected_int8.cyclo ./Middlewares/TFLM/tflite-micro/third_party/hexagon/fully_connected_int8.d ./Middlewares/TFLM/tflite-micro/third_party/hexagon/fully_connected_int8.o ./Middlewares/TFLM/tflite-micro/third_party/hexagon/fully_connected_int8.su ./Middlewares/TFLM/tflite-micro/third_party/hexagon/svdf.cyclo ./Middlewares/TFLM/tflite-micro/third_party/hexagon/svdf.d ./Middlewares/TFLM/tflite-micro/third_party/hexagon/svdf.o ./Middlewares/TFLM/tflite-micro/third_party/hexagon/svdf.su ./Middlewares/TFLM/tflite-micro/third_party/hexagon/svdf_int8.cyclo ./Middlewares/TFLM/tflite-micro/third_party/hexagon/svdf_int8.d ./Middlewares/TFLM/tflite-micro/third_party/hexagon/svdf_int8.o ./Middlewares/TFLM/tflite-micro/third_party/hexagon/svdf_int8.su

.PHONY: clean-Middlewares-2f-TFLM-2f-tflite-2d-micro-2f-third_party-2f-hexagon

