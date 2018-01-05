--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
--Date        : Sat Dec  9 15:11:36 2017
--Host        : T460p running 64-bit Ubuntu 16.04.3 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    Z : in STD_LOGIC;
    b_pwm : out STD_LOGIC;
    b_pwm_1 : out STD_LOGIC;
    b_pwm_2 : out STD_LOGIC;
    emend : in STD_LOGIC;
    g_pwm : out STD_LOGIC;
    g_pwm_1 : out STD_LOGIC;
    g_pwm_2 : out STD_LOGIC;
    gpio_rtl_tri_o : out STD_LOGIC_VECTOR ( 4 downto 0 );
    pwm_a_l : out STD_LOGIC;
    pwm_b_l : out STD_LOGIC;
    r_pwm : out STD_LOGIC;
    r_pwm_1 : out STD_LOGIC;
    r_pwm_2 : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    gpio_rtl_tri_o : out STD_LOGIC_VECTOR ( 4 downto 0 );
    b_pwm : out STD_LOGIC;
    g_pwm : out STD_LOGIC;
    r_pwm : out STD_LOGIC;
    b_pwm_1 : out STD_LOGIC;
    g_pwm_1 : out STD_LOGIC;
    r_pwm_1 : out STD_LOGIC;
    b_pwm_2 : out STD_LOGIC;
    g_pwm_2 : out STD_LOGIC;
    r_pwm_2 : out STD_LOGIC;
    pwm_a_l : out STD_LOGIC;
    pwm_b_l : out STD_LOGIC;
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Z : in STD_LOGIC;
    emend : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      A => A,
      B => B,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      Z => Z,
      b_pwm => b_pwm,
      b_pwm_1 => b_pwm_1,
      b_pwm_2 => b_pwm_2,
      emend => emend,
      g_pwm => g_pwm,
      g_pwm_1 => g_pwm_1,
      g_pwm_2 => g_pwm_2,
      gpio_rtl_tri_o(4 downto 0) => gpio_rtl_tri_o(4 downto 0),
      pwm_a_l => pwm_a_l,
      pwm_b_l => pwm_b_l,
      r_pwm => r_pwm,
      r_pwm_1 => r_pwm_1,
      r_pwm_2 => r_pwm_2
    );
end STRUCTURE;
