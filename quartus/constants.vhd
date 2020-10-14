library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

package constants is

    constant OPCODE_WIDTH  : natural :=  4;
    constant REG_SIZE      : natural :=  4;
    constant IMED_SIZE     : natural := 10;

    subtype opCode_t     is std_logic_vector(OPCODE_WIDTH-1 downto 0);
    subtype reg_t        is std_logic_vector(REG_SIZE-1 downto 0);
    subtype imed_t       is std_logic_vector(IMED_SIZE-1 downto 0);

    -- opcodes

    constant lea  :  opCode_t := "0000";
    constant mov  :  opCode_t := "0001";
    constant add  :  opCode_t := "0010";
    constant sub  :  opCode_t := "0011";
    constant inc  :  opCode_t := "0100";
    constant je   :  opCode_t := "0101";
    constant jl   :  opCode_t := "0110";
    constant jle  :  opCode_t := "0111";
    constant jmp  :  opCode_t := "1000";
    constant nop  :  opCode_t := "1001";

    -- registradores para o relógio

    constant R0  :  reg_t := "0000";   -- segundo 1
    constant R1  :  reg_t := "0001";   -- segundo 2
    constant R2  :  reg_t := "0010";   -- minuto  1
    constant R3  :  reg_t := "0011";   -- minuto  2
    constant R4  :  reg_t := "0100";   -- hora    1
    constant R5  :  reg_t := "0101";   -- hora    2

    constant R6  :  reg_t := "0110";   -- registradores apoio
    constant R7  :  reg_t := "0111";
    constant R8  :  reg_t := "1000";
    constant R9  :  reg_t := "1001";

    -- imediatos notaveis

    constant imediato_nop  : imed_t := "0000000000";

    -- ULA 

    subtype operacaoULA_t is std_logic_vector(2 downto 0);

    constant soma      :  operacaoULA_t := "000";
    constant subtracao :  operacaoULA_t := "001";
    constant entradaA  :  operacaoULA_t := "010";
    constant entradaB  :  operacaoULA_t := "011";
    constant op_xor    :  operacaoULA_t := "100";
    constant op_not    :  operacaoULA_t := "101";
    constant op_and    :  operacaoULA_t := "110";
    constant op_or     :  operacaoULA_t := "111";

end package constants;