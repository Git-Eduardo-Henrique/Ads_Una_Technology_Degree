programa
{
	
	funcao inicio()
	{
		inteiro lado1, lado2, lado3, maior, ld1, ld2

		escreva("digite o primeiro lado: ")
		leia(lado1)
		escreva("digite o segundo lado: ")
		leia(lado2)
		escreva("digite o terceiro lado: ")
		leia(lado3)

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		se ( lado1 < ( lado2 + lado3 ) e lado2 < ( lado1 + lado3) e lado3 < (lado1 + lado2)){
			se ( lado1 == lado2 e lado2 == lado3 ){
				escreva("Suas medidas formam um triangulo equilatero!\n")
			} senao se ((lado1 == lado2 e lado2 != lado3) ou (lado2 == lado3 e lado3 != lado1) ou (lado3 == lado1 e lado1 != lado2)) {
				escreva("Suas medidas formam um triangulo isosceles!\n")
			} senao {
				escreva("Suas medidas formam um triangulo escaleno!\n")
			}
		} senao {
			escreva("Suas medidas NÃO formam um triangulo!\n")
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
		
	}

	/*Solicite três medidas positivas. Primeiro, verifique se elas podem formar um triângulo: cada lado deve ser menor que a soma
dos outros dois. Se o triângulo for válido, classifique-o como equilátero, isósceles ou escaleno. Caso contrário, apresente uma
mensagem de medida inválida.
Objetivo: Trabalhar operadores lógicos e decisões aninhadas.*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 894; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */