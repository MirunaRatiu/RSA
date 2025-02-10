// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Dec 17 23:37:22 2024
// Host        : DESKTOP-KN6803L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Miruna/Documents/POLI/an3/SSC/proiectCraciun/projectCraciun/projectCraciun.gen/sources_1/bd/design_2/ip/design_2_private_key_RSA_0_0/design_2_private_key_RSA_0_0_stub.v
// Design      : design_2_private_key_RSA_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "private_key_RSA,Vivado 2024.1" *)
module design_2_private_key_RSA_0_0(clk, en, p_in, q_in, public_key, private_key, n, 
  both_keys)
/* synthesis syn_black_box black_box_pad_pin="en,p_in[15:0],q_in[15:0],public_key[31:0],private_key[31:0],n[31:0],both_keys" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input en;
  input [15:0]p_in;
  input [15:0]q_in;
  input [31:0]public_key;
  output [31:0]private_key;
  output [31:0]n;
  output both_keys;
endmodule
