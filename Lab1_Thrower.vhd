----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Ashley Thrower
-- 
-- Create Date:    10:44:07 02/10/2014 
-- Design Name:    Twos complement converter
-- Module Name:    Lab1_Thrower - Behavioral 
-- Project Name: 	Lab 1
-- Target Devices: Nexys
-- Tool versions: 2
-- Description: Twos complement converter
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab1_Thrower is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end Lab1_Thrower;

architecture Behavioral of Lab1_Thrower is

signal B_NOT, C_NOT, D, E, F, G, H : std_logic;

begin

B_NOT <= not B;
C_NOT <= not C;
D <= not A and E;
E <= C or B;
F <= A and B_NOT and C_NOT;
X <= D or F;
G <= B and C_NOT;
H <= B_NOT and C;
Y <= G or H;
Z <= C;

end Behavioral;


