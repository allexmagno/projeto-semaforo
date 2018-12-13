vcom -93 -work work {../../maquinaDeEstado.vhd}

vsim work.maquinadeestado

do ms_wave.do
force -freeze sim:/maquinadeestado/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/maquinadeestado/rst 0 0, 1 5
force -freeze sim:/maquinadeestado/btn1 1 0, 0 120, 1 300
force -freeze sim:/maquinadeestado/btn2 1 0, 0 240, 1 500

force -freeze sim:/maquinadeestado/s1 0 0, 1 20, 0 300, 1 1300, 0 1400 
force -freeze sim:/maquinadeestado/s2 0 0, 1 500, 0 600, 1 1380, 0 1500

run 10000