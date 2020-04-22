################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cyclone_tcp/core/ethernet.c \
../cyclone_tcp/core/ip.c \
../cyclone_tcp/core/net.c \
../cyclone_tcp/core/net_mem.c \
../cyclone_tcp/core/nic.c \
../cyclone_tcp/core/socket.c \
../cyclone_tcp/core/udp.c 

OBJS += \
./cyclone_tcp/core/ethernet.o \
./cyclone_tcp/core/ip.o \
./cyclone_tcp/core/net.o \
./cyclone_tcp/core/net_mem.o \
./cyclone_tcp/core/nic.o \
./cyclone_tcp/core/socket.o \
./cyclone_tcp/core/udp.o 

C_DEPS += \
./cyclone_tcp/core/ethernet.d \
./cyclone_tcp/core/ip.d \
./cyclone_tcp/core/net.d \
./cyclone_tcp/core/net_mem.d \
./cyclone_tcp/core/nic.d \
./cyclone_tcp/core/socket.d \
./cyclone_tcp/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
cyclone_tcp/core/%.o: ../cyclone_tcp/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../standalone_bsp_0/microblaze_0/include -mlittle-endian -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mhard-float -mxl-float-convert -mxl-float-sqrt -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


