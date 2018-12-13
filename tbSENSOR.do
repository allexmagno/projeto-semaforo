vcom -93 -work work {../../sensor.vhd}
vsim work.sensor
do waveSENSOR.do
force -freeze sim:/sensor/rst 1 0, 0 50
force -freeze sim:/sensor/clk 0 0, 1 {50 ps} -r 100
force -freeze sim:/sensor/movimento 0 0, 1 200, 0 250, 1 1000, 0 1050, 1 2000, 0 3000
run 4000