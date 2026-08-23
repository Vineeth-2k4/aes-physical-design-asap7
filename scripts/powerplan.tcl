connect_global_net VDD -type pg_pin -pin_base_name VDD -all 
connect_global_net VSS -type pg_pin -pin_base_name VSS -all 
connect_global_net VDD -type tie_hi 
connect_global_net VSS -type tie_lo 
set_db add_rings_target default 
set_db add_rings_extend_over_row 0 
set_db add_rings_ignore_rows 0 
set_db add_rings_avoid_short 0 
#set_db add_rings_insert_vias true 
set_db add_rings_skip_shared_inner_ring none 
set_db add_rings_stacked_via_top_layer Pad 
set_db add_rings_stacked_via_bottom_layer Ml 
set_db add_rings_via_using_exact_crossover_size 0 
set_db add_rings_orthogonal_only true 
set_db add_rings_skip_via_on_pin {standardcell} 
add_rings \ 
-nets {VDD VSS} \ 
-type core_rings \ 
-follow core \ 
-layer {top M9 bottom M9 left M9 right M9} \ 
-width {top 3.2 bottom 3.2 left 3.2 right 3.2} \ 
-spacing {top 2 bottom 2 left 2 right 2} \ 
-offset {top 1 bottom 1 left 1 right 1} 
set_db add_rings_target default 
set_db add_rings_extend_over_row 0 
set_db add_rings_ignore_rows 0 
set_db add_rings_avoid_short 0 
#set_db add_rings_insert_vias true 
set_db add_rings_skip_shared_inner_ring none 
set_db add_rings_stacked_via_top_layer Pad 
set_db add_rings_stacked_via_bottom_layer Ml 
set_db add_rings_via_using_exact_crossover_size 0 
set_db add_rings_orthogonal_only true 
set_db add_rings_skip_via_on_pin {standardcell} 
add_rings \ 
-nets {VDD VSS} \ 
-type core_rings \ 
-follow core \ 
-layer {top M8 bottom M8 left M8 right M8} \ 
-width {top 3.2 bottom 3.2 left 3.2 right 3.2} \ 
-spacing {top 2 bottom 2 left 2 right 2} \ 
-offset {top 1 bottom 1 left 1 right 1} 

set_db add_stripes_ignore_block_check false 
set_db add_stripes_break_at {block_ring} 
set_db add_stripes_route_over_rows_only false 
set_db add_stripes_spacing_type edge_to_edge 
set_db add_stripes_stacked_via_top_layer Pad 
set_db add_stripes_stacked_via_bottom_layer M1 
set_db add_stripes_orthogonal_only true 
set_db add_stripes_allow_jog {padcore_ring block_ring} 
#set_db add_stripes_skip_via_on_pin {standardcell} 
#set_db add_stripes -snap_wire_center_to_grid true 
add_stripes \ 
-nets {VDD VSS} \ 
-layer M6 \ 
-direction horizontal \ 
-width 0.64 \ 
-spacing 0.8 \ 
-set_to_set_distance 25 \ 
-start_from left \ 
-start_offset 2 \ 
-stop_offset 2 \ 
-max_same_layer_jog_length 2 \ 
-merge_stripes_value 0.1 \ 
-pad_core_ring_top_layer_limit Pad \ 
-pad_core_ring_bottom_layer_limit M1 \ 
-snap_wire_center_to_grid grid 
add_stripes \ 
-nets {VDD VSS} \
-layer M7 \ 
-direction vertical \ 
-width 0.64 \ 
-spacing 0.8 \ 
-set_to_set_distance 25 \ 
-start_from bottom 
-start_offset 2 \ 
-stop_offset 2 \ 
-max_same_layer_jog_length 2 \ 
-merge_stripes_value 0.1 \ 
-pad_core_ring_top_layer_limit Pad \ 
-pad_core_ring_bottom_layer_limit M1 \ 
-snap_wire_center_to_grid grid 
#add_vias -nets {vss} -from_layer M8 -to_layer M9 
#set_db route_special_via_connect_to_shape {core_pin block_pin pad_pin} 
#set_db route_special_via_connect_to_shape { noshape } 
#-connect {[block_pin] [core_pin] [pad_pin] [pad_ring] [floating_stripe] [secondary_power_pin]} ] 

#route_special -connect { core_pin} -layer_change_range { M1(1) M7(1) } -block_pin_target {nearest_target} -floating_stripe_target {block_pin} -core_pin_target {none} -allow_jogging 1 -crossover_via_layer_range { M1 M9 } -nets { VDD VSS } -allow_layer_change 1 -block_pin use_lef -target_via_layer_range { M1 M9 } 
#set_db route_special_via_connect_to_shape {ring stripe padring}^M 
#set_db route_special_via_connect_to_shape {noshape} 
#route_special \ -connect {core_pin} \ -nets {VDD VSS} \ -allow_jogging 1 \ -crossover_via_layer_range {M1 M9} \ -target_via_layer_range {M1 M9} \ -layer_change_range {M1 M9} \ -block_pin_target nearest_target 
# 7. SPECIAL ROUTING (FINAL FIX)^M 
set_db route_special_via_connect_to_shape { ring stripe }^M 
#set_db route_special_snap_to_grid true 
#set_db route_special_bottom_layer_limit M6^M 
route_special \^M 
-connect {core_pin floating_stripe } \^M 
-nets {VDD VSS} \^M -allow_jogging 1 \^M 
-crossover_via_layer_range {M6 Pad} \^M 
-target_via_layer_range {M6 Pad} \^M 
-layer_change_range {M6 Pad} \^M 
-block_pin_target nearest_target \^M 
-pad_pin_target nearest_target \^M 
-nearest_target 1
