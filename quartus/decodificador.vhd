library ieee;
use ieee.std_logic_1164.all;

entity decodificador is
    generic(
        addrwidth : natural := 8
    );

    port(

        addr : in std_logic_vector((addrwidth-1) downto 0);

        habilitaHex : out std_logic_vector(5 downto 0);

        enableSW : out std_logic;
        enableBut : out std_logic;

        tictac_leitura : out std_logic;
        tictac_zera : out std_logic;

        tictac_leitura_fast : out std_logic;
        tictac_zera_fast : out std_logic;

        enableLed : out std_logic


    );

end entity;



architecture comportamento of decodificador is

    begin
        habilitaHex <= "000001" WHEN addr = "00000000" ELSE -- HEX0
		               "000010" WHEN addr = "00000001" ELSE -- HEX1
		               "000100" WHEN addr = "00000010" ELSE -- HEX2
		               "001000" WHEN addr = "00000011" ELSE -- HEX3
		               "010000" WHEN addr = "00000100" ELSE -- HEX4
		               "100000" WHEN addr = "00000101" ELSE -- HEX5
                       "000000";

        
        tictac_zera          <= '1' WHEN addr = "00000110" else '0';
        
        tictac_leitura       <= '1' WHEN addr = "00000111" else '0';
        
        enableSW             <= '1' WHEN addr = "00001000" else '0';

        tictac_zera_fast     <= '1' WHEN addr = "00001001" else '0';
        
        tictac_leitura_fast  <= '1' WHEN addr = "00001010" else '0';

        enableBut            <= '1' WHEN addr = "00001011" else '0';

        enableLed            <= '1' WHEN addr = "00001100" else '0';

end architecture;