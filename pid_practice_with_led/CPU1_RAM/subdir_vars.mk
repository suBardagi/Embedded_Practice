################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
../28002x_generic_ram_lnk.cmd 

SYSCFG_SRCS += \
../c2000.syscfg 

LIB_SRCS += \
C:/ti/c2000/C2000Ware_6_00_00_00/driverlib/f28002x/driverlib/ccs/Debug/driverlib.lib 

C_SRCS += \
../GPIO_config.c \
./syscfg/board.c \
./syscfg/c2000ware_libraries.c \
../delay_time.c \
../empty_driverlib_main.c \
../pid.c 

GEN_FILES += \
./syscfg/board.c \
./syscfg/board.opt \
./syscfg/c2000ware_libraries.opt \
./syscfg/c2000ware_libraries.c 

GEN_MISC_DIRS += \
./syscfg 

C_DEPS += \
./GPIO_config.d \
./syscfg/board.d \
./syscfg/c2000ware_libraries.d \
./delay_time.d \
./empty_driverlib_main.d \
./pid.d 

GEN_OPTS += \
./syscfg/board.opt \
./syscfg/c2000ware_libraries.opt 

OBJS += \
./GPIO_config.obj \
./syscfg/board.obj \
./syscfg/c2000ware_libraries.obj \
./delay_time.obj \
./empty_driverlib_main.obj \
./pid.obj 

GEN_MISC_FILES += \
./syscfg/board.h \
./syscfg/board.cmd.genlibs \
./syscfg/board.json \
./syscfg/pinmux.csv \
./syscfg/c2000ware_libraries.cmd.genlibs \
./syscfg/c2000ware_libraries.h \
./syscfg/clocktree.h 

GEN_MISC_DIRS__QUOTED += \
"syscfg" 

OBJS__QUOTED += \
"GPIO_config.obj" \
"syscfg\board.obj" \
"syscfg\c2000ware_libraries.obj" \
"delay_time.obj" \
"empty_driverlib_main.obj" \
"pid.obj" 

GEN_MISC_FILES__QUOTED += \
"syscfg\board.h" \
"syscfg\board.cmd.genlibs" \
"syscfg\board.json" \
"syscfg\pinmux.csv" \
"syscfg\c2000ware_libraries.cmd.genlibs" \
"syscfg\c2000ware_libraries.h" \
"syscfg\clocktree.h" 

C_DEPS__QUOTED += \
"GPIO_config.d" \
"syscfg\board.d" \
"syscfg\c2000ware_libraries.d" \
"delay_time.d" \
"empty_driverlib_main.d" \
"pid.d" 

GEN_FILES__QUOTED += \
"syscfg\board.c" \
"syscfg\board.opt" \
"syscfg\c2000ware_libraries.opt" \
"syscfg\c2000ware_libraries.c" 

C_SRCS__QUOTED += \
"../GPIO_config.c" \
"./syscfg/board.c" \
"./syscfg/c2000ware_libraries.c" \
"../delay_time.c" \
"../empty_driverlib_main.c" \
"../pid.c" 

SYSCFG_SRCS__QUOTED += \
"../c2000.syscfg" 


