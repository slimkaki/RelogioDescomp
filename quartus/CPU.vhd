library ieee;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPU is
    port (
        CLOCK                   :  in STD_LOGIC;
        barramentoDadosEntrada  :  in  STD_LOGIC_VECTOR(7 downto 0);
        barramentoDadosSaida    :  out STD_LOGIC_VECTOR(7 downto 0);
        barramentoEndSaida      :  out STD_LOGIC_VECTOR(7 downto 0);

        habLeituraMEM           :  out std_logic;
        habEscritaMEM           :  out std_logic;

        entrada_A			:   out STD_LOGIC_VECTOR(7 downto 0);
        entrada_B			:   out STD_LOGIC_VECTOR(7 downto 0);
        saida_ULA           :   out STD_LOGIC_VECTOR(7 downto 0);

        pc : out std_logic_vector(7 DOWNTO 0)
        

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
                                                 flagL => flagL,
                                                 entrada_A => entrada_A,
                                                 entrada_B => entrada_B,
                                                 saida_ULA => saida_ULA,
                                                 pc => pc);
        
        -- UNIDADE DE CONTROLE
        UC : entity work.UnidadeControle port map(
            CLOCK => CLOCK,
            opCode => opCode,
            flagZero => flagZero,
            flagL => flagL,
            palavraControle => palavraControle);

end architecture;