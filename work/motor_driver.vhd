LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity motor_driver is

port( motorctrl ,clk: IN std_logic; 
	pwm: OUT std_logic
);

end motor_driver;

architecture motor_driver_arch of motor_driver is
    signal cnt : INTEGER := 0;

    signal speedCtrl : INTEGER := 1070025; 

    signal angleCtrl : INTEGER := 100000;   
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if cnt < speedCtrl then
                cnt <= cnt + 1;
            else
                cnt <= 0;
					 
            end if;
        end if;
    end process;
	 
	 process(motorctrl)
	 begin
		if motorctrl = '1' THEN
			angleCtrl <= 50000;
		else
			angleCtrl <= 100000;
			
		end if;
	end process;
		
    pwm <= '1' when cnt < angleCtrl else '0';
end motor_driver_arch;

LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

PACKAGE motor_driver_pkg IS

	COMPONENT motor_driver
	port( motorctrl ,clk: IN std_logic; 
		pwm: OUT std_logic
	);
			
	END COMPONENT;

END motor_driver_pkg;
