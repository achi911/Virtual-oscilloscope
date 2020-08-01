onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Rom_Squ_opt

do {wave.do}

view wave
view structure
view signals

do {Rom_Squ.udo}

run -all

quit -force
