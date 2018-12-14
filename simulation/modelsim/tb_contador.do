vcom -93 -work work -O0 ../../contador.vhd
vsim work.contador
do contador_wave.do
force -freeze sim:/contador/rstA 1 0, 0 10
force -freeze sim:/contador/rstS 0 0
force -freeze sim:/contador/load 1 0, 0 1sec, 1 50sec, 0 51sec
force -freeze sim:/contador/enable 1 0
force -freeze sim:/contador/clk 0 0, 1 20, 0 {0.5sec} -r 1sec
run 100sec