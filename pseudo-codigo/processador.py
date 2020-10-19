import time
import keyboard

def unidade_controle():
    """
    Unidade de Controle
    """
    return 0

def decodificador_end():
    """
    Decodificador de Endereços
    """
    return 0

def topLevel():
    """
    Arquitetura Registrador-Registrador
    """
    tempo = 0

    horasD, horasU, minutosD, minutosU, segundosD, segundosU = 1, 2, 5, 9, 5, 6 
    timeofday = {True: 'am', False:'pm'}
    ampm = True

    t0 = time.time()
    print("\033[91mRelógio\033[00m")

    while (True):
        
        t1 = time.time()
        if t1-t0 >= 1:
            
            if (segundosU < 9):
            segundosU += 1

            else:
                segundosU = 0

                if(segundosD < 5):
                    segundosD += 1

                else:
                    segundosD = 0

                    if(minutosU < 9):
                        minutosU += 1   

                    else:
                        minutosU = 0

                        if(minutosD < 5):
                            minutosD += 1
                            
                        else: 
                            minutosD = 0

                            if (horasU < 9 and horasD == 0):
                                horasU += 1
                                
                            else:

                                if(horasD == 0):
                                    horasU = 0
                                    horasD += 1

                                if(horasU < 2):
                                    horasU += 1

                                else:
                                    ampm = not(ampm)
                                    horasD = 0
                                    horasU = 1
                                            

            t0 = t1
            print(f"\r {horasD}{horasU}:{minutosD}{minutosU}:{segundosD}{segundosU} {timeofday[ampm]}", end='\r')
        

if __name__ == '__main__':
    memoria = {}
    topLevel()