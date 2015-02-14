################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/efm32zg/system_efm32zg.c 

S_SRCS += \
../CMSIS/efm32zg/startup_gcc_efm32zg.s 

OBJS += \
./CMSIS/efm32zg/startup_gcc_efm32zg.o \
./CMSIS/efm32zg/system_efm32zg.o 

C_DEPS += \
./CMSIS/efm32zg/system_efm32zg.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/efm32zg/%.o: ../CMSIS/efm32zg/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Assembler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb -c -x assembler-with-cpp -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/CMSIS/Include" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/kits/common/bsp" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/emlib/inc" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/kits/common/drivers" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/Device/SiliconLabs/EFM32ZG/Include" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/kits/EFM32ZG_STK3200/config" '-DEFM32ZG222F32=1' -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CMSIS/efm32zg/system_efm32zg.o: ../CMSIS/efm32zg/system_efm32zg.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m0plus -mthumb '-DEFM32ZG222F32=1' '-DDEBUG=1' -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/CMSIS/Include" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/kits/common/bsp" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/emlib/inc" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/kits/common/drivers" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/Device/SiliconLabs/EFM32ZG/Include" -I"C:\SiliconLabs\SimplicityStudio\v2\developer\sdks\efm32\v2/kits/EFM32ZG_STK3200/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -ffunction-sections -fdata-sections -std=c99 -MMD -MP -MF"CMSIS/efm32zg/system_efm32zg.d" -MT"CMSIS/efm32zg/system_efm32zg.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


