LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY sw IS
    GENERIC (
        addr : NATURAL := 8
    );

    PORT (
        sw : IN STD_LOGIC_VECTOR(addr - 1 DOWNTO 0);
        habilitaUC : IN STD_LOGIC;
        habilitaDC : IN STD_LOGIC;
        dataout : OUT STD_LOGIC_VECTOR(addr - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF sw IS


BEGIN

    dataout <= sw WHEN habilitaUC = '1' AND habilitaDC = '1' ELSE
        "ZZZZZZZZ";

END ARCHITECTURE;