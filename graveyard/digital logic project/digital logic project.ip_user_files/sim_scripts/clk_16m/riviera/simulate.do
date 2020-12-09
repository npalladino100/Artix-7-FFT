onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+clk_16m -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clk_16m xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {clk_16m.udo}

run -all

endsim

quit -force
