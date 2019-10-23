
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name TP2-2019-UART -dir "D:/workspace/ArquitecturaDeComputadoras/TP2-2019-UART/planAhead_run_3" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/workspace/ArquitecturaDeComputadoras/TP2-2019-UART/ProgramaTP2.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/workspace/ArquitecturaDeComputadoras/TP2-2019-UART} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "ProgramaTP2.ucf" [current_fileset -constrset]
add_files [list {ProgramaTP2.ucf}] -fileset [get_property constrset [current_run]]
link_design
