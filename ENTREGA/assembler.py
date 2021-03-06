#!/usr/bin/python3

import argparse
import sys

class Assembler(object):
    def __init__(self, filename):
        self.filename = filename
        self.new = ""
        self.lineCursor = 0
        self.registers = {'R0': '0000', 'segU' : '0001', 'segD' : '0010', 'minU': '0011', 'minD' : '0100', 
                 'horU': '0101', 'horD': '0110', 'R1': '0111', 'R2': '1000', 'R9': '1001', 'R5': '1010',
                 'RM' : '1011', 'RT': '1111', 'RT': '1100', 'RF': '1101', 'Rsw': '1110', 'Rbt': '1111',
                 'imediato_nop': '0000000000'}
        self.instructions = {'lea': '0000', 'mov': '0001', 'add': '0010', 'sub': '0011', 'inc': '0100',
                            'je': '0101', 'jl': '0110', 'jle': '0111', 'jmp': '1000', 'nop': '1001',
                             'inv': '1010', 'load': '1011','store': '1100'}
        self.famousEnd = {'0x0': '00000000'}
        self.label = {}

    def readFile(self):
        file1 = open(self.filename, 'r') 
        linhas = file1.readlines() 
        new_file = []
        for linha in linhas: 
            # print("Line {}: {}".format(self.lineCursor, linha.strip()))
            b = ","
            for i in range(0,len(b)):
                linha = linha.replace(b[i],"")
            self.gravaLabel(linha)
            self.lineCursor += 1
        print(self.label)
        self.lineCursor = 0

        for linha in linhas:
            b = ",$:"
            for i in range(0,len(b)):
                linha = linha.replace(b[i],"")
            new_file.append(self.interpreter(linha.strip()))
            self.lineCursor += 1
        self.writeToFile(new_file)
    
    def gravaLabel(self, linha):
        if (linha[0] == ":" ):
            b = ",$:\n"
            for i in range(0,len(b)):
                linha = linha.replace(b[i],"")
            self.label[str(linha)] = self.lineCursor

    
    def interpreter(self, linha):
        comando = linha.split(" ")
        new_line =  'tmp(' + str(self.lineCursor) + ') := "'
        if (comando[0] == 'nop'): #Done
            new_line += self.instructions[comando[0]]
            new_line += self.registers['R0']
            new_line += self.registers['R0']
            new_line += self.registers['R0']
            new_line += self.famousEnd['0x0']

        elif (comando[0] == 'inc'): #Done
            # inc & R1 & R0 & R1 & 0x0
            new_line += self.instructions[comando[0]]
            new_line += self.registers[comando[1]]
            new_line += self.registers['R0']
            new_line += self.registers[comando[1]]
            new_line += self.famousEnd['0x0']
            
        elif (comando[0] == 'jmp'): #Done
            new_line += self.instructions[comando[0]]
            new_line += self.registers['R0']
            new_line += self.registers['R0']
            new_line += self.registers['R0']
            end = str(self.label[comando[1]])
            res = self.decTo10bits(end)

            new_line += str(res)
            
        elif (comando[0] == 'jle'):
            new_line += self.instructions[comando[0]]
            new_line += self.registers['R0']
            new_line += self.registers[comando[2]]
            new_line += self.registers[comando[1]]
            end = str(self.label[comando[3]])
            res = self.decTo10bits(end)
            new_line += str(res) # End
            
        elif (comando[0] == 'je'):
            new_line += self.instructions[comando[0]]
            new_line += self.registers['R0']
            new_line += self.registers[comando[2]]
            new_line += self.registers[comando[1]]
            end = str(self.label[comando[3]])
            res = self.decTo10bits(end)
            new_line += str(res)

        elif (comando[0] == 'jl'): #Done
            # jl RC, RB
            new_line += self.instructions[comando[0]]
            new_line += self.registers['R0']
            new_line += self.registers[comando[2]]
            new_line += self.registers[comando[1]]
            end = str(self.label[comando[3]])
            res = self.decTo10bits(end)
            new_line += str(res) # end

        elif (comando[0] == 'lea'):
            new_line += self.instructions[comando[0]]
            new_line += self.registers[comando[1]]
            new_line += self.registers['R0']
            new_line += self.registers['R0']
            res = self.hexTo10bits(comando[2])
            new_line += str(res) # imediato
        
        elif (comando[0] == 'mov'): #Done
            new_line += self.instructions[comando[0]]
            new_line += self.registers[comando[1]]
            new_line += self.registers['R0']
            new_line += self.registers[comando[2]]
            new_line += self.famousEnd['0x0']
        
        elif (comando[0] == 'add'): #Done
            new_line += self.instructions[comando[0]]
            new_line += self.registers[comando[1]]
            new_line += self.registers[comando[2]]
            new_line += self.registers[comando[3]]
            new_line += self.famousEnd['0x0']

        elif (comando[0] == 'sub'): #Done
            new_line += self.instructions[comando[0]]
            new_line += self.registers[comando[1]]
            new_line += self.registers[comando[2]]
            new_line += self.registers[comando[3]]
            new_line += self.famousEnd['0x0']
        
        elif (comando[0] == 'inv'): #Done
            new_line += self.instructions[comando[0]]
            new_line += self.registers[comando[1]]
            new_line += self.registers['R0']
            new_line += self.registers[comando[1]]
            new_line += self.famousEnd['0x0']

        elif (comando[0] == 'load'): #Done
            new_line += self.instructions[comando[0]]
            new_line += self.registers[comando[1]]
            new_line += self.registers['R0']
            new_line += self.registers['R0']
            res = self.hexTo10bits(comando[2])
            new_line += str(res) # end
        
        elif (comando[0] == 'store'): #Done
            new_line += self.instructions[comando[0]]
            new_line += self.registers['R0']
            new_line += self.registers[comando[1]]
            new_line += self.registers['R0']
            res = self.hexTo10bits(comando[2])
            new_line += str(res) # end
        else:
            new_line += self.instructions['nop']
            new_line += self.registers['R0']
            new_line += self.registers['R0']
            new_line += self.registers['R0']
            new_line += self.famousEnd['0x0']


        new_line += '";\n'
        return new_line
        
    def hexTo10bits(self, end):
        n = int(end, 16)  # end = 0x7
        bStr = '' 
        while n > 0: 
            bStr = str(n % 2) + bStr 
            n = n >> 1    
        res = str(bStr) # 111
        faltam = 8 - len(res)
        res = faltam*'0' + str(bStr)
        return res
    
    def decTo10bits(self, end):
        n = int(end)
        bStr = ''
        while (n > 0): 
            bStr = str(n % 2) + bStr 
            n = n >> 1    
        res = str(bStr) # 111
        faltam = 8 - len(res)
        res = faltam*'0' + str(bStr)
        return res

    def makeMIF(self):
        self.lineCursor = 0
        mif_name = "initROM.mif"
        new_file = open(mif_name, "w")
        start = """DEPTH = 1024; -- The size of memory in words
WIDTH = 26; -- The size of data in bits
ADDRESS_RADIX = HEX; -- The radix for address values
DATA_RADIX = BIN; -- The radix for data values
CONTENT -- start of (address : data pairs)
BEGIN\n"""
        read_file = open(self.new, 'r') 
        linhas = read_file.readlines()
        for linha in linhas:
            b = '"'
            for i in range(0,len(b)):
                linha = linha.replace(b[i],"")
            mystr = linha.split(" ")
            myline = hex(self.lineCursor)
            myline = myline.replace("0x", "")
            faltam = 3 - len(myline)
            for i in range(faltam):
                myline = "0" + myline
            start = start + myline + str(" : ") + mystr[2]
            self.lineCursor += 1
        start = start + str("END")
        new_file.writelines(start)
        new_file.close()

    def writeToFile(self, assembled):
        new_name = "assembled_" + str(self.filename)
        self.new = new_name
        new_file = open(new_name, "w")
        new_file.writelines(assembled)
        new_file.close()

if __name__ == '__main__':
    # argparse = argparse.ArgumentParser()
    # argparse.add_argument('in_file', type=str)
    # args = argparse.parse_args()
    filename = "codigoRom.txt"
    assemble = Assembler(filename)
    assemble.readFile()
    assemble.makeMIF()