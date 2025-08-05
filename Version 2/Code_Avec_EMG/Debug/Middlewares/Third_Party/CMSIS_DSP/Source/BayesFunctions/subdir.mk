################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/BayesFunctions.c \
../Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/BayesFunctionsF16.c \
../Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c \
../Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c 

C_DEPS += \
./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/BayesFunctions.d \
./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/BayesFunctionsF16.d \
./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.d \
./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.d 

OBJS += \
./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/BayesFunctions.o \
./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/BayesFunctionsF16.o \
./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.o \
./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/%.o Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/%.su Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/%.cyclo: ../Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/%.c Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/ST/AI/Inc -I"C:/Users/Administrateur/STM32CubeIDE/workspace_1.18.0/ProjetControlOdriveBis/Middlewares/Third_Party/CMSIS_DSP/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-CMSIS_DSP-2f-Source-2f-BayesFunctions

clean-Middlewares-2f-Third_Party-2f-CMSIS_DSP-2f-Source-2f-BayesFunctions:
	-$(RM) ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/BayesFunctions.cyclo ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/BayesFunctions.d ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/BayesFunctions.o ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/BayesFunctions.su ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/BayesFunctionsF16.cyclo ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/BayesFunctionsF16.d ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/BayesFunctionsF16.o ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/BayesFunctionsF16.su ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.cyclo ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.d ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.o ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.su ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.cyclo ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.d ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.o ./Middlewares/Third_Party/CMSIS_DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-CMSIS_DSP-2f-Source-2f-BayesFunctions

