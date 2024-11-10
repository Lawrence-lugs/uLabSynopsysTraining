set_app_var search_path "$search_path mapped lib cons rtl"

set_app_var target_library /local/home/u1/open_pdks/sources/sky130_fd_sc_hd/db/sky130_fd_sc_hd__tt_025C_1v80.db

set_app_var link_library "* $target_library"

analyze -format sverilog ../rtl/multiply_add_seq.v

elaborate multiply_add_seq

link

source timing.sdc
check_timing
compile_ultra -no_autoungroup

report_area > reports/area.txt
report_timing > reports/timing.txt
report_power > reports/power.txt
report_constraint -all_violators > reports/constraint.txt

change_names -rules verilog -hierarchy
write_file -format verilog -hierarchy -output ../mapped/multiply_add_seq_mapped.v
write_file -format ddc -hierarchy -output ../mapped/multiply_add_seq_mapped.ddc
write_sdf ../mapped/multiply_add_seq_mapped.sdf
write_sdc ../mapped/multiply_add_seq_mapped.sdc

