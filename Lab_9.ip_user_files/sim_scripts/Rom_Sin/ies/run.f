-makelib ies_lib/xil_defaultlib -sv \
  "E:/BaiduNetdiskDownload/vivado18.3/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/BaiduNetdiskDownload/vivado18.3/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/BaiduNetdiskDownload/vivado18.3/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_2 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Lab_9.srcs/sources_1/ip/Rom_Sin/sim/Rom_Sin.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib
