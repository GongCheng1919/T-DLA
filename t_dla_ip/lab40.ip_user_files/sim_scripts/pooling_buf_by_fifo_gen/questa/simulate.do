onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib pooling_buf_by_fifo_gen_opt

do {wave.do}

view wave
view structure
view signals

do {pooling_buf_by_fifo_gen.udo}

run -all

quit -force
