vcom -93 -work work -O0 ../../contador.vhd
vsim work.contador
do contador_wave.do
force -freeze sim:/contador/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/contador/rst 0 0, 1 1, 0 4210, 1 4215
force -freeze sim:/contador/flag 1 0, 0 700, 1 800
run 10000