################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/FastMathFunctions.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/FastMathFunctionsF16.c 

C_DEPS += \
./Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/FastMathFunctions.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/FastMathFunctionsF16.d 

OBJS += \
./Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/FastMathFunctions.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/FastMathFunctionsF16.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/%.o Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/%.su Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/%.cyclo: ../Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/%.c Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/ST/AI/Inc -I../Middlewares/Third_Party/ARM_CMSIS/PrivateInclude/ -I../Middlewares/Third_Party/ARM_CMSIS/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/Include -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/Core/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/Core_A/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/DSP/PrivateInclude/ -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/DSP/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/DSP/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-ARM_CMSIS-2f-Source-2f-FastMathFunctions

clean-Middlewares-2f-Third_Party-2f-ARM_CMSIS-2f-Source-2f-FastMathFunctions:
	-$(RM) ./Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/FastMathFunctions.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/FastMathFunctions.d ./Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/FastMathFunctions.o ./Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/FastMathFunctions.su ./Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/FastMathFunctionsF16.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/FastMathFunctionsF16.d ./Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/FastMathFunctionsF16.o ./Middlewares/Third_Party/ARM_CMSIS/Source/FastMathFunctions/FastMathFunctionsF16.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-ARM_CMSIS-2f-Source-2f-FastMathFunctions

