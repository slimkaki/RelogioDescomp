library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;   -- Biblioteca IEEE para funções aritméticas

entity ULA is
    generic
    (
        larguraDados : natural := 8
    );
    port
    (
        entradaA, entradaB	: 	in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		seletor				: 	in STD_LOGIC_VECTOR(2 downto 0);
        saida				:  	out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flagZero			:	out std_logic;
		flagL				:	out std_logic;

		entrada_A			:   out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		entrada_B			:   out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
	
	);
end entity;

architecture comportamento of ULA is
	constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');
	
	signal one : std_logic_vector(larguraDados-1 downto 0) := "00000001";
	signal soma : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal op_and : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal op_or: STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal op_xor: STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal op_not: STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal increment: STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal jump_le: STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal jump_l : STD_LOGIC_VECTOR((larguraDados-1) downto 0);

	signal preSaida : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	 
	begin
		
		entrada_A   <= entradaA; 
		entrada_B   <= entradaB; 
		soma 		<= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
		subtracao 	<= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		op_and		<= entradaA and entradaB;
		op_or		<= entradaA or entradaB;
		op_not		<= not entradaA;

		increment 	<=  STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(one));
		-- jump_le 	<= STD_LOGIC_VECTOR(unsigned(entradaA) <= unsigned(entradaB));
		-- jump_l 		<= STD_LOGIC_VECTOR(unsigned(entradaA) < unsigned(entradaB));

		preSaida <=  soma when (seletor = "000") else
			 subtracao when (seletor = "001") else
			 entradaA when  (seletor = "010") else
			 entradaB when  (seletor = "011") else
			 increment when (seletor = "100") else
			 op_not when    (seletor = "101") else
			 op_and when    (seletor = "110") else
			 op_or when     (seletor = "111") else
			 entradaA;      -- outra opcao: saida = entradaA
			--op_xor when    (seletor = "100") else
	  
		flagZero <= '1' when unsigned(entradaA) = unsigned(entradaB) else '0';
		flagL    <= '1' when unsigned(entradaA) < unsigned(entradaB) else '0';

		saida <= preSaida;
	  
end architecture;