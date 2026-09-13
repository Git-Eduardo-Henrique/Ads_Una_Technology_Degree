programa
{
	
	funcao inicio()
	{
		inteiro regiao, modalidade
		real peso, distancia, taxa_b, adicional_p, adicional_d, adicional_r[3], adicional_m[3], frete, valor_p, valor_d

		taxa_b = 10.0
		adicional_p = 3.0 // reais, acima de 2kg
		adicional_d = 0.5 // reais, acima de 10km
		adicional_r[0] = 0.0 // reais, local
		adicional_r[1] = 10.0 // reais, estadual
		adicional_r[2] = 25.0 // reais, nacional
		adicional_m[0] = 0.0 // reais, normal
		adicional_m[1] = 15.0 // reais, expressa
		adicional_m[2] = 30.0 // reais, urgente

		regiao = 0
		modalidade = 0
		valor_p = 0.0
		valor_d = 0.0
	
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Digite o peso (kg): ")
		leia(peso)
		escreva("Digite a distancia (km): ")
		leia(distancia)
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Regiões: 1-Local | 2-Estadual | 3-Nacional\n")

		enquanto ( regiao < 1 ou regiao > 3){
			escreva("Digite a região: ")
			leia(regiao)
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Modalidade: 1-Normal | 2-Expressa | 3-Urgente\n")

		enquanto ( modalidade < 1 ou modalidade > 3){
			escreva("Digite a modalidade: ")
			leia(modalidade)
		}

		se ( peso > 2 ){
			valor_p = peso * adicional_p
		}

		se ( distancia > 10 ){
			valor_d = distancia * adicional_d
		}

		frete = taxa_b + valor_p + valor_d + adicional_r[regiao-1] + adicional_m[modalidade-1]

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Taxa básica: R$", taxa_b ,"\n")
		escreva("Peso: ", peso, "KG | Adicional por kilo: R$", adicional_p , " | Valor total: R$", valor_p, "\n")
		escreva("Distancia: ", distancia, "KM | Adicional por kilometro: R$", adicional_d , " | Valor total: R$", valor_d, "\n")
		escreva("Adicional da Região: R$", adicional_r[regiao-1], "\n")
		escreva("Adicional da Modalidade: R$", adicional_m[modalidade-1], "\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Frete total a pagar: R$", frete,"\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}
	/*
	Solicite peso, distância, região e modalidade de entrega. Calcule o frete com taxa básica, adicional por 
	peso, distância e urgência. Mostre a composição do preço.
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1183; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */