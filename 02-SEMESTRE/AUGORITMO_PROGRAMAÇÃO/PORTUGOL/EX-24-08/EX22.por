programa
{
	
	funcao inicio()
	{
		real kg, alt, imc
		cadeia class
	
		escreva("Digite seu peso (kg): ")
		leia(kg)
		escreva("Digite seu altura (m): ")
		leia(alt)

		imc = kg / ( alt * alt )

		se ( imc < 18.5 ) {
			class = "abaixo do peso"
		} senao se (imc >= 18.5 e imc <= 24.9){
			class = "peso adequado"
		} senao se (imc >= 25 e imc <= 29.9){
			class = "sobrepeso"
		} senao {
			class = "obesidade"
		}

		escreva("Imc: ", imc, " | classificação: ", class)
	}
	/*Solicite o peso, em quilogramas, e a altura, em metros, de uma 
	 * pessoa. Calcule o IMC e apresente a classificação:
IMC menor que 18,5: abaixo do peso;
IMC de 18,5 até 24,9: peso adequado;
IMC de 25,0 até 29,9: sobrepeso;
IMC igual ou maior que 30,0: obesidade.
Fórmula: IMC = peso / (altura * altura)*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 172; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */