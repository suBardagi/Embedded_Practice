################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs2020/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --idiv_support=idiv0 --tmu_support=tmu0 -Ooff --include_path="C:/Users/User/workspace_ccstheia/adc_read-filter" --include_path="C:/ti/c2000/C2000Ware_6_00_00_00" --include_path="C:/Users/User/workspace_ccstheia/adc_read-filter/device" --include_path="C:/ti/c2000/C2000Ware_6_00_00_00/driverlib/f28002x/driverlib/" --include_path="C:/ti/ccs2020/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include" --define=DEBUG --define=RAM --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="C:/Users/User/workspace_ccstheia/adc_read-filter/CPU1_RAM/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-13592529: ../c2000.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"C:/ti/ccs2020/ccs/utils/sysconfig_1.24.0/sysconfig_cli.bat" --script "C:/Users/User/workspace_ccstheia/adc_read-filter/c2000.syscfg" -o "syscfg" -s "C:/ti/c2000/C2000Ware_6_00_00_00/.metadata/sdk.json" -d "F28002x" -p "80QFP" -r "F28002x_80QFP" --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/board.c: build-13592529 ../c2000.syscfg
syscfg/board.h: build-13592529
syscfg/board.cmd.genlibs: build-13592529
syscfg/board.opt: build-13592529
syscfg/board.json: build-13592529
syscfg/pinmux.csv: build-13592529
syscfg/c2000ware_libraries.cmd.genlibs: build-13592529
syscfg/c2000ware_libraries.opt: build-13592529
syscfg/c2000ware_libraries.c: build-13592529
syscfg/c2000ware_libraries.h: build-13592529
syscfg/clocktree.h: build-13592529
syscfg: build-13592529

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs2020/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --idiv_support=idiv0 --tmu_support=tmu0 -Ooff --include_path="C:/Users/User/workspace_ccstheia/adc_read-filter" --include_path="C:/ti/c2000/C2000Ware_6_00_00_00" --include_path="C:/Users/User/workspace_ccstheia/adc_read-filter/device" --include_path="C:/ti/c2000/C2000Ware_6_00_00_00/driverlib/f28002x/driverlib/" --include_path="C:/ti/ccs2020/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include" --define=DEBUG --define=RAM --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="C:/Users/User/workspace_ccstheia/adc_read-filter/CPU1_RAM/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


