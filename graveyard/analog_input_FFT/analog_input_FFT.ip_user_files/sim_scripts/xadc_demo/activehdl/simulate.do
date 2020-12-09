onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+xadc_demo -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.xadc_demo xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {xadc_demo.udo}

run -all

endsim

quit -force
