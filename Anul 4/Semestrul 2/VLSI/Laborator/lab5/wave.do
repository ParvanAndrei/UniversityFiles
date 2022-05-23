onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /mealy_syn_asyn_test/clk
add wave -noupdate -format Logic /mealy_syn_asyn_test/reset
add wave -noupdate -format Logic /mealy_syn_asyn_test/red
add wave -noupdate -format Logic /mealy_syn_asyn_test/green
add wave -noupdate -format Logic /mealy_syn_asyn_test/blue
add wave -noupdate -format Logic /mealy_syn_asyn_test/dut_syn/newcolour
add wave -noupdate -format Literal /mealy_syn_asyn_test/dut_syn/currentstate
add wave -noupdate -format Logic /mealy_syn_asyn_test/dut_asyn/newcolour
add wave -noupdate -format Literal /mealy_syn_asyn_test/dut_asyn/currentstate
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {430 ns}
WaveRestoreZoom {396 ns} {551 ns}
configure wave -namecolwidth 229
configure wave -valuecolwidth 70
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
