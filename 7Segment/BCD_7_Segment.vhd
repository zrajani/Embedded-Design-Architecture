----------------------------------------------------------------------------------
-- Create Date:    17:30:32 10/09/2019 
-- Design Name:    7 SEGMENT DISPLAY CODE
-- Author Name:    Zain Rajani
-- Code Description:
--	      BCD Number 	A	B	C	D	E	F	G
--		0000
--		0001	
--		0010
-- Module Name:    bcd_7seg - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity bcd_7segment is
port ( B : in STD_LOGIC_VECTOR (0 to 3);
		 S : out STD_LOGIC_VECTOR (0 to 6));
end bcd_7segment;
 
architecture Behavioral of bcd_7segment is
 
begin
S(6)<= (B(0) OR (B(1) AND NOT B(2)) OR ( NOT B(1) AND B(2)) OR (B(2) AND NOT B(3)));
S(5)<= (B(0) OR (NOT B(2) AND NOT B(3)) OR (B(1) AND NOT B(2)) OR (B(1) AND NOT B(3)));
S(4)<= ((NOT B(1) AND NOT B(3)) OR (B(2) AND NOT B(3)));
S(3)<= ((NOT B(1) AND NOT B(3)) OR (B(2) AND NOT B(3)) OR (B(1) AND NOT B(2) AND B(3)) OR (NOT B(1) AND B(2)) OR B(0));
S(2)<= (B(1) OR (NOT B(2)) OR B(3));
S(1)<= ((NOT B(1)) OR (NOT B(2) AND NOT B(3)) OR (B(2) AND B(3))); 
S(0)<= (B(0) OR B(2) OR (B(1) AND B(3)) OR ((NOT B(1)) AND (NOT B(3))));
end Behavioral;
