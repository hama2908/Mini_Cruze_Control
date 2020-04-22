----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.03.2019 17:24:53
-- Design Name: 
-- Module Name: mux32 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux32 is
    Port ( in1 : in STD_LOGIC_VECTOR (31 downto 0);
           CLK : in STD_LOGIC;
           out1 : out STD_LOGIC_VECTOR (31 downto 0));
end mux32;

architecture Behavioral of mux32 is
begin

process(CLK)
variable temp1 : STD_LOGIC_VECTOR(31 downto 0) := not(in1) + "00000000000000000000000000000001";

begin
    if CLK'EVENT and CLK='1' then
          case in1(31) is
      when '0' => out1 <= in1 ;
      when others => out1 <= temp1;
    end case;
    end if;
end process;
end Behavioral;
   