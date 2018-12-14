onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /maquinadeestado/rst
add wave -noupdate /maquinadeestado/clk
add wave -noupdate /maquinadeestado/pr_state
add wave -noupdate /maquinadeestado/nx_state
add wave -noupdate /maquinadeestado/s1
add wave -noupdate /maquinadeestado/s2
add wave -noupdate /maquinadeestado/sensor
add wave -noupdate /maquinadeestado/btn1
add wave -noupdate /maquinadeestado/btn2
add wave -noupdate /maquinadeestado/botao
add wave -noupdate /maquinadeestado/contador
add wave -noupdate /maquinadeestado/flag_vm
add wave -noupdate /maquinadeestado/flag_vd
add wave -noupdate /maquinadeestado/rst_dip_vd
add wave -noupdate /maquinadeestado/rst_dip_vm
add wave -noupdate /maquinadeestado/CVD
add wave -noupdate /maquinadeestado/CVM
add wave -noupdate /maquinadeestado/CAM
add wave -noupdate /maquinadeestado/PVD
add wave -noupdate /maquinadeestado/PVM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
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
WaveRestoreZoom {0 ps} {1 ns}
