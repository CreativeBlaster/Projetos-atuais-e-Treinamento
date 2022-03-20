programa
{
	
	funcao inicio()
	{
		real nota1,nota2,nota3, nota4, media
		inteiro valor, reescolher, reiniciar
		reiniciar = 1
		faca
		{escreva("Olá, bem vindo ao Aplicativo de media de alunos. insira os valores bimestrais : ")
		leia(nota1,nota2,nota3,nota4)
		media = (nota1+nota2+nota3+nota4)/4

		//verifica se a media é maior que 7
		
		se(media>=7){
			escreva("sua media é: " + media + "\n Aluno APROVADO" + "\n" + "deseja reiniciar o atendimento?(0 para nao)")
			leia(reiniciar)
		
			}

			// se nao for maior que 7 entao reprova
			
			se(media<7 e media>5){
				faca{
				escreva("sua media é: " + media + " \n ALUNO Em recuperação" + "\n" + "Que dia deseja fazer a prova? (21, 22 ou 23)  ")
				leia(valor)
				escolha(valor){
					caso 21:
						escreva("Prova marcada dia 21 " + "\n" + "deseja reiniciar o atendimento?(0 para nao)")
						leia(reiniciar)
						reescolher =0
					pare
					caso 22:
						escreva("Prova marcada dia 22" + "\n" + "deseja reiniciar o atendimento?(0 para nao)")
						leia(reiniciar)
						reescolher =0
					pare
					caso 23:
						escreva("Prova marcada dia 23" + "\n" + "deseja reiniciar o atendimento?(0 para nao)")
						leia(reiniciar)
						reescolher =0
					pare
					caso contrario:
					escreva("é necessario escolher o dia correto, Tente novamente")
					
						reescolher =1
					}
				}enquanto(reescolher==1)
			}
			se(media<=5){
				escreva("sua media é: " + media + " \n ALUNO REPROVADO " + "\n" + "deseja reiniciar o atendimento?(0 para nao)")
				leia(reiniciar)
			}
	}enquanto(reiniciar>=1) 
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 227; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */