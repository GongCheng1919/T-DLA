onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib feature_in_mem_gen_opt

do {wave.do}

view wave
view structure
view signals

do {feature_in_mem_gen.udo}

run -all

quit -force