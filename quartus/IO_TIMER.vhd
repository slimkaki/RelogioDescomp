library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

--------------------------------------------------------

entity IO_TIMER is
	generic(
			  dataWidth : natural := 9;
			  addrWidth : natural := 3
		 );
	port(	
        clk: in std_logic;
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: IN STD_LOGIC_VECTOR(6 downto 0);
        SW_Hab : IN STD_LOGIC_VECTOR(4 downto 0);
        -- BOTOES
        KEY_Hab: IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);

end IO_TIMER;

architecture comportamento of IO_TIMER is
    signal cursor : std_logic_vector(2 downto 0) := "000"; 
    -- Funcionamento cursor:
    -- HEX0  HEX1   HEX2   HEX3  HEX4  HEX5
    -- 000   001    010    011   100   101
    signal negativo, overflow, apaga : std_logic := '0'; -- Não precisaremos de sinal negativo ou overflow
    signal saidaHex0, saidaHex1, saidaHex2 : std_logic_vector(6 downto 0);
    signal saidaHex3, saidaHex4, saidaHex5 : std_logic_vector(6 downto 0);

    begin
        --SET BOTOES

        
        
        --  |  HEX5  |  HEX4  |   HEX3   |   HEX2   |    HEX1   |    HEX0   | --
        -- | HorasD | HorasU | MinutosD | MinutosU | SegundosD | SegundosU | --

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