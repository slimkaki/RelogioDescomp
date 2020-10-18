library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity memoriaROM is
    generic (
        dataWidth: natural := 26;
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

        tmp(0)   := lea & R0  & R0  & R0  & "0000000000"; -- 0

        tmp(1)   := lea & segU  & R0  & R0  & "0000000110"; -- segU = 6    09:59:56 am
        tmp(2)   := lea & segD  & R0  & R0  & "0000000101"; -- segD = 5
        tmp(3)   := lea & minU  & R0  & R0  & "0000001001"; -- minU = 9
        tmp(4)   := lea & minD  & R0  & R0  & "0000000101"; -- minD = 5
        tmp(5)   := lea & horU  & R0  & R0  & "0000001001"; -- horU = 9
        tmp(6)   := lea & horD  & R0  & R0  & "0000000000"; -- horD = 0

        tmp(7)   := lea & R1    & R0  & R0  & "0000000001"; -- 1    comparaveis
        tmp(8)   := lea & R2    & R0  & R0  & "0000000010"; -- 2
        tmp(9)   := lea & R9    & R0  & R0  & "0000001001"; -- 9
        tmp(10)  := lea & R5    & R0  & R0  & "0000000101"; -- 5
        tmp(11)  := lea & RM    & R0  & R0  & "0000000000"; -- 0 = am

        -- WHILE
        tmp(xx)  := jle  & horD  & R0  & R0  & "000000000?";
        tmp(xx)  := jle & segD  & R5  & R0  & "000000000?"; -- if segD <= 5 goto temp(13)
        tmp(xx)  := jl  & segU  & R9  & R0  & "000000000?";
        tmp(xx)  := inc & segU  & R0  & R0  & "0000000000";
        tmp(xx)  := mov & segU  & R0  & R0  & "0000000000";
        
        tmp(xx)  := jl  & segD  & R5  & R0  & "000000000?";
        
        
        tmp(xx)  := inc & seg
        
        tmp(xx)  := jmp & R0    & R0  & R0  & "000000000?";
        
        
        
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;