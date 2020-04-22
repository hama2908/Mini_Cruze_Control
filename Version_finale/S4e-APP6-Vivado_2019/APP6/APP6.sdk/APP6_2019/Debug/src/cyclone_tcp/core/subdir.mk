################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/cyclone_tcp/core/ethernet.c \
../src/cyclone_tcp/core/ip.c \
../src/cyclone_tcp/core/net.c \
../src/cyclone_tcp/core/net_mem.c \
../src/cyclone_tcp/core/nic.c \
../src/cyclone_tcp/core/socket.c \
../src/cyclone_tcp/core/udp.c 

OBJS += \
./src/cyclone_tcp/core/ethernet.o \
./src/cyclone_tcp/core/ip.o \
./src/cyclone_tcp/core/net.o \
./src/cyclone_tcp/core/net_mem.o \
./src/cyclone_tcp/core/nic.o \
./src/cyclone_tcp/core/socket.o \
./src/cyclone_tcp/core/udp.o 

C_DEPS += \
./src/cyclone_tcp/core/ethernet.d \
./src/cyclone_tcp/core/ip.d \
./src/cyclone_tcp/core/net.d \
./src/cyclone_tcp/core/net_mem.d \
./src/cyclone_tcp/core/nic.d \
./src/cyclone_tcp/core/socket.d \
./src/cyclone_tcp/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
src/cyclone_tcp/core/%.o: ../src/cyclone_tcp/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -Os -g -I"C:\Mini_Cruze_Max\S4e-APP6-Vivado_2019\APP6\APP6.sdk\APP6_2019\src\cyclone_tcp" -I"C:\Mini_Cruze_Max\S4e-APP6-Vivado_2019\APP6\APP6.sdk\APP6_2019\src\common" -c -fmessage-length=0 -MT"$@" -flto -I../../standalone_bsp_0/microblaze_0/include -mlittle-endian -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mhard-float -mxl-float-convert -mxl-float-sqrt -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


