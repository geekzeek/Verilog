transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Zeeshan/Google\ Drive/S16/TCES\ 330/Laboratory\ B/LabB {C:/Users/Zeeshan/Google Drive/S16/TCES 330/Laboratory B/LabB/MUX16_8_to_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/Zeeshan/Google\ Drive/S16/TCES\ 330/Laboratory\ B/LabB {C:/Users/Zeeshan/Google Drive/S16/TCES 330/Laboratory B/LabB/KeyFilter.v}
vlog -vlog01compat -work work +incdir+C:/Users/Zeeshan/Google\ Drive/S16/TCES\ 330/Laboratory\ B/LabB {C:/Users/Zeeshan/Google Drive/S16/TCES 330/Laboratory B/LabB/HexDis.v}
vlog -vlog01compat -work work +incdir+C:/Users/Zeeshan/Google\ Drive/S16/TCES\ 330/Laboratory\ B/LabB {C:/Users/Zeeshan/Google Drive/S16/TCES 330/Laboratory B/LabB/ButtonSync.v}
vlog -vlog01compat -work work +incdir+C:/Users/Zeeshan/Google\ Drive/S16/TCES\ 330/Laboratory\ B/LabB {C:/Users/Zeeshan/Google Drive/S16/TCES 330/Laboratory B/LabB/ALU74381.v}
vlog -vlog01compat -work work +incdir+C:/Users/Zeeshan/Google\ Drive/S16/TCES\ 330/Laboratory\ B/LabB {C:/Users/Zeeshan/Google Drive/S16/TCES 330/Laboratory B/LabB/LabB.v}
vlog -vlog01compat -work work +incdir+C:/Users/Zeeshan/Google\ Drive/S16/TCES\ 330/Laboratory\ B/LabB {C:/Users/Zeeshan/Google Drive/S16/TCES 330/Laboratory B/LabB/Processor.v}
vlog -vlog01compat -work work +incdir+C:/Users/Zeeshan/Google\ Drive/S16/TCES\ 330/Laboratory\ B/LabB {C:/Users/Zeeshan/Google Drive/S16/TCES 330/Laboratory B/LabB/Controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/Zeeshan/Google\ Drive/S16/TCES\ 330/Laboratory\ B/LabB {C:/Users/Zeeshan/Google Drive/S16/TCES 330/Laboratory B/LabB/Datapath.v}
vlog -vlog01compat -work work +incdir+C:/Users/Zeeshan/Google\ Drive/S16/TCES\ 330/Laboratory\ B/LabB {C:/Users/Zeeshan/Google Drive/S16/TCES 330/Laboratory B/LabB/InstrROM.v}
vlog -vlog01compat -work work +incdir+C:/Users/Zeeshan/Google\ Drive/S16/TCES\ 330/Laboratory\ B/LabB {C:/Users/Zeeshan/Google Drive/S16/TCES 330/Laboratory B/LabB/DataRAM.v}
vlog -vlog01compat -work work +incdir+C:/Users/Zeeshan/Google\ Drive/S16/TCES\ 330/Laboratory\ B/LabB {C:/Users/Zeeshan/Google Drive/S16/TCES 330/Laboratory B/LabB/RegisterFile.v}

vlog -vlog01compat -work work +incdir+C:/Users/Zeeshan/Google\ Drive/S16/TCES\ 330/Laboratory\ B/LabB {C:/Users/Zeeshan/Google Drive/S16/TCES 330/Laboratory B/LabB/testProcessor.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  testProcessor

add wave *
view structure
view signals
run -all
