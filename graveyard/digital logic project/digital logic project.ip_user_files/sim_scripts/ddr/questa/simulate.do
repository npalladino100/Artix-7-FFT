onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ddr_opt

do {wave.do}

view wave
view structure
view signals

do {ddr.udo}

run -all

quit -force
