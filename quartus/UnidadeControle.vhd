LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Unidade_Controle IS
    GENERIC (
        DATA_WIDTH : NATURAL := 8;
        ADDR_WIDTH : NATURAL := 8
    );

    PORT (
        -- Input ports
        clk : IN std_logic;
        opCode : IN std_logic_vector(3 DOWNTO 0);

        -- Output ports
        palavraControle : OUT std_logic_vector(7 DOWNTO 0)
    );
END ENTITY;
ARCHITECTURE arch_name OF Unidade_Controle IS
    ALIAS selMuxProxPC : std_logic IS palavraControle(7);
    -- alias selMuxULAImed        : std_logic is palavraControle(6);
    -- alias HabEscritaAcumulador : std_logic is palavraControle(5);
    -- alias selOperacaoULA : std_logic_vector(2 downto 0) is palavraControle(4 downto 2);
    -- alias habLeituraMEM : std_logic is palavraControle(1);
    -- alias habEscritaMEM : std_logic is palavraControle(0);

    BEGIN
        -- je  : 0100
        -- jl  : 0101
        -- jle : 0110
        -- jmp : 0111
        selMuxProxPC <= '1' WHEN opCode = "0101" OR opCode = "0100" OR opCode = "0110" OR opCode = "0111" else '0'; -- instruções de jump
            -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
            -- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
            --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);

END ARCHITECTURE;