#! python3
# pw.py - um programa para repositorio de senhas que nao é seguro

PASSWORDS = {'email' : 'F7minlBDDuvMJuxESSKHFhTxFtjVB6',
            'blog' : 'Vmal...',
            'luggage' : '12345'} 
import sys
if len(sys.argv) < 2:
    print('usage: python pw.py [account] - copy account password')
    sys.exit()
account = sys.argv[1]   #o primeiro argumento da linha de comando é o nome da conta
