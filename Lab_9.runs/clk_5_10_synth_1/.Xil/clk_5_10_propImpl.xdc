set_property SRC_FILE_INFO {cfile:f:/vivoda/Lab_9/Lab_9.srcs/sources_1/ip/clk_5_10_1/clk_5_10.xdc rfile:../../../Lab_9.srcs/sources_1/ip/clk_5_10_1/clk_5_10.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
