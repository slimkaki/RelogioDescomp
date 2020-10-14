library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
    generic (
        dataWidth: natural := 11;
        addrWidth: natural := 10
    );
    port (
        Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
        Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

    type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

    function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
    begin
        -- CÓDIGO DO RELÓGIO:
        -- exemplo de instrução:
        -- je  : 0100
        -- jl  : 0101
        -- jle : 0110
        -- jmp : 0111
        tmp(0) := "0101"&"0001"&"0010"&"0000"&"0000000000";
        -- tmp(1) := "0101"&"111"&"000"&"00000000";
        -- tmp(2) := "0101"&"111"&"000"&"00000000";
        -- tmp(3) := "0101"&"111"&"000"&"00000000";
        -- tmp(4) := "0101"&"111"&"000"&"00000000";
        -- tmp(5) := "0101"&"111"&"000"&"00000000";
        -- tmp(6) := "0101"&"111"&"000"&"00000000";
        -- tmp(1023) := "0101"&"111"&"000"&"00000000";
        -- return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;