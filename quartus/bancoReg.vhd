library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bancoReg is
    generic
    (
        larguraDados        : natural := 10;
        larguraEndBancoRegs : natural := 4   --Resulta em 2^5=32 posicoes
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        CLOCK           : in std_logic;

        enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoC       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);

        dadoEscritaA    : in std_logic_vector((larguraDados-1) downto 0);
        escreveA        : in std_logic := '0';

        saidaC          : out std_logic_vector((larguraDados -1) downto 0);
        saidaB          : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture comportamento of bancoReg is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t;

begin
    process(CLOCK) is
    begin
        if (rising_edge(CLOCK)) then
            if (escreveA = '1') then
                registrador(to_integer(unsigned(enderecoA))) := dadoEscritaA;
            end if;
        end if;
    end process;
    saidaC <= registrador(to_integer(unsigned(enderecoC)));
    saidaB <= registrador(to_integer(unsigned(enderecoB)));
end architecture;