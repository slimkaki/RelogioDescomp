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
        CLOCK : IN std_logic;
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
        -- jl  : 0101
        -- jle : 0110
        -- jmp : 0111
    begin
        process (CLOCK) is
            begin
            if (opCode = add) then
                selOperacaoULA <= soma;
            
            elsif (opCode = subt or opCode = je or opCode = jl or opCode = jle) then
                selOperacaoULA <= subtracao;
           
            elsif (opCode = mov) then
                selOperacaoULA <= entradaA;
           
            elsif (opCode = inv) then
                selOperacaoULA <= op_not;
           
            else
                selOperacaoULA <= "000";
           
            end if;

        end process;
        
        selMuxJump              <= '1' WHEN opCode = je or opCode = jl or opCode = jle or opCode = jmp else '0'; -- instruções de ativação do MUX Jump
        selMuxULAImed           <= '1' WHEN opCode = mov or opCode = add or opCode = subt or opCode = inc or opCode = je or opCode = jl or opCode = jle else '0' ;-- Para inst        anciar, a atribuição 
        selMuxImed              <= '1' WHEN opCode = lea else '0';
        habEscritaReg           <= '1' WHEN opCode = lea or opCode = mov or opCode = add or opCode = subt or opCode = inc else '0';
        
        HabLeituraMEM           <= '1' WHEN opCode = load else '0';
        HabEscritaMEM       <= '1' WHEN opCode = store else '0';
            -- de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)

end architecture;
