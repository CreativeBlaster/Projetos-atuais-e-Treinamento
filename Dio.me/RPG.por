programa
{// o programa vai ter personagens com vetor de 3 valores de atributos  dano, vida e iniciativa o mapa vai ser uma matriz de 3x3
	inteiro atributosP[3]//atributos do personagem
	inteiro atributosI[3]//atributos inimigo
	inteiro mapa[2][2]//grid
	inteiro botao
	inteiro rodando

	
	funcao inicio()
	{
		rodando = 1 
		
		atributosP[0]= 2
		atributosP[1]= 2
		atributosP[2]= 2
		
		atributosI[0]= 1
		atributosI[1]= 1
		atributosI[2]= 1
		
		mapa[0][0] = 1
		mapa[0][1] = 2
		mapa[1][0] = 0
		mapa[1][1] = 0 

		escreva("Olá Mundo" + "\n" + "BEm vindo ao caçe o rato"+ "\n")// toppo
		escreva("esse jogo consiste em um mini-game "+ "\n" + " Use numeros de 1 a 4 para movimentar o personagem "+ "\n  CAÇE o RATO 5 VEZES  --- começa no noroeste(superior esquerdo) e tem 4 quadrados" )

		faca{
		//escreva("Olá Mundo" + "\n" + "BEm vindo ao caçe o rato"+ "\n")// toppo
		//escreva("esse jogo consiste em um mini-game "+ "\n" + " Use numeros de 1 a 4 para movimentar o personagem " + "\n"+ "  \n 1 = NOrte ; 2 = Leste ; 3 =  Sul ; 4  =  Oeste   ")
		escreva( "\n"+ " 1 = NOrte ; 2 = Leste ; 3 =  Sul ; 4  =  Oeste  ****5 check status***  ")
		leia(botao)// 1, 2, 3 ,4
		se(botao == 5){escreva(mapa[0][0]+"  "+ mapa[0][1]+"  \n" + mapa[1][0]+ "  " +mapa[1][1] )}
		movimento(botao)
		}enquanto(rodando <5)
		escreva("\n"+"MEUS PARABENS, VOCE ZEROU O JOGO!!!!!")
	}
	funcao movimento(inteiro a){

		se(mapa[0][0] == 1){
			se(a == 1 ou a ==4){escreva("\n" + " =====MOVIMENTO INVALIDO====")}
			se(a == 2 ou a == 3){//movimento valido, procurar alvo
				se(a == 2 ){se(mapa[0][1]==2){
					
					iniciativa(atributosP[0],atributosI[0])		
														
										}
				escreva(" **você está no nordeste** ")						
				mapa[0][1] = 1
						}
				se(a == 3){se(mapa[1][0]==2){
					
					iniciativa(atributosP[0],atributosI[0])		
														
										}
					mapa[1][0] = 1
					escreva(" **você está no sudoeste** ")
				}//verificar iniciativa e começar a luta
				mapa[0][0] = 0//apagando o rastro
				}
				
						}

		se(mapa[0][1] == 1){
			se(a == 1 ou a ==2){escreva("\n" + " =====MOVIMENTO INVALIDO====")}
			se(a == 4 ou a == 3){//movimento valido, procurar alvo
				se(a == 4 ){se(mapa[0][0]==2){iniciativa(atributosP[0],atributosI[0])
							
							
							escreva(" **você está no noroeste** ")
										}	
				mapa[0][0] = 1					
						}
				se(a==3){se(mapa[1][1]==2){
					
					iniciativa(atributosP[0],atributosI[0])		
														
										}
					mapa[1][1] = 1
					escreva(" **você está no sudeste** ")
				}//verificar iniciativa e começar a luta
				mapa[0][1] = 0//apagado o rastro
				}
				
						}

		se(mapa[1][0] == 1){
			se(a == 4 ou a ==3){escreva("\n" + "=====MOVIMENTO INVALIDO====")}
			se(a == 1 ou a == 2){//movimento valido, procurar alvo
				se(a == 1 ){se(mapa[0][0]==2){iniciativa(atributosP[0],atributosI[0])
							
							
							escreva(" **você está no noroeste** ")
										}
				mapa[0][0] = 1						
						}
				se(a==2){se(mapa[1][1]==2){
					
					iniciativa(atributosP[0],atributosI[0])		
														
										}
					mapa[1][1] = 1
					escreva(" **você está no sudeste** ")
				}//verificar iniciativa e começar a luta
				mapa[1][0] = 0//apagado o rastro dentro de um movimento valido
				}
				
						}

		se(mapa[1][1] == 1){
			se(a == 3 ou a ==2){escreva("\n" + "=====MOVIMENTO INVALIDO====")}
			se(a == 1 ou a == 4){//movimento valido, procurar alvo
				se(a == 1 ){se(mapa[0][1]==2){iniciativa(atributosP[0],atributosI[0])
							
							
							escreva(" **você está no nordeste** ")
										}
				mapa[0][1] = 1						
						}
				se(a==4){se(mapa[1][0]==2){
					
					iniciativa(atributosP[0],atributosI[0])		
														
										}
					mapa[1][0] = 1
					escreva(" **você está no sudoeste** ")
				}//verificar iniciativa e começar a luta
				mapa[1][1] = 0//apagado o rastro
				}
				
						}
		
		
		}
	funcao iniciativa(real a, real b){//comparar a iniciativa dos combatentes  executa o movimento do adversario em sentido horario
		se(a>b){escreva("\n" + "COMEU UM RATO")

		se(mapa[0][0]==2){
			mapa[0][1]=2
			escreva("ratos comidos : "  + rodando)
			rodando ++
		}
		se(mapa[0][1]==2){
			mapa[1][1]=2
			escreva("ratos comidos : "  + rodando)
			rodando ++
		}
		se(mapa[1][1]==2){
			mapa[1][0]=2
			escreva("ratos comidos : "  + rodando)
			rodando ++
		}
		se(mapa[1][0]==2){
			mapa[0][0]=2
			escreva("ratos comidos : "  + rodando)
			rodando ++
		}
		
		}//senao{escreva("\n" + "Atributos do Inimigo é superior")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4459; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */