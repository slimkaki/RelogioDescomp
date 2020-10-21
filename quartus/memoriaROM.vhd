library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity memoriaROM is
    generic (
        dataWidth: natural := 24;
        addrWidth: natural := 8
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




        -- tmp(0) :=  load  & RT   & R0   & R0   & "0000000111"; -- load time
        -- tmp(1) :=  lea   & R1   & R0   & R0   & "0000000001"; -- load 1 em R1
        -- tmp(2) :=  je    & R0   & RT   & R1   & "0000000100"; -- pula pra linha 4 se time = R1
        -- tmp(3) :=  jmp   & R0   & R0   & R0   & "0000000000"; -- volta pro começo
        
        -- tmp(4) :=  store & R0   & segU & R0   & "0000000000"; -- guarda no hex
        -- tmp(5) :=  inc   & segU & R0   & segU & "0000000000"; -- inc SegU

        -- tmp(6) :=  load  & RT   & R0   & R0   & "0000000110"; -- zera time

        -- tmp(7) :=  jmp   & R0   & R0   & R0   & "0000000000"; -- volta pro começo


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

        -- -- seting clock
        -- tmp(0)  := lea   & segU & R0   & R0   & "00000110"; -- segU = 6    12:59:56 am
        -- tmp(1)  := store & R0   & segU & R0   & "00000000"; -- grava em HEX0

        -- tmp(2)  := lea   & segD & R0   & R0   & "00000101"; -- s egD = 5
        -- tmp(3)  := store & R0   & segD & R0   & "00000001"; -- grava em HEX1
        
        -- tmp(4)  := lea   & minU & R0   & R0   & "00001001"; -- minU = 9
        -- tmp(5)  := store & R0   & minU & R0   & "00000010"; -- grava em HEX2
        
        -- tmp(6)  := lea   & minD & R0   & R0   & "00000101"; -- minD = 5
        -- tmp(7)  := store & R0   & minD & R0   & "00000011"; -- grava em HEX3
        
        -- tmp(8)  := lea   & horU & R0   & R0   & "00000010"; -- horU = 2
        -- tmp(9)  := store & R0   & horU & R0   & "00000100"; -- grava em HEX4
        
        -- tmp(10) := lea   & horD & R0   & R0   & "00000001"; -- horD = 1
        -- tmp(11) := store & R0   & horD & R0   & "00000101"; -- grava em HEX5
        
        -- -- setando registradores comparadores
        -- tmp(12) := lea   & R1   & R0   & R0   & "00000001"; -- 1 
        -- tmp(13) := lea   & R2   & R0   & R0   & "00000010"; -- 2
        -- tmp(14) := lea   & R9   & R0   & R0   & "00001001"; -- 9
        -- tmp(15) := lea   & R5   & R0   & R0   & "00000101"; -- 5
        -- tmp(16) := lea   & RM   & R0   & R0   & "00000000"; -- 0 = am
        
            tmp(0) := load   &R1& R0 &R0& "00001011";
            tmp(2) := store  &R0&R1&R0& "00000000";
            tmp(3) := jmp &R0&R0&R0& "00000000";



        -- -- tmp(20) := inc   & segU & R0   & segU & "00000000"; -- segU+1
        -- -- tmp(21) := store & R0   & segU & R0   & "00000000"; -- grava no HEX0

        -- tmp(20) := store & R0   & R0   & R0   & "00000110"; -- zera time
        
        -- -- tmp(23) := jmp   & R0   & R0   & R0   & "00010001";


        -- tmp(21) := jl    & R0   & R9   & segU & "01000000";

        --     tmp(22) := mov   & segU & R0   & R0   & "00000000";
        --     tmp(23) := store & R0   & segU & R0   & "00000000";
        --     tmp(24) := jl    & R0   & R5   & segD & "00111101";

        --         tmp(25) := mov   & segD & R0   & R0   & "00000000";
        --         tmp(26) := store & R0   & segD & R0   & "00000001";
        --         tmp(27) := jl    & R0   & R9   & minU & "00111010";

        --             tmp(28) := mov   & minU & R0   & R0   & "00000000";
        --             tmp(29) := store & R0   & minU & R0   & "00000010";
        --             tmp(30) := jl    & R0   & R5   & minD & "00110111";

        --                 tmp(31) := mov   & minD & R0   & R0   & "00000000";
        --                 tmp(32) := store & R0   & minD & R0   & "00000011";
        --                 tmp(33) := jl    & R0   & R9   & horU & "00110010";

        --                     tmp(34) := je    & R0  & R0  & horD & "00101101";
        --                     tmp(35) := jl    & R0  & R2  & horU & "00101010";
                            
        --                         tmp(36) := inv   & R0   & R0   & RM   & "00000000";
                                
        --                         tmp(37) := mov   & horD & R0   & R0   & "00000000";
        --                         tmp(38) := store & R0   & horD & R0   & "00000101";
                                
        --                         tmp(39) := mov   & horU & R0   & R1   & "00000000";
        --                         tmp(40) := store & R0   & horU & R0   & "00000100";
                                
        --                         tmp(41) := jmp   & R0   & R0   & R0   & "00010001";

        --                     tmp(42) := inc   & horU & R0   & horU & "00000000";
        --                     tmp(43) := store & R0   & horU & R0   & "00000100";
        --                     tmp(44) := jmp   & R0   & R0   & R0   & "00010001";
                        

        --                     tmp(45) := mov   & horU & R0   & R0   & "00000000";
        --                     tmp(46) := store & R0   & horU & R0   & "00000100";
                            
        --                     tmp(47) := inc   & horD & R0   & horD & "00000000";
        --                     tmp(48) := store & R0   & horD & R0   & "00000101";
        --                     tmp(49) := jmp   & R0   & R0   & R0   & "00010001";
                        
        --                 tmp(50) := je    & R0   & R0   & horD & "00110000";
        --                 tmp(51) := jmp   & R0   & R0   & R0   & "00011101";

        --                 tmp(52) := inc   & horU & R0   & horU & "00000000";
        --                 tmp(53) := store & R0   & horU & R0   & "00000100";
        --                 tmp(54) := jmp   & R0   & R0   & R0   & "00010001";
                    
        --             tmp(55) := inc   & minD & R0   & minD & "00000000";
        --             tmp(56) := store & R0   & minD & R0   & "00000011";
        --             tmp(57) := jmp   & R0   & R0   & R0   & "00010001";

        --         tmp(58) := inc   & minU & R0   & minU & "00000000";
        --         tmp(59) := store & R0   & minU & R0   & "00000010";
        --         tmp(60) := jmp   & R0   & R0   & R0   & "00010001";
            
        --     tmp(61) := inc   & segD & R0   & segD & "00000000";
        --     tmp(62) := store & R0   & segD & R0   & "00000001";
        --     tmp(63) := jmp   & R0   & R0   & R0   & "00010001";

        -- tmp(64) := inc   & segU & R0   & segU & "00000000";
        -- tmp(65) := store & R0   & segU & R0   & "00000000";
        -- tmp(66) := jmp   & R0   & R0   & R0   & "00010001";
        
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;