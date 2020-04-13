################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/cyclone_tcp/ext_int_driver.c \
../src/cyclone_tcp/main.c \
../src/cyclone_tcp/spi_driver.c 

OBJS += \
./src/cyclone_tcp/ext_int_driver.o \
./src/cyclone_tcp/main.o \
./src/cyclone_tcp/spi_driver.o 

C_DEPS += \
./src/cyclone_tcp/ext_int_driver.d \
./src/cyclone_tcp/main.d \
./src/cyclone_tcp/spi_driver.d 


# Each subdirectory must supply rules for building sources it contributes
src/cyclone_tcp/%.o: ../src/cyclone_tcp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -Os -g -I"C:\Users\rhev2401\Downloads\S4e-APP6-Vivado_2019\S4e-APP6-Vivado_2019\APP6\APP6.sdk\APP6_2019\src\cyclone_tcp" -I"C:\Users\rhev2401\Downloads\S4e-APP6-Vivado_2019\S4e-APP6-Vivado_2019\APP6\APP6.sdk\APP6_2019\src\common" -c -fmessage-length=0 -MT"$@" -flto -I../../standalone_bsp_0/microblaze_0/include -mlittle-endian -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mhard-float -mxl-float-convert -mxl-float-sqrt -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


