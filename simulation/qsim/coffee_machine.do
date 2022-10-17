onerror {exit -code 1}
vlib work
vcom -work work coffee_machine.vho
vcom -work work drinksMenuFSM.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.drinksMenuFSM_vhd_vec_tst
vcd file -direction coffee_machine.msim.vcd
vcd add -internal drinksMenuFSM_vhd_vec_tst/*
vcd add -internal drinksMenuFSM_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
