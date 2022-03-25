################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../src/max_v.s \
../src/number_vector.s \
../src/palindrome.s \
../src/soma_v.s \
../src/values.s \
../src/vowels.s 

C_SRCS += \
../src/Ex2a.c \
../src/FICHA1_AC.c \
../src/ex4c.c 

OBJS += \
./src/Ex2a.o \
./src/FICHA1_AC.o \
./src/ex4c.o \
./src/max_v.o \
./src/number_vector.o \
./src/palindrome.o \
./src/soma_v.o \
./src/values.o \
./src/vowels.o 

C_DEPS += \
./src/Ex2a.d \
./src/FICHA1_AC.d \
./src/ex4c.d 


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


