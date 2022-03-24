#! python3
# bulletpointAdder.py - acrescenta marcadores da wikipedia no inicio de cada linha de texto do clipboard.

import pyperclip

text =  pyperclip.paste()

# Separa as linhas e acrescenta asteriscos.
lines = text.split('\n')
for i in range(len(lines)): # percorre todos os itens da lista "lines" em um loop
    lines[i] = '* ' + lines[i] # acrescenta um asterisco em cada string da lista "lines"
text = '\n'.join(lines)

pyperclip.copy(text)

