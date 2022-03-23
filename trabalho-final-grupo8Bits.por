programa
{
	
	inteiro  opcaoMenuPrincipal
	funcao inicio()
	{	// chamar usuario logado
		menuPrincipal()
		
	}
	
	funcao menuPrincipal(){
		  escreva("[1] Jogos\n[2] Consoles\n[3] Acessórios\n[4] Voltar Login\n[5] Carrinho\n[6] LogOut ")
		  escreva("\nEscolha uma opção: ")
		  leia(opcaoMenuPrincipal)
		  escolha(opcaoMenuPrincipal){
		  	caso 1: 
		  		//Jogos-Douglas
		  	pare
		  	caso 2:
		  		//Consoles-Vanessa
		  	pare
		  	caso 3:
		  		//Acessorios- Andrea
		  	pare
		  	caso 4:
		  		//loigin-Ricardo
		  	pare
		  	caso 5:
		  		//carrinho
		  	pare
		  	caso 6:
		  		//logOut
		  	pare
		  	caso contrario:
		  		erroEscolha()
		  		
		  }
		  
			}
	      
	funcao erroEscolha(){
			limpa()
			escreva("Por favor escolha uma opção válida: \n")
			menuPrincipal()
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 610; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */