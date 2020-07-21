//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Feb 25 16:44:02 2020
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include defines: preproc flags -----
`include "../src/fpga_defines.v"

// ------ Include simulation defines -----
`include "./define_simulation.v"

`include "/openLANE_flow/pdks/ef-skywater-s8/EFS8A/libs.ref/verilog/sky130_fd_sc_hd_/sky130_fd_sc_hd__inv_1.v"
`include "/openLANE_flow/pdks/ef-skywater-s8/EFS8A/libs.ref/verilog/sky130_fd_sc_hd_/sky130_fd_sc_hd__buf_4.v"
`include "/openLANE_flow/pdks/ef-skywater-s8/EFS8A/libs.ref/verilog/sky130_fd_sc_hd_/sky130_fd_sc_hd__inv_4.v"
`include "/openLANE_flow/pdks/ef-skywater-s8/EFS8A/libs.ref/verilog/sky130_fd_sc_hd_/sky130_fd_sc_hd__inv_2.v"
`include "/openLANE_flow/pdks/ef-skywater-s8/EFS8A/libs.ref/verilog/sky130_fd_sc_hd_/sky130_fd_sc_hd__buf_2.v"
`include "/openLANE_flow/pdks/ef-skywater-s8/EFS8A/libs.ref/verilog/sky130_fd_sc_hd_/sky130_fd_sc_hd__buf_1.v"
`include "/openLANE_flow/pdks/ef-skywater-s8/EFS8A/libs.ref/verilog/sky130_fd_sc_hd_/sky130_fd_sc_hd__mux2_1.v"
`include "/openLANE_flow/pdks/ef-skywater-s8/EFS8A/libs.ref/verilog/sky130_fd_sc_hd_/sky130_fd_sc_hd__or2_1.v"
`include "/openLANE_flow/pdks/ef-skywater-s8/EFS8A/libs.ref/verilog/sky130_fd_sc_hd_/sky130_fd_sc_hd__dfrtp_1.v"
`include "/openLANE_flow/pdks/ef-skywater-s8/EFS8A/libs.ref/verilog/sky130_fd_sc_hd_/sky130_fd_sc_hd__dfrbp_1.v"
//`include "$OPENFPGA_PATH/openfpga_flow/VerilogNetlists/io.v"
`include "../src/sub_module.v"

`include "../src/logic_blocks.v"

`include "../src/routing.v"

`include "../src/openfpga.v"

`ifdef AUTOCHECKED_SIMULATION
	`include "K4N4_test_modes.v"
`endif

`ifdef ENABLE_FORMAL_VERIFICATION
	`include "K4N4_test_modes_top_formal_verification.v"
	`ifdef FORMAL_SIMULATION
		`include "K4N4_test_modes_formal_random_top_tb.v"
	`endif
`endif

`ifdef AUTOCHECKED_SIMULATION
	`include "K4N4_test_modes_autocheck_top_tb.v"
`endif
