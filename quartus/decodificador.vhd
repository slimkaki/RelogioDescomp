library ieee;
use ieee.std_logic_1164.all;

entity decodificador is
    generic(
        addrwidth : natural := 10
    );

    port(

        addr : in std_logic_vector((addrwidth-1) downto 0);

        habilitaHex : out std_logic_vector(5 downto 0)

    );

end entity;



architecture comportamento of decodificador is

    begin
        habilitaHex <= "000001" WHEN addr = "0000000001" ELSE
		               "000010" WHEN addr = "0000000010" ELSE
		               "000100" WHEN addr = "0000000100" ELSE
		               "001000" WHEN addr = "0000001000" ELSE
		               "010000" WHEN addr = "0000010000" ELSE
		               "100000" WHEN addr = "0000100000" ELSE
		               "000000";

end architecture;