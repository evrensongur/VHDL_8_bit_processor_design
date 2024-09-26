create_clock -period 20.000 -name clk -waveform {0.000 10.000} -add [get_ports -filter { NAME =~  "*clk*" && DIRECTION == "IN" }]
set _xlnx_shared_i0 [get_ports {{port_in_00[0]} {port_in_00[1]} {port_in_00[2]} {port_in_00[3]} {port_in_00[4]} {port_in_00[5]} {port_in_00[6]} {port_in_00[7]} {port_in_01[0]} {port_in_01[1]} {port_in_01[2]} {port_in_01[3]} {port_in_01[4]} {port_in_01[5]} {port_in_01[6]} {port_in_01[7]} {port_in_02[0]} {port_in_02[1]} {port_in_02[2]} {port_in_02[3]} {port_in_02[4]} {port_in_02[5]} {port_in_02[6]} {port_in_02[7]} {port_in_03[0]} {port_in_03[1]} {port_in_03[2]} {port_in_03[3]} {port_in_03[4]} {port_in_03[5]} {port_in_03[6]} {port_in_03[7]} {port_in_04[0]} {port_in_04[1]} {port_in_04[2]} {port_in_04[3]} {port_in_04[4]} {port_in_04[5]} {port_in_04[6]} {port_in_04[7]} {port_in_05[0]} {port_in_05[1]} {port_in_05[2]} {port_in_05[3]} {port_in_05[4]} {port_in_05[5]} {port_in_05[6]} {port_in_05[7]} {port_in_06[0]} {port_in_06[1]} {port_in_06[2]} {port_in_06[3]} {port_in_06[4]} {port_in_06[5]} {port_in_06[6]} {port_in_06[7]} {port_in_07[0]} {port_in_07[1]} {port_in_07[2]} {port_in_07[3]} {port_in_07[4]} {port_in_07[5]} {port_in_07[6]} {port_in_07[7]} {port_in_08[0]} {port_in_08[1]} {port_in_08[2]} {port_in_08[3]} {port_in_08[4]} {port_in_08[5]} {port_in_08[6]} {port_in_08[7]} {port_in_09[0]} {port_in_09[1]} {port_in_09[2]} {port_in_09[3]} {port_in_09[4]} {port_in_09[5]} {port_in_09[6]} {port_in_09[7]} {port_in_10[0]} {port_in_10[1]} {port_in_10[2]} {port_in_10[3]} {port_in_10[4]} {port_in_10[5]} {port_in_10[6]} {port_in_10[7]} {port_in_11[0]} {port_in_11[1]} {port_in_11[2]} {port_in_11[3]} {port_in_11[4]} {port_in_11[5]} {port_in_11[6]} {port_in_11[7]} {port_in_12[0]} {port_in_12[1]} {port_in_12[2]} {port_in_12[3]} {port_in_12[4]} {port_in_12[5]} {port_in_12[6]} {port_in_12[7]} {port_in_13[0]} {port_in_13[1]} {port_in_13[2]} {port_in_13[3]} {port_in_13[4]} {port_in_13[5]} {port_in_13[6]} {port_in_13[7]} {port_in_14[0]} {port_in_14[1]} {port_in_14[2]} {port_in_14[3]} {port_in_14[4]} {port_in_14[5]} {port_in_14[6]} {port_in_14[7]} {port_in_15[0]} {port_in_15[1]} {port_in_15[2]} {port_in_15[3]} {port_in_15[4]} {port_in_15[5]} {port_in_15[6]} {port_in_15[7]} rst}]
set_input_delay -clock [get_clocks *clk*] -add_delay 2.000 $_xlnx_shared_i0
set _xlnx_shared_i1 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" }]
set_output_delay -clock [get_clocks *clk*] -add_delay 2.000 $_xlnx_shared_i1
