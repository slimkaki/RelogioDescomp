library ieee;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPU is
    port (
        CLOCK                   :  in STD_LOGIC;
        barramentoDadosEntrada  :  in  STD_LOGIC_VECTOR(9 downto 0);
        barramentoDadosSaida    :  out STD_LOGIC_VECTOR(9 downto 0);
        barramentoEndSaida      :  out STD_LOGIC_VECTOR(9 downto 0);

        habLeituraMEM           :  out std_logic;
        habEscritaMEM           :  out std_logic
        

    );
end entity;

architecture comportamento of CPU is

    signal palavraControle : std_logic_vector(8 downto 0);
    signal opCode : std_logic_vector(3 downto 0);
    signal flagZero, flagL : std_logic;

    begin

        habLeituraMEM <= palavraControle(1);
        habEscritaMEM <= palavraControle(0);

        -- FLUXO DE DADOS
        FD : entity work.fluxo_de_dados port map(CLOCK => CLOCK,
                                                 palavraControle => palavraControle,
                                                 barramentoDadosEntrada => barramentoDadosEntrada,
                                                 opCode => opCode,
                                                 barramentoDadosSaida => barramentoDadosSaida,
                                                 barramentoEndSaida => barramentoEndSaida,
                                                 flagZero => flagZero,
                                                 flagL => flagL);
        
        -- UNIDADE DE CONTROLE
        UC : entity work.UnidadeControle port map(
            CLOCK => CLOCK,
            opCode => opCode,
            flagZero => flagZero,
            flagL => flagL,
            palavraControle => palavraControle);

end architecture;