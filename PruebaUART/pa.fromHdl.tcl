
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name PruebaUART -dir "D:/workspace/ArquitecturaDeComputadoras/PruebaUART/planAhead_run_1" -part xc3s100ecp132-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "pruebaUART.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../TP2-2019-UART/Tx.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../TP2-2019-UART/Rx.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../TP2-2019-UART/FIFO.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../TP2-2019-UART/BaudRateGen.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../TP2-2019-UART/UART.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {pruebaUART.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top pruebaUART $srcset
add_files [list {pruebaUART.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-4
