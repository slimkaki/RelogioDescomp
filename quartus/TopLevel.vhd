library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TopLevel is
    generic ();
    port(
        SW  : in STD_LOGIC_VECTOR(4 downto 0); -- Usaremos 5 switches
        KEY : in STD_LOGIC_VECTOR(3 downto 0); -- Usaremos os 4 botões
        CLOCK_50 : in STD_LOGIC;               -- Clock 50 MHz
        LED : out STD_LOGIC_VECTOR(9 downto 0) -- Por fim, teremos os 10 LEDs
    );
end entity;

architecture funcionamento of TopLevel is
    begin
        HEX : entity work.conversorHex7seg port map(dadoHex => sinalLocal, -- dadoHex => valor no barramento
                                       apaga  => sinalLocal,               -- apaga => '0'
                                       negativo => sinalLocal,             -- negativo => '0'
                                       overFlow =>  sinalLocal,            -- overFlow => 
                                       saida7seg => sinalLocal);           -- 
        
        
end architecture;