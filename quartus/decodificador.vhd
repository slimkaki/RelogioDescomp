library ieee;
use ieee.std_logic_1164.all;

entity decodificador is
    generic map (
        addrwidth := 10
    );

    port map (

        addr : in std_logic_vector((addrwidth-1) downto 0);

        habilitaHex : out std_logic_vector(5 downto 0);

    );

end entity;



architecture comportamento of decodificador is

    habilitaHex(0) <= '1' WHEN addr = "0000000001" else '0';

    begin
        

end architecture;