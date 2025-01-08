onerror {quit -f}
vlib work
vlog -work work chufa.vo
vlog -work work chufa.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.chufa_vlg_vec_tst
vcd file -direction chufa.msim.vcd
vcd add -internal chufa_vlg_vec_tst/*
vcd add -internal chufa_vlg_vec_tst/i1/*
add wave /*
run -all
