#! python3
# pw.py - um programa para repositorio de senhas que nao é seguro
#esse programa é feito com a intenção de ser utilizado com o apoio de um arquivo bat(pw.bat), porem preferi remove-lo
#o programa funciona quando é apertado win+R e digitado py.exe 'caminho'\pw.py 'argumento4'   OU
#caminho_ate_o_arquivo_bat\pw google

PASSWORDS = {'email' : 'F7minlBDDuvMJuxESSKHFhTxFtjVB6',
            'blog' : 'Vmal...',
            'luggage' : '12345',
            'google':'apaput4'
            } 

import sys

import pyperclip
if len(sys.argv) < 2:
    print('usage: python pw.py [account] - copy account password')
    sys.exit()
account = sys.argv[1]   #o primeiro argumento da linha de comando é o nome da conta

if account in PASSWORDS:
    pyperclip.copy(PASSWORDS[account])
    print('Password for ' + account + ' copied to the  clipboard')
    
else:
    print('There is no account named ' + account)
 