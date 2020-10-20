library ieee;
use ieee.std_logic_1164.all;

entity decodificador is
    generic(
        addrwidth : natural := 10
    );

    port(

        addr : in std_logic_vector((addrwidth-1) downto 0);

        habilitaHex : out std_logic_vector(5 downto 0);

        tictac_r : out std_logic;
        tictac_z : out std_logic


    );

end entity;



architecture comportamento of decodificador is

    begin
        habilitaHex <= "000001" WHEN addr = "0000000000" ELSE -- HEX0
		               "000010" WHEN addr = "0000000001" ELSE -- HEX1
		               "000100" WHEN addr = "0000000010" ELSE -- HEX2
		               "001000" WHEN addr = "0000000011" ELSE -- HEX3
		               "010000" WHEN addr = "0000000100" ELSE -- HEX4
		               "100000" WHEN addr = "0000000101" ELSE -- HEX5
                       "000000";
                       
        tictac_z    <= '1' WHEN addr = "0000000110" else '0';
        
        tictac_r    <= '1' WHEN addr = "0000000111" else '0';

end architecture;