library ieee;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity fluxo_de_dados is 
    port(
        CLOCK                   :  in  STD_LOGIC;
        palavraControle         :  in  STD_LOGIC_VECTOR(8 downto 0);
        barramentoDadosEntrada  :  in  STD_LOGIC_VECTOR(9 downto 0);

        opCode                  :  out STD_LOGIC_VECTOR(3 downto 0);
        barramentoDadosSaida    :  out STD_LOGIC_VECTOR(9 downto 0);
        barramentoEndSaida      :  out STD_LOGIC_VECTOR(9 downto 0);

        flagZero                :  out std_logic;
        flagL                   :  out std_logic
    );

end entity;

architecture funcionamento of fluxo_de_dados is
    SIGNAL instruc : STD_LOGIC_VECTOR(25 downto 0);
    --SIGNAL flagZero, flagL : STD_LOGIC := '0'; 
    SIGNAL Mux1Out, Mux2Out, ULAout, dadoRC, dadoRB : STD_LOGIC_VECTOR(9 downto 0); -- saida fetch

    alias selMuxJump           : std_logic is palavraControle(8);
    alias selMuxULAImed        : std_logic is palavraControle(7); 
    alias selMuxImed           : std_logic is palavraControle(6); 
    alias habEscritaReg        : std_logic is palavraControle(5);
    alias selOperacaoULA       : std_logic_vector(2 downto 0) is palavraControle(4 downto 2);
    alias habLeituraMEM        : std_logic is palavraControle(1);
    alias habEscritaMEM        : std_logic is palavraControle(0);

    alias RA                   : std_logic_vector(3 downto 0) is instruc(21 downto 18);
    alias RB                   : std_logic_vector(3 downto 0) is instruc(17 downto 14);
    alias RC                   : std_logic_vector(3 downto 0) is instruc(13 downto 10);

    alias imediato             : std_logic_vector(9 downto 0) is instruc(9 downto 0);

    begin

        opCode               <= instruc(25 downto 22);
        barramentoDadosSaida <= dadoRB;
        barramentoEndSaida   <= instruc(9 downto 0);

        FETCH : entity work.fetch port map (selMux => selMuxJump,
                                            CLK  => CLOCK,
                                            endROM => instruc(9 downto 0),
                                            instruction => instruc); 
        
        MUX_imed_ram : entity work.muxGenerico2x1 generic map (larguraDados => 10)         
                                                  port map (entradaA_MUX => barramentoDadosEntrada,
                                                            entradaB_MUX => imediato,
                                                            seletor_MUX => selMuxImed,
                                                            saida_MUX => Mux1Out);
        
        MUX_ULA : entity work.muxGenerico2x1 generic map (larguraDados => 10)         
                                             port map (entradaA_MUX => Mux1Out,
                                                       entradaB_MUX => ULAout,
                                                       seletor_MUX => selMuxULAImed,
                                                       saida_MUX => Mux2Out);
                
        BancoReg : entity work.bancoReg port map (CLOCK     => CLOCK,
                                                  enderecoA => RA,
                                                  enderecoB => RB,
                                                  enderecoC => RC,
                                                  dadoEscritaA => Mux2Out,
                                                  escreveA => habEscritaReg,
                                                  saidaA => dadoRC,
                                                  saidaB  => dadoRB);

        ULA : entity work.ULA generic map(larguraDados => 10)
                              port map(entradaA => dadoRC,
                                       entradaB => dadoRB,
                                       seletor => selOperacaoULA,
                                       saida => ULAout,
                                       flagZero => flagZero,
                                       flagL => flagL);
        

end architecture;