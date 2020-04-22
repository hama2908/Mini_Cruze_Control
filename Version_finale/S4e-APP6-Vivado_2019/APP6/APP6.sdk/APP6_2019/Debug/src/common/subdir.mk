################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/common/cpu_endian.c \
../src/common/date_time.c \
../src/common/os_port_none.c 

OBJS += \
./src/common/cpu_endian.o \
./src/common/date_time.o \
./src/common/os_port_none.o 

C_DEPS += \
./src/common/cpu_endian.d \
./src/common/date_time.d \
./src/common/os_port_none.d 


# Each subdirectory must supply rules for building sources it contributes
src/common/%.o: ../src/common/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -Os -g -I"C:\Mini_Cruze_Max\S4e-APP6-Vivado_2019\APP6\APP6.sdk\APP6_2019\src\cyclone_tcp" -I"C:\Mini_Cruze_Max\S4e-APP6-Vivado_2019\APP6\APP6.sdk\APP6_2019\src\common" -c -fmessage-length=0 -MT"$@" -flto -I../../standalone_bsp_0/microblaze_0/include -mlittle-endian -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mhard-float -mxl-float-convert -mxl-float-sqrt -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


