onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sensor/Tc
add wave -noupdate /sensor/clk
add wave -noupdate /sensor/movimento
add wave -noupdate /sensor/presenca
add wave -noupdate /sensor/rst
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {69 ps} 0}
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
configure wave -timelineunits sec
update
WaveRestoreZoom {0 ps} {4200 ps}
