# Esse código se refere ao exercicio da pagina 163 do livro referenciado
# Com o objetivo de simular um loot num jogo de fantasia em que o jogador está saquenado um dragão e seu inventario do tipo Dicionário será atualizado

def displayInventory(inventory):
    print("Inventory: ")
    item_total = 0
    for k,v in inventory.items():
        print(str(v) + ' ' + k)
        item_total += v
    print('Total number of items:  ' + str(item_total))

def addToInventory(inventory, addedItems):
    #seu codigo deve ser inserido aqui
    #count = 0
    for n in addedItems:
        if(n not in inventory.keys()):
            inventory.setdefault(n,1)
        else : inventory[n] = inventory.get(n,0) + 1
        #for k in inventory.keys():
            #count = inventory.get(n,0)
            #count += 1
           # inventory[n] = inventory.get(n,0) + 1
    
    return inventory
        

inv = {'gold coin': 42 , 'rope' : 1}
dragonLoot = ['gold coin', 'dagger', 'gold coin', 'gold coin', 'ruby']
inv = addToInventory(inv,dragonLoot)
displayInventory(inv)