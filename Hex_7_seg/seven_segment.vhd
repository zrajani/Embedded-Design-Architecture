----------------------------------------------------------------------------------
-- Create Date:    17:30:32 10/09/2019 
-- Design Name:    7 SEGMENT DISPLAY CODE
-- Author Name:    Zain Rajani
-- Module Name:    bcd_7seg - Behavioral 
----------------------------------------------------------------------------------
library IEEE;  -- LIBRARY IMPORT
use IEEE.STD_LOGIC_1164.ALL;
 
entity seven_segment is   -- PORT DECLARATION
port ( B : in STD_LOGIC_VECTOR (0 to 3);   -- INPUTS
		 S : out STD_LOGIC_VECTOR (0 to 6));  -- OUTPUT
end seven_segment;
 
architecture Behavioral of seven_segment is   -- DESCRIBE FUNCTIONALITY OF 7 SEGMENT LINES
 
begin
process (B)
begin
    - - case selection
    case B is
        when "0000"=> S <="0000001";  -- '0'
        when "0001"=> S <="1001111";  -- '1'
        when "0010"=> S <="0010010";  -- '2'
        when "0011"=> S <="0000110";  -- '3'
        when "0100"=> S <="1001100";  -- '4' 
        when "0101"=> S <="0100100";  -- '5'
        when "0110"=> S <="0100000";  -- '6'
        when "0111"=> S <="0001111";  -- '7'
        when "1000"=> S <="0000000";  -- '8'
        when "1001"=> S <="0000100";  -- '9'
        when "1010"=> S <="0001000";  -- 'A'
        when "1011"=> S <="1100000";  -- 'b'
        when "1100"=> S <="0110001";  -- 'C'
        when "1101"=> S <="1000010";  -- 'd'
        when "1110"=> S <="0110000";  -- 'E'
        when "1111"=> S <="0111000";  -- 'F'
        when others =>  NULL;
    end case;
end process;
end Behavioral;  -- END OF THE CODE AND ARCHITECTURE
