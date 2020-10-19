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
        habilitaHex(2) <= '1' WHEN addr = "0000000001" else '0';

end architecture;