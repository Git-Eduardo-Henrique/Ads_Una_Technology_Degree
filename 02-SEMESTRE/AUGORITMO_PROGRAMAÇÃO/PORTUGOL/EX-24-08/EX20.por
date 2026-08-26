programa
{
	
	funcao inicio()
	{
		inteiro num_alu, nota, soma, cont, media

		escreva("Digite a quantidade de alunos: ")
		leia(num_alu)

		escreva("===========================================\n")

		soma = 0
		
		para (cont=1; cont <= num_alu; cont++) {
			escreva("digite a nota do ", cont, "° aluno: ")
			leia(nota)

			soma = soma + nota
		}

		media = soma / num_alu
		
		escreva("===========================================\n")
		escreva("A média da turma é: ", media)
		escreva("\n===========================================")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 550; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */