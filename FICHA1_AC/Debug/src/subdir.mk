################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../src/soma_v.s 

C_SRCS += \
../src/FICHA1_AC.c 

OBJS += \
./src/FICHA1_AC.o \
./src/soma_v.o 

C_DEPS += \
./src/FICHA1_AC.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler 10.2.1 [aarch64-none-elf]'
	aarch64-none-elf-gcc.exe -O0 -g -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler 10.2.1 [aarch64-none-elf]'
	aarch64-none-elf-as.exe -g -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


