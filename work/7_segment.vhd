library ieee;
use ieee.std_logic_1164.all;




Entity seven_segment is
	
	port(a: in std_logic_vector (3 downto 0);
   f :out std_logic_vector (6 downto 0)
	);
	
End seven_segment;

Architecture arch_seven_segment of seven_segment IS
	

begin 

	WITH a SELECT 
	
	f <= "1000000"  WHEN "0000",
	"1111001" WHEN "0001",
	"0100100" WHEN "0010",
	"0110000" WHEN "0011",
	"0011001" WHEN "0100",
	"0010010" WHEN "0101",
	"0000010" WHEN "0110",
	"1111000" WHEN "0111",
	"0000000" WHEN "1000",
	"0010000" WHEN "1001",
	"1111111" WHEN OTHERS;
	


end arch_seven_segment;

library ieee;
use ieee.std_logic_1164.all;


PACKAGE seven_segment_pkg IS

COMPONENT seven_segment
PORT(a: in std_logic_vector (3 downto 0);
   f :out std_logic_vector (6 downto 0)
	);
	
END COMPONENT;

END seven_segment_pkg;