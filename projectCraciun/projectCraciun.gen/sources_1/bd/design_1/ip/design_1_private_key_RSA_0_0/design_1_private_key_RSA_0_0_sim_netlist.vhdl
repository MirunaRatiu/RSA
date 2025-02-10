-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Dec 13 15:03:02 2024
-- Host        : DESKTOP-KN6803L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Miruna/Documents/POLI/an3/SSC/proiectCraciun/projectCraciun/projectCraciun.gen/sources_1/bd/design_1/ip/design_1_private_key_RSA_0_0/design_1_private_key_RSA_0_0_sim_netlist.vhdl
-- Design      : design_1_private_key_RSA_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_private_key_RSA_0_0_private_key_RSA is
  port (
    n : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    q_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    p_in : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_private_key_RSA_0_0_private_key_RSA : entity is "private_key_RSA";
end design_1_private_key_RSA_0_0_private_key_RSA;

architecture STRUCTURE of design_1_private_key_RSA_0_0_private_key_RSA is
  signal NLW_n_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_n_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_n_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_n_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_n_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_n_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_n_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_n_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_n_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_n_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_n_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of n_reg : label is "{SYNTH-13 {cell *THIS*}}";
begin
n_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => p_in(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_n_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 16) => B"00",
      B(15 downto 0) => q_in(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_n_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_n_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_n_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_n_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_n_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_n_reg_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => n(31 downto 0),
      PATTERNBDETECT => NLW_n_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_n_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_n_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_n_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_private_key_RSA_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    p_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    public_key : in STD_LOGIC_VECTOR ( 31 downto 0 );
    private_key : out STD_LOGIC_VECTOR ( 31 downto 0 );
    n : out STD_LOGIC_VECTOR ( 31 downto 0 );
    both_keys : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_private_key_RSA_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_private_key_RSA_0_0 : entity is "design_1_private_key_RSA_0_0,private_key_RSA,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_private_key_RSA_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_private_key_RSA_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_private_key_RSA_0_0 : entity is "private_key_RSA,Vivado 2024.1";
end design_1_private_key_RSA_0_0;

architecture STRUCTURE of design_1_private_key_RSA_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  both_keys <= \<const1>\;
  private_key(31) <= \<const0>\;
  private_key(30) <= \<const0>\;
  private_key(29) <= \<const0>\;
  private_key(28) <= \<const0>\;
  private_key(27) <= \<const0>\;
  private_key(26) <= \<const0>\;
  private_key(25) <= \<const0>\;
  private_key(24) <= \<const0>\;
  private_key(23) <= \<const0>\;
  private_key(22) <= \<const0>\;
  private_key(21) <= \<const0>\;
  private_key(20) <= \<const0>\;
  private_key(19) <= \<const0>\;
  private_key(18) <= \<const0>\;
  private_key(17) <= \<const0>\;
  private_key(16) <= \<const0>\;
  private_key(15) <= \<const0>\;
  private_key(14) <= \<const0>\;
  private_key(13) <= \<const0>\;
  private_key(12) <= \<const0>\;
  private_key(11) <= \<const0>\;
  private_key(10) <= \<const0>\;
  private_key(9) <= \<const0>\;
  private_key(8) <= \<const0>\;
  private_key(7) <= \<const0>\;
  private_key(6) <= \<const0>\;
  private_key(5) <= \<const0>\;
  private_key(4) <= \<const0>\;
  private_key(3) <= \<const0>\;
  private_key(2) <= \<const0>\;
  private_key(1) <= \<const0>\;
  private_key(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_private_key_RSA_0_0_private_key_RSA
     port map (
      clk => clk,
      n(31 downto 0) => n(31 downto 0),
      p_in(15 downto 0) => p_in(15 downto 0),
      q_in(15 downto 0) => q_in(15 downto 0)
    );
end STRUCTURE;
