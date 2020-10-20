library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fetch is

	generic (
		dataWidth: natural := 24;
		addrWidth: natural := 8
	);

	port (
		selMux : in std_logic;
		endROM : in std_logic_vector(addrWidth-1 DOWNTO 0);
		instruction : out std_logic_vector(dataWidth-1 DOWNTO 0);
		CLK : in std_logic;

		pc_sig : out std_logic_vector(7 DOWNTO 0)
	);

end entity;

architecture arch_name OF fetch is
	
	SIGNAL muxOut, PCout, somadorOut : std_logic_vector((addrWidth - 1) DOWNTO 0);

	begin

		pc_sig <= PCout;

		MUX : entity work.muxGenerico2x1 
			generic map ( larguraDados => addrWidth )
			port map (entradaA_MUX => somadorOut, 
					  entradaB_Mux => endROM, 
					  seletor_MUX => selMux, 
					  saida_MUX => muxOut);
		
		PC : entity work.registradorGenerico 
			generic map ( larguraDados => addrWidth )
			port map (DIN => muxOut, 
					  DOUT => PCout, 
					  ENABLE => '1', 
					  CLK => CLK, 
					  RST => '0'); -- mudar entradas/saidas
			
		ROM : entity work.memoriaROM 
			port map (Endereco => PCout,
			 		  Dado => instruction);

		SOMA : entity work.somadorGenerico 
			generic map (larguraDados => addrWidth)
			port map (entradaA => "00000001",
					  entradaB => PCout, 
					  saida => somadorOut); -- Soma 1 no Program Counter

end architecture;