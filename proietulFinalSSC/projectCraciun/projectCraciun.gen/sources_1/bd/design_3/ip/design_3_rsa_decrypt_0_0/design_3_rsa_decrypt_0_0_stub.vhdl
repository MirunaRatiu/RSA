-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Dec 18 13:44:11 2024
-- Host        : DESKTOP-KN6803L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Miruna/Documents/POLI/an3/SSC/proiectCraciun/projectCraciun/projectCraciun.gen/sources_1/bd/design_3/ip/design_3_rsa_decrypt_0_0/design_3_rsa_decrypt_0_0_stub.vhdl
-- Design      : design_3_rsa_decrypt_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_3_rsa_decrypt_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    ciphertext_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    private_key_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    public_key_n : in STD_LOGIC_VECTOR ( 31 downto 0 );
    character_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    done : out STD_LOGIC
  );

end design_3_rsa_decrypt_0_0;

architecture stub of design_3_rsa_decrypt_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,en,ciphertext_in[31:0],private_key_d[31:0],public_key_n[31:0],character_out[7:0],done";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rsa_decrypt,Vivado 2024.1";
begin
end;
