programa
{
	funcao inicio()
	{
		inteiro total_segundos, horas, minutos, segundos_restantes

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Digite a duração total em segundos: ")
		leia(total_segundos)
		
		// Cálculos através das funções
		horas = calcular_horas(total_segundos)
		minutos = calcular_minutos(total_segundos)
		segundos_restantes = calcular_segundos(total_segundos)
		
		// Exibição dos resultados
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Resultado da conversão:\n")
		escreva(formatar_dois_digitos(horas), ":", formatar_dois_digitos(minutos), ":", formatar_dois_digitos(segundos_restantes), "\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	// Função para calcular as horas completas
	funcao inteiro calcular_horas(inteiro total_segundos)
	{
		retorne total_segundos / 3600
	}

	// Função para calcular os minutos restantes
	funcao inteiro calcular_minutos(inteiro total_segundos)
	{
		retorne (total_segundos % 3600) / 60
	}

	// Função para calcular os segundos restantes
	funcao inteiro calcular_segundos(inteiro total_segundos)
	{
		retorne total_segundos % 60
	}

	// Função auxiliar para garantir o formato com dois dígitos (ex: 05 em vez de 5)
	funcao cadeia formatar_dois_digitos(inteiro valor)
	{
		se (valor < 10) 
		{
			retorne "0" + valor
		}
		senao 
		{
			retorne "" + valor
		}
	}
}

/*
Solicite uma duração total em segundos e converta-a para horas, minutos e segundos restantes. 
Crie funções separadas para calcular cada parte da conversão e apresente o resultado no formato hh:mm:ss.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 231; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */