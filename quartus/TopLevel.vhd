library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TopLevel is
    port(
        SW  : in STD_LOGIC_VECTOR(4 downto 0); -- Usaremos 5 switches
        KEY : in STD_LOGIC_VECTOR(3 downto 0); -- Usaremos os 4 botões
        CLOCK_50 : in STD_LOGIC;               -- Clock 50 MHz
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out STD_LOGIC_VECTOR(6 downto 0);
        LED : out STD_LOGIC_VECTOR(9 downto 0) -- Por fim, teremos os 10 LEDs
    );
end entity;

architecture funcionamento of TopLevel is
    signal barramentoDadosEntrada : std_logic_vector(9 downto 0);
    signal barramentoDadosSaida   : std_logic_vector(9 downto 0);
    signal barramentoEndSaida     : std_logic_vector(9 downto 0);

    signal tic_tac : std_logic;
    begin
        -- CPU
        Processador : entity work.CPU port map(barramentoDadosEntrada => barramentoDadosEntrada,
                                               barramentoDadosSaida   => barramentoDadosSaida,
                                               barramentoEndSaida     => barramentoEndSaida);

        -- Base de Tempo
        -- A cada 1 segundo avisa que passou o segundo, mudando o sinal de saida `tic_tac`
        TICTAC :  entity work.divisorGenerico generic map (divisor => 50000000)   -- divide por 10.
                                           port map (clk => CLOCK_50, saida_clk => tic_tac);


        -- Periféricos
        IO : entity work.IO_TIMER port map (clk => CLOCK_50,
                                            HEX0 => HEX0, HEX1 => HEX1, HEX2 => HEX2, 
                                            HEX3 => HEX3, HEX4 => HEX4, HEX5 => HEX5,
                                            SW => SW,
                                            KEY => KEY);
        
        
end architecture;