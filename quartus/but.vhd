LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY but IS
    GENERIC (
        addr : NATURAL := 4
    );

    PORT (
        buts : IN STD_LOGIC_VECTOR(addr - 1 DOWNTO 0);
        habilitaUC : IN STD_LOGIC;
        habilitaDC : IN STD_LOGIC;
        dataout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF but IS


BEGIN

    dataout <= "0000"&buts WHEN habilitaUC = '1' AND habilitaDC = '1' ELSE
        "ZZZZZZZZ";

END ARCHITECTURE;