################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cyclone_tcp/ext_int_driver.c \
../cyclone_tcp/main.c \
../cyclone_tcp/spi_driver.c 

OBJS += \
./cyclone_tcp/ext_int_driver.o \
./cyclone_tcp/main.o \
./cyclone_tcp/spi_driver.o 

C_DEPS += \
./cyclone_tcp/ext_int_driver.d \
./cyclone_tcp/main.d \
./cyclone_tcp/spi_driver.d 


# Each subdirectory must supply rules for building sources it contributes
cyclone_tcp/%.o: ../cyclone_tcp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../standalone_bsp_0/microblaze_0/include -mlittle-endian -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mhard-float -mxl-float-convert -mxl-float-sqrt -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


