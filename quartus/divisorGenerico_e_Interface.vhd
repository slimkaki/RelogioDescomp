LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity divisorGenerico_e_Interface is
	generic (divisor : natural := 2500000);
   port(clk            :   in std_logic;
      habilitaLeitura  :   in std_logic;
      limpaLeitura     :   in std_logic;
      leituraUmSegundo :   out std_logic_vector(7 downto 0)
      -- print : out std_logic
   );
end entity;

architecture interface of divisorGenerico_e_Interface is
  signal sinalUmSegundo : std_logic;
  signal saidaclk_reg1seg : std_logic;
begin

baseTempo: entity work.divisorGenerico
           generic map (divisor => 2500000)   -- divide por 10.
           port map (clk => clk, saida_clk => saidaclk_reg1seg);

registraUmSegundo: entity work.flipflopGenerico
           port map (DIN => '1', 
                     DOUT => sinalUmSegundo,
                     ENABLE => '1', 
                     CLK => saidaclk_reg1seg,
                     RST => limpaLeitura);

-- print <= saidaclk_reg1seg;
-- Faz o tristate de saida:
leituraUmSegundo <= "0000000" & sinalUmSegundo when habilitaLeitura = '1' else "ZZZZZZZZ";

end architecture interface;