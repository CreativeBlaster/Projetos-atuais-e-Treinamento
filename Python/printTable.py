# exibindo tabelha organizada
def printTable(list,leftWidth, rightWidth):
    print(list)
    for n in list:
        print(n[0].ljust(leftWidth,' ') + n[1].center(leftWidth + rightWidth,' ') + n[2].rjust(rightWidth,' '))

listazinha=[['agua','copo','tampa'],
['azul','branco','verde'],
['ferro','níquel','ouro']]
printTable(listazinha,10,10)
