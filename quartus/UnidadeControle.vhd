LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.constants.ALL;

ENTITY UnidadeControle IS
    GENERIC (
        DATA_WIDTH : NATURAL := 8;
        ADDR_WIDTH : NATURAL := 8
    );

    PORT (
        -- Input ports
        CLOCK_50 : IN std_logic;
        opCode : IN std_logic_vector(3 DOWNTO 0);

        flagZero : IN std_logic;
        flagL : IN std_logic;

        palavraControle : OUT std_logic_vector(8 DOWNTO 0)
    );

END ENTITY;
ARCHITECTURE comportamento OF UnidadeControle IS

    alias selMuxJump           : std_logic is palavraControle(8);
    alias selMuxULAImed        : std_logic is palavraControle(7); 
    alias selMuxImed           : std_logic is palavraControle(6); 
    alias habEscritaReg        : std_logic is palavraControle(5);
    alias selOperacaoULA       : std_logic_vector(2 downto 0) is palavraControle(4 downto 2);
    alias habLeituraMEM        : std_logic is palavraControle(1);
    alias habEscritaMEM        : std_logic is palavraControle(0);

BEGIN
    PROCESS (CLOCK_50) IS
    BEGIN
        IF (opCode = add) THEN
            selOperacaoULA <= soma;
        ELSIF (opCode = sub OR opCode = je OR opCode = jl OR opCode = jle) THEN
            selOperacaoULA <= subtracao;
        ELSIF (opCode = mov) THEN
            selOperacaoULA <= entradaA;
        ELSE
            selOperacaoULA <= "000";
        END IF;

    END PROCESS;

    selMuxJump <= '1' WHEN opCode = je OR opCode = jl OR opCode = jle OR opCode = jmp ELSE
        '0'; -- instruções de ativação do MUX Jump
    selMuxULAImed <= '1' WHEN opCode = mov OR opCode = add OR opCode = sub OR opCode = inc OR opCode = je OR opCode = jl OR opCode = jle ELSE
        '0';-- Para inst        anciar, a atribuição 
    selMuxImed <= '1' WHEN opCode = lea ELSE
        '0';
    habEscritaReg <= '1' WHEN opCode = lea OR opCode = mov OR opCode = add OR opCode = sub OR opCode = inc ELSE
        '0';
    HabLeituraMemoria <= '0' ;
    HabEscritaMemoria <= '0' ;
    -- de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)

END ARCHITECTURE;