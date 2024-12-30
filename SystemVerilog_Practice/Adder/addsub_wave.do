onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /addsub_testbench/dut/a
add wave -noupdate /addsub_testbench/dut/b
add wave -noupdate /addsub_testbench/dut/sub
add wave -noupdate -color {Blue Violet} -itemcolor {Blue Violet} /addsub_testbench/dut/sum
add wave -noupdate /addsub_testbench/dut/out_low
add wave -noupdate /addsub_testbench/dut/out_high
add wave -noupdate /addsub_testbench/dut/carry
add wave -noupdate /addsub_testbench/dut/bin
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
