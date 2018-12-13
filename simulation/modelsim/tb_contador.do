vcom -93 -work work -O0 ../../contador.vhd
vsim work.contador
do contador_wave.do
force -freeze sim:/contador/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/contador/rst 0 0, 1 1
run 10000