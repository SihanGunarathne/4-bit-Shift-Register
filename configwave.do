onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Fourbit_SIPO_shiftReg_testbench/clk
add wave -noupdate /Fourbit_SIPO_shiftReg_testbench/rst
add wave -noupdate /Fourbit_SIPO_shiftReg_testbench/data_in
add wave -noupdate /Fourbit_SIPO_shiftReg_testbench/shiftRegBank
add wave -noupdate /Fourbit_SIPO_shiftReg_testbench/data_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 89
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 300
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {87 ps}
