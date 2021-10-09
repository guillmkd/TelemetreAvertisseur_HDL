onerror {exit -code 1}
vlib work
vlog -work work BasculeD8Bits.vo
vlog -work work TestBasculeD8Bits.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.BasculeD8Bits_vlg_vec_tst
vcd file -direction BasculeD8Bits.msim.vcd
vcd add -internal BasculeD8Bits_vlg_vec_tst/*
vcd add -internal BasculeD8Bits_vlg_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

