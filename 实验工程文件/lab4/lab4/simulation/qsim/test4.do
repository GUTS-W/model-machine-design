onerror {quit -f}
vlib work
vlog -work work test4.vo
vlog -work work test4.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.test4_vlg_vec_tst
vcd file -direction test4.msim.vcd
vcd add -internal test4_vlg_vec_tst/*
vcd add -internal test4_vlg_vec_tst/i1/*
add wave /*
run -all
