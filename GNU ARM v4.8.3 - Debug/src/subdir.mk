################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/empty_project.c 

OBJS += \
./src/empty_project.o 

C_DEPS += \
./src/empty_project.d 


# Each subdirectory must supply rules for building sources it contributes
src/empty_project.o: ../src/empty_project.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DEFM32ZG222F32=1' '-DDEBUG=1' -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/CMSIS/Include" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/kits/common/bsp" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/emlib/inc" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/kits/common/drivers" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/Device/SiliconLabs/EFM32ZG/Include" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/kits/EFM32ZG_STK3200/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"src/empty_project.d" -MT"src/empty_project.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


