onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /maquinadeestado/clk
add wave -noupdate /maquinadeestado/rst
add wave -noupdate -expand -group Botao&Sensor /maquinadeestado/sensor
add wave -noupdate -expand -group Botao&Sensor /maquinadeestado/botao
add wave -noupdate -expand -group Sinaleira /maquinadeestado/CVM
add wave -noupdate -expand -group Sinaleira /maquinadeestado/CAM
add wave -noupdate -expand -group Sinaleira /maquinadeestado/PVD
add wave -noupdate -expand -group Sinaleira /maquinadeestado/PVM
add wave -noupdate -expand -group Sinaleira /maquinadeestado/LUZ
add wave -noupdate -expand -group Sinaleira /maquinadeestado/CVD
add wave -noupdate -expand -group Estados /maquinadeestado/nx_state
add wave -noupdate -expand -group Estados /maquinadeestado/pr_state
add wave -noupdate -group contador /maquinadeestado/contador_fim_VM
add wave -noupdate -group contador /maquinadeestado/load_vd
add wave -noupdate -group contador /maquinadeestado/load_vm
add wave -noupdate -group contador /maquinadeestado/contador_fim_VD
add wave -noupdate -group entrada /maquinadeestado/btn1
add wave -noupdate -group entrada /maquinadeestado/btn2
add wave -noupdate -group entrada /maquinadeestado/s1
add wave -noupdate -group entrada /maquinadeestado/s2
add wave -noupdate /maquinadeestado/timer
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {26622981969601 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {23037500919324 ps}
