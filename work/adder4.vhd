library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

Entity adder4 is
port( a,b : in std_logic_vector(3 downto 0);
		f: out std_logic_vector(4 downto 0)
);
end adder4;

architecture adder4arch of adder4 is
begin
f <= "00000";
end adder4arch;


PACKAGE adder4_pkg IS

COMPONENT adder4
port( a,b : in std_logic_vector(3 downto 0);
		f: out std_logic_vector(4 downto 0)
);

END COMPONENT;

END adder4_pkg;