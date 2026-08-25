#SDC FILE 
create_clock \
-name clk \
-period 700 \
-waveform {0 350} \
[get_ports clk]

set_clock_uncertainty 10 [get_clocks clk]
set_clock_transition 100 [get_clocks clk]

set_input_delay 500 \
-clock clk \
[remove_from_collection [all_inputs] [get_ports clk]]

set_output_delay 500 \
-clock clk \
[all_outputs]

set_load 0.05 [all_outputs]
set_input_transition 0.06 [remove_from_collection [all_inputs] [get_ports clk]]
set_false_path -from [get_ports reset_n]
#driving cell
#set_driving_cell \
#-lib_cell BUFx2_ASAP7_75t_R \
