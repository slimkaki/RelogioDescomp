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
        ---       OPCODE   Rd(RA) --RB  --Rl(RC)  
        ---       25^22     21^18   17^14     13^10  9^0   
      --  tmp(0) :=  lea   & R0 & R0   & R0   & "0000000001"; -- MOV R0,#1
       -- tmp(1) :=  add   & segU & R0   & segU & "0000000000"; -- ADD SegU + R0 = SeguU

       -- tmp(2) :=  jmp   & R0   & R0   & R0   & "0000000000";
		  
		  
        tmp(0) :=  load  & RT   & R0   & R0   & "0000000111"; -- load time
        tmp(1) :=  lea   & R1   & R0   & R0   & "0000000001"; -- load 1 em R1
        tmp(2) :=  je    & R0   & RT   & R1   & "0000000100"; -- pula pra linha 4 se time = R1
        tmp(3) :=  jmp   & R0   & R0   & R0   & "0000000000"; -- volta pro começo
        
        tmp(4) :=  store & R0   & segU & R0   & "0000000000"; -- guarda no hex
        tmp(5) :=  inc   & segU & R0   & segU & "0000000000"; -- inc SegU

        tmp(6) :=  load  & RT   & R0   & R0   & "0000000110"; -- zera time

        tmp(7) :=  jmp   & R0   & R0   & R0   & "0000000000"; -- volta pro começo

        -- tmp(2) :=  lea   & segU & R0 & R0 & "0000000001";
        -- tmp(3) :=  store & segU & R0 & R0 & "0000000010";
        
        -- tmp(2) :=  lea   & R2 & R0 & R0 & "0000000011";
        -- tmp(3) :=  store & R2 & R0 & R0 & "0000000010";

        -- CÓDIGO DO RELÓGIO:

        -- Carregando variaveis
        -- tmp(0)   := lea & R0    & R0  & R0  & "0000000000"; -- 0

        -- tmp(1)   := lea & segU  & R0  & R0  & "0000000110"; -- segU = 6    12:59:56 am
        -- tmp(2)   := lea & segD  & R0  & R0  & "0000000101"; -- segD = 5
        -- tmp(3)   := lea & minU  & R0  & R0  & "0000001001"; -- minU = 9
        -- tmp(4)   := lea & minD  & R0  & R0  & "0000000101"; -- minD = 5
        -- tmp(5)   := lea & horU  & R0  & R0  & "0000000001"; -- horU = 2
        -- tmp(6)   := lea & horD  & R0  & R0  & "0000000010"; -- horD = 1

        -- tmp(7)   := lea & R1    & R0  & R0  & "0000000001"; -- 1    comparaveis
        -- tmp(8)   := lea & R2    & R0  & R0  & "0000000010"; -- 2
        -- tmp(9)   := lea & R9    & R0  & R0  & "0000001001"; -- 9
        -- tmp(10)  := lea & R5    & R0  & R0  & "0000000101"; -- 5
        -- tmp(11)  := lea & RM    & R0  & R0  & "0000000000"; -- 0 = am

        -- -- WHILE

        -- jmp se passou 1 seg continar
        -- jpm 

        -- tmp(xx)  := jl & segU & R9 & R0  & "0000000+30";

        --     tmp(xx)  := mov & segU & R0 & R0  & "0000000000";
        --     tmp(xx)  := jl  & segD & R5 & R0  & "0000000+26";

        --         tmp(xx)  := mov & segD & R0 & R0  & "0000000000";
        --         tmp(xx)  := jl  & minU & R9 & R0  & "0000000+22";

        --             tmp(xx)  := mov & minU  & R0  & R0  & "0000000000";
        --             tmp(xx)  := jl  & minD  & R5  & R0  & "0000000+18";

        --                 tmp(xx)  := mov & minD  & R0  & R0  & "0000000000";
        --                 tmp(xx)  := jl  & horU  & R9  & R0  & "0000000+12";

        --                     tmp(xx)  := je  & horD  & R0  & R0  & "00000000+8";
        --                     tmp(xx)  := jl  & horU  & R2  & R0  & "00000000+5";
                            
        --                         tmp(xx)  := inv & RM    & R0  & R0  & "0000000000";
        --                         tmp(xx)  := mov & horD  & R0  & R0  & "0000000000";
        --                         tmp(xx)  := mov & horU  & R1  & R0  & "0000000000";
        --                         tmp(xx)  := jmp & R0    & R0  & R0  & "começo 000";

        --                     tmp(xx)  := inc & horU  & R0  & R0  & "0000000000";
        --                     tmp(xx)  := jmp & R0    & R0  & R0  & "começo 000";
                            
        --                     tmp(xx)  := mov & horU  & R0  & R0  & "0000000000";
        --                     tmp(xx)  := inc & horD  & R0  & R0  & "0000000000";
        --                     tmp(xx)  := jmp & R0    & R0  & R0  & "começo 000";
                        
        --                 tmp(xx)  := je  & horD  & R0  & R0  & "00000000+2";
        --                 tmp(xx)  := jmp & R0    & R0  & R0  & "0000000-12";

        --                 tmp(xx)  := inc & horU  & R0  & R0  & "0000000000";
        --                 tmp(xx)  := jmp & R0    & R0  & R0  & "começo 000";
                    
        --             tmp(xx)  := inc & minD  & R0  & R0  & "0000000000";
        --             tmp(xx)  := jmp & R0    & R0  & R0  & "começo 000";

        --         tmp(xx)  := inc & minU  & R0  & R0  & "0000000000";
        --         tmp(xx)  := jmp & R0    & R0  & R0  & "começo 000";
            
        --     tmp(xx)  := inc & segD & R0 & R0  & "0000000000";
        --     tmp(xx)  := jmp & R0   & R0 & R0  & "começo 000";

        -- tmp(xx)  := inc & segU & R0 & R0  & "0000000000";
        -- tmp(xx)  := jmp & R0   & R0 & R0  & "começo 000";
        
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;