onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib clk_16m_opt

do {wave.do}

view wave
view structure
view signals

do {clk_16m.udo}

run -all

quit -force
