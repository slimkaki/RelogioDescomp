LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY leds IS
    PORT (
        -- Input ports
        inLED : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        -- Output ports
        saidaLED : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF leds IS
 

    
    BEGIN

        saidaLED <= "1111111111" WHEN inLED = "00000001" ELSE 
					"0000000000" WHEN inLED = "00000000" ELSE
					"1010101010"; 

END ARCHITECTURE;