LIBRARY IEEE;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

use work.seven_segment_pkg.all;
use work.motor_driver_pkg.all;




entity DSD is
  port (
    a, clk: in std_logic;
	 digit0Out, digit1Out, digit2Out, digit3Out, digit4Out :out std_logic_vector (6 downto 0);
	 
	 f, pwm: out std_logic
  );
end entity DSD;


architecture MyArchitecture of DSD is
  
  
  signal carCountSignal : INTEGER := 1;

  
  signal digit0Bin : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
  signal digit1Bin : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
  signal digit2Bin : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
  signal digit3Bin : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
  signal digit4Bin : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
  
begin
  
   f <= a;
	
  
	
	digit0: seven_segment PORT MAP (digit0Bin, digit0Out);
	digit1: seven_segment PORT MAP (digit1Bin, digit1Out);
	digit2: seven_segment PORT MAP (digit2Bin, digit2Out);
	digit3: seven_segment PORT MAP (digit3Bin, digit3Out);
	digit4: seven_segment PORT MAP (digit4Bin, digit4Out);
	
	motorStage: motor_driver PORT MAP (a,clk,pwm);
	
	
	
	process(a) is
	begin
	
	IF a = '1' THEN 
		carCountSignal <= carCountSignal + 1; 
		
		digit0Bin <= std_logic_vector(to_unsigned((carCountSignal mod 10), digit0Bin'length)); 
		
		digit1Bin <= std_logic_vector(to_unsigned((carCountSignal / 10 mod 10), digit1Bin'length));
	
		digit2Bin <= std_logic_vector(to_unsigned((carCountSignal / 100 mod 10), digit2Bin'length)); 
		
		digit3Bin <= std_logic_vector(to_unsigned((carCountSignal / 1000 mod 10), digit3Bin'length)); 
		
		digit4Bin <= std_logic_vector(to_unsigned((carCountSignal / 10000 mod 10), digit4Bin'length)); 
		
	ELSE END IF;
  

	
	
	
	 
	end process;

	 
  

  
  

end architecture MyArchitecture;
