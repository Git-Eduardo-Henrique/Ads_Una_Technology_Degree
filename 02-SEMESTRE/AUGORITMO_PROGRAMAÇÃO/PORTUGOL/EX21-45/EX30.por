programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		
		inteiro num, cont
		logico primo

		primo = verdadeiro
		
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Digite o numero: ")
		leia(num)
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		se (num < 2){
			escreva("o número informado NÃO É PRIMO e não possui divisores\n")
			primo = falso
		}

		para (cont = 1; cont <= mat.raiz(num, 2.0); cont++){
			se (num % cont == 0 e cont != 1){
				escreva("o número informado NÃO É PRIMO | primeiro divisor encontrado: ", cont, "\n")
				primo = falso
				pare
			}
		}

		se ( primo ){
			escreva("o número informado É PRIMO!!\n")
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
	}
	/*
	Solicite um número inteiro maior que 1. Teste seus possíveis divisores e informe se 
	o número é primo.
	
	Se não for primo, apresente também o primeiro divisor encontrado além de 1.
	
	Dica: Um número primo possui exatamente dois divisores positivos: 1 e ele mesmo.
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 138; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */