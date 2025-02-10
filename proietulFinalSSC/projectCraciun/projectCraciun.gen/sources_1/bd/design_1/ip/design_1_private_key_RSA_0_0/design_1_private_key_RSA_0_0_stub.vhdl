-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Dec 13 15:03:02 2024
-- Host        : DESKTOP-KN6803L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Miruna/Documents/POLI/an3/SSC/proiectCraciun/projectCraciun/projectCraciun.gen/sources_1/bd/design_1/ip/design_1_private_key_RSA_0_0/design_1_private_key_RSA_0_0_stub.vhdl
-- Design      : design_1_private_key_RSA_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_private_key_RSA_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    p_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    public_key : in STD_LOGIC_VECTOR ( 31 downto 0 );
    private_key : out STD_LOGIC_VECTOR ( 31 downto 0 );
    n : out STD_LOGIC_VECTOR ( 31 downto 0 );
    both_keys : out STD_LOGIC
  );

end design_1_private_key_RSA_0_0;

architecture stub of design_1_private_key_RSA_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,en,p_in[15:0],q_in[15:0],public_key[31:0],private_key[31:0],n[31:0],both_keys";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "private_key_RSA,Vivado 2024.1";
begin
end;
