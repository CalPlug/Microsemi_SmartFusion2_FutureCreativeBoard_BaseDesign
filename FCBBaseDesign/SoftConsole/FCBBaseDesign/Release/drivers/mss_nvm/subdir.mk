################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mss_nvm/mss_nvm.c 

OBJS += \
./drivers/mss_nvm/mss_nvm.o 

C_DEPS += \
./drivers/mss_nvm/mss_nvm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mss_nvm/%.o: ../drivers/mss_nvm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DNDEBUG -I../drivers/CoreGPIO -I../hal/CortexM3 -I../CMSIS -I../hal -I../hal/CortexM3/GNU -I../drivers_config/sys_config -I.. -std=gnu11 --specs=cmsis.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


