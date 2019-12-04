
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name TP3_BIP -dir "C:/Users/gaspa/Documents/win7VM/workspace/ArquitecturaDeComputadoras/TP3_BIP/planAhead_run_3" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/gaspa/Documents/win7VM/workspace/ArquitecturaDeComputadoras/TP3_BIP/TP3.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/gaspa/Documents/win7VM/workspace/ArquitecturaDeComputadoras/TP3_BIP} }
set_property target_constrs_file "BIP_I.ucf" [current_fileset -constrset]
add_files [list {BIP_I.ucf}] -fileset [get_property constrset [current_run]]
link_design
