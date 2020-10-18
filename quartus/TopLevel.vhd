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

    signal negativo, overflow, apaga : std_logic := '0'; -- Não precisaremos de sinal negativo ou overflow
    signal saidaHex0, saidaHex1, saidaHex2 : std_logic_vector(6 downto 0);
    signal saidaHex3, saidaHex4, saidaHex5 : std_logic_vector(6 downto 0);
    begin
        -- CPU
        Processador : entity work.CPU port map(barramentoDadosEntrada => barramentoDadosEntrada,
                                               barramentoDadosSaida   => barramentoDadosSaida,
                                               barramentoEndSaida     => barramentoEndSaida);

        -- Periféricos 
        -- Desenha saída no Hex de 7 segmentos
        showHEX0 : entity work.conversorHex7seg port map(dadoHex => sinalLocal, -- dadoHex => valor no barramento
                                                    apaga  => apaga,          -- apaga => '0'
                                                    negativo => negativo,     -- negativo => '0'
                                                    overFlow =>  overflow,    -- overFlow => '0'
                                                    saida7seg => saidaHex0);   -- 
        HEX0 <= saidaHex0;

        showHEX1 : entity work.conversorHex7seg port map(dadoHex => sinalLocal,      -- dadoHex => valor no barramento
                                                    apaga  => apaga,          -- apaga => '0'
                                                    negativo => negativo,     -- negativo => '0'
                                                    overFlow =>  overflow,    -- overFlow => '0'
                                                    saida7seg => saidaHex1);  
        HEX1 <= saidaHex1;

        showHEX2 : entity work.conversorHex7seg port map(dadoHex => sinalLocal,      -- dadoHex => valor no barramento
                                                    apaga  => apaga,          -- apaga => '0'
                                                    negativo => negativo,     -- negativo => '0'
                                                    overFlow =>  overflow,    -- overFlow => '0'
                                                    saida7seg => saidaHex2);
        HEX2 <= saidaHex2;

        showHEX3 : entity work.conversorHex7seg port map(dadoHex => sinalLocal,      -- dadoHex => valor no barramento
                                                    apaga  => apaga,          -- apaga => '0'
                                                    negativo => negativo,     -- negativo => '0'
                                                    overFlow =>  overflow,    -- overFlow => '0'
                                                    saida7seg => saidaHex3);
        HEX3 <= saidaHex3;

        showHEX4 : entity work.conversorHex7seg port map(dadoHex => sinalLocal,      -- dadoHex => valor no barramento
                                                    apaga  => apaga,          -- apaga => '0'
                                                    negativo => negativo,     -- negativo => '0'
                                                    overFlow =>  overflow,    -- overFlow => '0'
                                                    saida7seg => saidaHex4);
        HEX4 <= saidaHex4;

        showHEX5 : entity work.conversorHex7seg port map(dadoHex => sinalLocal,      -- dadoHex => valor no barramento
                                                    apaga  => apaga,          -- apaga => '0'
                                                    negativo => negativo,     -- negativo => '0'
                                                    overFlow =>  overflow,    -- overFlow => '0'
                                                    saida7seg => saidaHex5);
        HEX5 <= saidaHex5;
        
end architecture;