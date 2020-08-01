onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Rom_Tri_opt

do {wave.do}

view wave
view structure
view signals

do {Rom_Tri.udo}

run -all

quit -force
