transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/yasir/Desktop/project_2_\ organization/testing {C:/Users/yasir/Desktop/project_2_ organization/testing/mux2x1.v}

vlog -vlog01compat -work work +incdir+C:/Users/yasir/Desktop/project_2_\ organization/testing/../PS3/my_modules {C:/Users/yasir/Desktop/project_2_ organization/testing/../PS3/my_modules/my_testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  my_testbench

add wave *
view structure
view signals
run -all
