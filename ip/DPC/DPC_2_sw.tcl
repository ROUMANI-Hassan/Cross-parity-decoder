create_driver DPC_driver

set_sw_property hw_class_name DPC_2
set_sw_property version 1.0
set_sw_property min_compatible_hw_version 1.0
set_sw_property bsp_subdirectory drivers

add_sw_property supported_bsp_type HAL
add_sw_property include_source inc/dpc_regs.h
add_sw_property include_source inc/dpcAPI.h
add_sw_property c_source src/dpcAPI.c