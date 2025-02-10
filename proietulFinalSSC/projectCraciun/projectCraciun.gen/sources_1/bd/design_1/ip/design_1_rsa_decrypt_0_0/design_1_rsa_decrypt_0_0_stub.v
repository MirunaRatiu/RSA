// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Dec 13 15:02:10 2024
// Host        : DESKTOP-KN6803L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Miruna/Documents/POLI/an3/SSC/proiectCraciun/projectCraciun/projectCraciun.gen/sources_1/bd/design_1/ip/design_1_rsa_decrypt_0_0/design_1_rsa_decrypt_0_0_stub.v
// Design      : design_1_rsa_decrypt_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rsa_decrypt,Vivado 2024.1" *)
module design_1_rsa_decrypt_0_0(clk, en, ciphertext_in, private_key_d, 
  public_key_n, character_out, done)
/* synthesis syn_black_box black_box_pad_pin="en,ciphertext_in[31:0],private_key_d[31:0],public_key_n[31:0],character_out[7:0],done" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input en;
  input [31:0]ciphertext_in;
  input [31:0]private_key_d;
  input [31:0]public_key_n;
  output [7:0]character_out;
  output done;
endmodule
