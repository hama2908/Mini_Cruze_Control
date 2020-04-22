-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Feb 10 12:26:11 2020
-- Host        : Bougalou running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/jbm/Desktop/S4e-APP6-Vivado_2019/APP6/APP6.srcs/sources_1/bd/design_1/ip/design_1_mux32_0_0/design_1_mux32_0_0_stub.vhdl
-- Design      : design_1_mux32_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_mux32_0_0 is
  Port ( 
    in1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    out1 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_mux32_0_0;

architecture stub of design_1_mux32_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in1[31:0],CLK,out1[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mux32,Vivado 2019.1";
begin
end;
