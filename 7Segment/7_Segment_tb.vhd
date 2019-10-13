--------------------------------------------------------------------------------
-- Created by :   ZAIN RAJANI
-- Create Date:   16:14:34 10/13/2019 
-- Module Name:   C:/windows/system32/bcd_7_segment/tb_7_seg.vhd
-- Project Name:  bcd_7_segment
-- VHDL Test Bench Created by ISE for module: bcd_7seg
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_bcd_7seg IS
END tb_bcd_7seg;
 
ARCHITECTURE behavior OF tb_bcd_7seg IS 
-- Component Declaration for the Unit Under Test (UUT)
COMPONENT bcd_7segment
PORT(
B : IN std_logic_vector(0 to 3);
S : OUT std_logic_vector(0 to 6));
END COMPONENT;
--Inputs
signal B : std_logic_vector(0 to 3) := (others => '0'); 
--Outputs
signal S : std_logic_vector(0 to 6);
BEGIN
-- Instantiate the Unit Under Test (UUT)
uut: bcd_7segment PORT MAP (B => B, S => S );

stim_proc: process
begin
B <= "0000"; wait for 100 ns;
B <= "0001"; wait for 100 ns;
B <= "0010"; wait for 100 ns;
B <= "0011"; wait for 100 ns;
B <= "0100"; wait for 100 ns;
B <= "0101"; wait for 100 ns;
B <= "0110"; wait for 100 ns;
B <= "0111"; wait for 100 ns;
B <= "1000"; wait for 100 ns;
B <= "1001"; wait for 100 ns;
end process; 
END;
