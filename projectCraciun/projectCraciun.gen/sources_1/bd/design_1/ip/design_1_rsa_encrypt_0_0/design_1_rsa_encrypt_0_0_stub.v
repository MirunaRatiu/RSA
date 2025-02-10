// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Dec 13 15:02:11 2024
// Host        : DESKTOP-KN6803L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Miruna/Documents/POLI/an3/SSC/proiectCraciun/projectCraciun/projectCraciun.gen/sources_1/bd/design_1/ip/design_1_rsa_encrypt_0_0/design_1_rsa_encrypt_0_0_stub.v
// Design      : design_1_rsa_encrypt_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rsa_encrypt,Vivado 2024.1" *)
module design_1_rsa_encrypt_0_0(clk, en, character_in, public_key_e, 
  public_key_n, ciphertext, done)
/* synthesis syn_black_box black_box_pad_pin="en,character_in[7:0],public_key_e[31:0],public_key_n[31:0],ciphertext[31:0],done" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input en;
  input [7:0]character_in;
  input [31:0]public_key_e;
  input [31:0]public_key_n;
  output [31:0]ciphertext;
  output done;
endmodule
