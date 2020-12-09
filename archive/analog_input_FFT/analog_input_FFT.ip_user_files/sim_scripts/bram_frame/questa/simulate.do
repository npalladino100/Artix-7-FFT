onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib bram_frame_opt

do {wave.do}

view wave
view structure
view signals

do {bram_frame.udo}

run -all

quit -force
