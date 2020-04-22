--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Sun Apr 19 13:40:25 2020
--Host        : Donald running 64-bit major release  (build 9200)
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
    Boutons_tri_io : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    INT_NIC100 : in STD_LOGIC_VECTOR ( 0 to 0 );
    LEDS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Pmod_NIC100_io0_io : inout STD_LOGIC;
    Pmod_NIC100_io1_io : inout STD_LOGIC;
    Pmod_NIC100_sck_io : inout STD_LOGIC;
    Pmod_NIC100_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    i_pot : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_SSD : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    INT_NIC100 : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_pot : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_SSD : out STD_LOGIC_VECTOR ( 7 downto 0 );
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    Pmod_NIC100_io0_i : in STD_LOGIC;
    Pmod_NIC100_io0_o : out STD_LOGIC;
    Pmod_NIC100_io0_t : out STD_LOGIC;
    Pmod_NIC100_io1_i : in STD_LOGIC;
    Pmod_NIC100_io1_o : out STD_LOGIC;
    Pmod_NIC100_io1_t : out STD_LOGIC;
    Pmod_NIC100_sck_i : in STD_LOGIC;
    Pmod_NIC100_sck_o : out STD_LOGIC;
    Pmod_NIC100_sck_t : out STD_LOGIC;
    Pmod_NIC100_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    Pmod_NIC100_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    Pmod_NIC100_ss_t : out STD_LOGIC;
    Boutons_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Boutons_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Boutons_tri_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    LEDS : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal Boutons_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Boutons_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal Boutons_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal Boutons_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal Boutons_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Boutons_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal Boutons_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal Boutons_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal Boutons_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Boutons_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal Boutons_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal Boutons_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal Boutons_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Boutons_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal Boutons_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal Boutons_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal Pmod_NIC100_io0_i : STD_LOGIC;
  signal Pmod_NIC100_io0_o : STD_LOGIC;
  signal Pmod_NIC100_io0_t : STD_LOGIC;
  signal Pmod_NIC100_io1_i : STD_LOGIC;
  signal Pmod_NIC100_io1_o : STD_LOGIC;
  signal Pmod_NIC100_io1_t : STD_LOGIC;
  signal Pmod_NIC100_sck_i : STD_LOGIC;
  signal Pmod_NIC100_sck_o : STD_LOGIC;
  signal Pmod_NIC100_sck_t : STD_LOGIC;
  signal Pmod_NIC100_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Pmod_NIC100_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Pmod_NIC100_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Pmod_NIC100_ss_t : STD_LOGIC;
begin
Boutons_tri_iobuf_0: component IOBUF
     port map (
      I => Boutons_tri_o_0(0),
      IO => Boutons_tri_io(0),
      O => Boutons_tri_i_0(0),
      T => Boutons_tri_t_0(0)
    );
Boutons_tri_iobuf_1: component IOBUF
     port map (
      I => Boutons_tri_o_1(1),
      IO => Boutons_tri_io(1),
      O => Boutons_tri_i_1(1),
      T => Boutons_tri_t_1(1)
    );
Boutons_tri_iobuf_2: component IOBUF
     port map (
      I => Boutons_tri_o_2(2),
      IO => Boutons_tri_io(2),
      O => Boutons_tri_i_2(2),
      T => Boutons_tri_t_2(2)
    );
Boutons_tri_iobuf_3: component IOBUF
     port map (
      I => Boutons_tri_o_3(3),
      IO => Boutons_tri_io(3),
      O => Boutons_tri_i_3(3),
      T => Boutons_tri_t_3(3)
    );
Pmod_NIC100_io0_iobuf: component IOBUF
     port map (
      I => Pmod_NIC100_io0_o,
      IO => Pmod_NIC100_io0_io,
      O => Pmod_NIC100_io0_i,
      T => Pmod_NIC100_io0_t
    );
Pmod_NIC100_io1_iobuf: component IOBUF
     port map (
      I => Pmod_NIC100_io1_o,
      IO => Pmod_NIC100_io1_io,
      O => Pmod_NIC100_io1_i,
      T => Pmod_NIC100_io1_t
    );
Pmod_NIC100_sck_iobuf: component IOBUF
     port map (
      I => Pmod_NIC100_sck_o,
      IO => Pmod_NIC100_sck_io,
      O => Pmod_NIC100_sck_i,
      T => Pmod_NIC100_sck_t
    );
Pmod_NIC100_ss_iobuf_0: component IOBUF
     port map (
      I => Pmod_NIC100_ss_o_0(0),
      IO => Pmod_NIC100_ss_io(0),
      O => Pmod_NIC100_ss_i_0(0),
      T => Pmod_NIC100_ss_t
    );
design_1_i: component design_1
     port map (
      Boutons_tri_i(3) => Boutons_tri_i_3(3),
      Boutons_tri_i(2) => Boutons_tri_i_2(2),
      Boutons_tri_i(1) => Boutons_tri_i_1(1),
      Boutons_tri_i(0) => Boutons_tri_i_0(0),
      Boutons_tri_o(3) => Boutons_tri_o_3(3),
      Boutons_tri_o(2) => Boutons_tri_o_2(2),
      Boutons_tri_o(1) => Boutons_tri_o_1(1),
      Boutons_tri_o(0) => Boutons_tri_o_0(0),
      Boutons_tri_t(3) => Boutons_tri_t_3(3),
      Boutons_tri_t(2) => Boutons_tri_t_2(2),
      Boutons_tri_t(1) => Boutons_tri_t_1(1),
      Boutons_tri_t(0) => Boutons_tri_t_0(0),
      INT_NIC100(0) => INT_NIC100(0),
      LEDS(3 downto 0) => LEDS(3 downto 0),
      Pmod_NIC100_io0_i => Pmod_NIC100_io0_i,
      Pmod_NIC100_io0_o => Pmod_NIC100_io0_o,
      Pmod_NIC100_io0_t => Pmod_NIC100_io0_t,
      Pmod_NIC100_io1_i => Pmod_NIC100_io1_i,
      Pmod_NIC100_io1_o => Pmod_NIC100_io1_o,
      Pmod_NIC100_io1_t => Pmod_NIC100_io1_t,
      Pmod_NIC100_sck_i => Pmod_NIC100_sck_i,
      Pmod_NIC100_sck_o => Pmod_NIC100_sck_o,
      Pmod_NIC100_sck_t => Pmod_NIC100_sck_t,
      Pmod_NIC100_ss_i(0) => Pmod_NIC100_ss_i_0(0),
      Pmod_NIC100_ss_o(0) => Pmod_NIC100_ss_o_0(0),
      Pmod_NIC100_ss_t => Pmod_NIC100_ss_t,
      UART_rxd => UART_rxd,
      UART_txd => UART_txd,
      i_pot(7 downto 0) => i_pot(7 downto 0),
      o_SSD(7 downto 0) => o_SSD(7 downto 0),
      reset => reset,
      sys_clock => sys_clock
    );
end STRUCTURE;
