vcom -93 -work work {../../maquinaDeEstado.vhd}

vsim work.maquinadeestado

do ms_wave.do

force -freeze sim:/maquinadeestado/rst 0 0, 1 2
force -freeze sim:/maquinadeestado/clk 0 0, 1 20, 0 {0.5 sec} -r 1 sec
force -freeze sim:/maquinadeestado/btn1 0 0, 1 20 sec, 0 25 sec, 1 83 sec, 0 85 sec
force -freeze sim:/maquinadeestado/btn2 0 0, 1 60 sec, 0 65 sec, 1 115 sec, 0 117 sec
force -freeze sim:/maquinadeestado/contador_fim_VM 0 0, 1 72 sec
force -freeze sim:/maquinadeestado/contador_fim_VD 0 0, 1 94 sec
force -freeze sim:/maquinadeestado/s1 0 0, 1 75 sec, 0 80 sec, 1 81 sec, 0 90 sec

run 200 sec