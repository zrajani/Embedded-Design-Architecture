--------------------------------------------------------------------------------
-- Created by :   ZAIN RAJANI
-- Create Date:   16:14:34 10/13/2019 
-- Module Name:   C:/windows/system32/bcd_7_segment/tb_7_seg.vhd
-- Project Name:  bcd_7_segment
-- VHDL Test Bench Created by ISE for module: bcd_7seg
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
 
ENTITY tb_seven_segment IS
END tb_seven_segment;
 
ARCHITECTURE behavior OF tb_seven_segment IS
-- Component Declaration for the Unit Under Test (UUT)
COMPONENT seven_segment
PORT(B : IN std_logic_vector(0 to 3);S : OUT std_logic_vector(0 to 6));
END COMPONENT;

signal B : std_logic_vector(0 to 3) := (others => '0'); --Inputs

signal S : std_logic_vector(0 to 6);  --Outputs
 
begin
-- Instantiate the Unit Under Test (UUT)
uut: seven_segment PORT MAP (B => B,S => S);
 
-- Stimulus process
   stim_proc: process
   begin        
        for i in 0 to 15 loop
            B <= conv_std_logic_vector(i,4);
            wait for 50 ns;
        end loop;
      wait;
   end process;
END;
