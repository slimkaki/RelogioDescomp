library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TopLevel is
    port(
        SW  : in STD_LOGIC_VECTOR(4 downto 0); -- Usaremos 5 switches
        KEY : in STD_LOGIC_VECTOR(3 downto 0); -- Usaremos os 4 botões
        CLOCK_50 : in STD_LOGIC;               -- Clock 50 MHz
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out STD_LOGIC_VECTOR(6 downto 0);
        LEDR : out STD_LOGIC_VECTOR(7 downto 0); -- Por fim, teremos os 10 LEDs

        entrada_A			:   out STD_LOGIC_VECTOR(7 downto 0);
        entrada_B			:   out STD_LOGIC_VECTOR(7 downto 0);
        saida_ULA           :   out STD_LOGIC_VECTOR(7 downto 0);
        tictic              :   out STD_LOGIC_VECTOR(7 downto 0);

        dataout   :  out STD_LOGIC_VECTOR(7 downto 0);
        barEndSaida     : out std_logic_vector(7 downto 0);

        tic_r : out std_logic;
        tic_z : out std_logic;

        pc : out std_logic_vector(7 DOWNTO 0)
    
    );
end entity;

architecture funcionamento of TopLevel is

    signal seg7Input0, seg7Input1, seg7Input2, seg7Input3, seg7Input4, seg7Input5 : std_logic_vector(3 downto 0);

    signal barramentoDadosEntrada : std_logic_vector(7 downto 0);
    signal barramentoDadosSaida   : std_logic_vector(7 downto 0);
    signal barramentoEndSaida     : std_logic_vector(7 downto 0);

    signal habilitaHex : std_logic_vector(5 downto 0);
    signal hab_sw      : STD_LOGIC_VECTOR(4 downto 0);
    signal hab_key     : STD_LOGIC_VECTOR(3 downto 0);

    signal tictac_zera, tictac_leitura  : std_logic;

    signal progC : std_logic_vector(7 downto 0);

    signal habEscritaMEM, habLeituraMEM : std_logic;
    begin
        
        dataout <= barramentoDadosSaida;
        tictic  <= barramentoDadosEntrada;
        barEndSaida <= barramentoEndSaida;
        tic_r <= tictac_leitura;
        tic_z <= tictac_zera;

        pc <= progC;

        -- CPU
        Processador : entity work.CPU port map(CLOCK => CLOCK_50,
                                               barramentoDadosEntrada => barramentoDadosEntrada,
                                               barramentoDadosSaida   => barramentoDadosSaida,
                                               barramentoEndSaida     => barramentoEndSaida,
                                               entrada_A => entrada_A,
                                               entrada_B => entrada_B,
                                               saida_ULA => saida_ULA,
                                               pc => progC,
                                               habLeituraMEM => habLeituraMEM,
                                               habEscritaMEM => habEscritaMEM);

        -- Base de Tempo
        -- A cada 1 segundo avisa que passou o segundo, mudando o sinal de saida `tic_tac`
        TICTAC :  entity work.divisorGenerico_e_Interface generic map (divisor => 2500000)   -- divide por 10.
                                           port map (clk => CLOCK_50,
                                                     habilitaLeitura => tictac_leitura,
                                                     limpaLeitura => tictac_zera,
                                                     leituraUmSegundo => barramentoDadosEntrada);


        -- Periféricos
        -- IO : entity work.IO_TIMER port map (clk  => CLOCK_50,
        --                                     HEX0 => HEX0, 
        --                                     HEX1 => HEX1, 
        --                                     HEX2 => HEX2, 
        --                                     HEX3 => HEX3, 
        --                                     HEX4 => HEX4, 
        --                                     HEX5 => HEX5);

        LEDR <= progC;

		SEGU : entity work.registradorGenerico_WRITE generic map (larguraDados => 4) 
                                               port map (DIN     => barramentoDadosSaida(3 downto 0),
                                                         DOUT    => seg7Input0,
                                                         ENABLE  => habilitaHex(0),
                                                         CLK     => CLOCK_50,
                                                         RST     => '0',
                                                         WR => habEscritaMEM);
																		
                                                         
        SEGD : entity work.registradorGenerico_WRITE generic map (larguraDados => 4) 
                                               port map (DIN     => barramentoDadosSaida(3 downto 0),
                                                         DOUT    => seg7Input1,
                                                         ENABLE  => habilitaHex(1),
                                                         CLK     => CLOCK_50,
                                                         RST     => '0',
                                                         WR => habEscritaMEM);
			
        MINU : entity work.registradorGenerico_WRITE generic map (larguraDados => 4) 
                                                    port map (DIN     => barramentoDadosSaida(3 downto 0),
                                                                DOUT    => seg7Input2,
                                                                ENABLE  => habilitaHex(2),
                                                                CLK     => CLOCK_50,
                                                                RST     => '0',
                                                                WR => habEscritaMEM);
                                                                
        MIND : entity work.registradorGenerico_WRITE generic map (larguraDados => 4) 
                                            port map (DIN     => barramentoDadosSaida(3 downto 0),
                                                        DOUT    => seg7Input3,
                                                        ENABLE  => habilitaHex(3),
                                                        CLK     => CLOCK_50,
                                                        RST     => '0',
                                                        WR => habEscritaMEM);
                                                                        
        HORU : entity work.registradorGenerico_WRITE generic map (larguraDados => 4) 
                                            port map (DIN     => barramentoDadosSaida(3 downto 0),
                                                        DOUT    => seg7Input4,
                                                        ENABLE  => habilitaHex(4),
                                                        CLK     => CLOCK_50,
                                                        RST     => '0',
                                                        WR => habEscritaMEM);
																			
        HORD : entity work.registradorGenerico_WRITE generic map (larguraDados => 4) 
                                               port map (DIN     => barramentoDadosSaida(3 downto 0),
                                                         DOUT    => seg7Input5,
                                                         ENABLE  => habilitaHex(5),
                                                         CLK     => CLOCK_50,
                                                         RST     => '0',
                                                         WR => habEscritaMEM);
										
																		
        showHEX0 : entity work.conversorHex7seg port map(dadoHex => seg7Input0, saida7seg => HEX0);
        showHEX1 : entity work.conversorHex7seg port map(dadoHex => seg7Input1, saida7seg => HEX1);
        showHEX2 : entity work.conversorHex7seg port map(dadoHex => seg7Input2, saida7seg => HEX2);
        showHEX3 : entity work.conversorHex7seg port map(dadoHex => seg7Input3, saida7seg => HEX3);                                            
        showHEX4 : entity work.conversorHex7seg port map(dadoHex => seg7Input4, saida7seg => HEX4);
        showHEX5 : entity work.conversorHex7seg port map(dadoHex => seg7Input5, saida7seg => HEX5);                                                 

        DECODER : entity work.decodificador port map(addr => barramentoEndSaida,
                                                     habilitaHex => habilitaHex,
                                                     tictac_leitura => tictac_leitura,
                                                     tictac_zera => tictac_zera);

        
        
        
end architecture;