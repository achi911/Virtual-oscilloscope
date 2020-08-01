vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic" \
"E:/BaiduNetdiskDownload/vivado18.3/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/BaiduNetdiskDownload/vivado18.3/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/BaiduNetdiskDownload/vivado18.3/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../Lab_9.srcs/sources_1/ip/clk_5_10_1/clk_5_10_clk_wiz.v" \
"../../../../Lab_9.srcs/sources_1/ip/clk_5_10_1/clk_5_10.v" \

vlog -work xil_defaultlib \
"glbl.v"

