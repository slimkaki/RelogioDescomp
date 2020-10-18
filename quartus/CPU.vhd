library ieee;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPU is
    port (
        CLOCK_50                :  in STD_LOGIC;
        barramentoDadosEntrada  :  in  STD_LOGIC_VECTOR(9 downto 0);
        barramentoDadosSaida    :  out STD_LOGIC_VECTOR(9 downto 0);
        barramentoEndSaida      :  out STD_LOGIC_VECTOR(9 downto 0)
    );
end entity;

architecture comportamento of CPU is

    signal palavraControle : std_logic_vector(8 downto 0);
    signal opCode : std_logic_vector(3 downto 0);
    signal flagZero, flagL : std_logic;
    
    begin
        -- FLUXO DE DADOS
        FD : entity work.fluxo_de_dados port map(CLOCK_50 => CLOCK_50,
                                                 palavraControle => palavraControle,
                                                 barramentoDadosEntrada => barramentoDadosEntrada,
                                                 opCode => opCode,
                                                 barramentoDadosSaida => barramentoDadosSaida,
                                                 barramentoEndSaida => barramentoEndSaida,
                                                 flagZero => flagZero,
                                                 flagL => flagL);
        
        -- UNIDADE DE CONTROLE
        UC : entity work.UnidadeControle port map(CLOCK_50 => CLOCK_50,
                                                  opCode => opCode,
                                                  flagZero => flagZero,
                                                  flagL => flagL,
                                                  palavraControle => palavraControle);

end architecture;