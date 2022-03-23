programa
{
	
	inteiro  opcaoMenuPrincipal
	cadeia usuario
	inteiro senha
	funcao inicio()
	{	// chamar usuario logado
		login()
		menuPrincipal()
		
	}

	funcao login(){
		escreva("-------------------------------------------\n")
		escreva("\t»»»»» IDENTIFICAÇÃO «««««\n")
		escreva("-------------------------------------------\n")
		escreva("Nome de usuário:\n")
		escreva("(letras minúsculas e sem espaço)\n")
		leia(usuario)
		escreva("Senha: \n")
		leia(senha)

		limpa()	
		

		se (usuario == "ricardo" e senha == 123) {
			boasVindas()
		}
			senao se (usuario == "thiago" e senha == 234){
				boasVindas()
			}
				senao se (usuario == "ariane" e senha == 345){
					boasVindas()
				}
					senao se (usuario == "douglas" e senha == 456){
						boasVindas()
					}
						senao se (usuario == "andrea" e senha == 567){
							boasVindas()
						}
							senao se (usuario == "vanessa" e senha == 678){
								boasVindas()
							}
								senao se (usuario == "admin" e senha == 789){
									boasVindas()	
								}	
					
		senao
		{
			escreva("-------------------------------------------\n")
			escreva(" ## usuário ou senha inválidos ##\n")
			escreva("-------------------------------------------\n")
			escreva(" Tente Novamente \n")
			login()	
		}
			
	}
	funcao boasVindas(){
		escreva("-------------------------------------------\n")
		escreva("\t Olá ", usuario, ", seja bem-vindo(a)!\n")
		escreva("-------------------------------------------\n")
		escreva("\t»»»»» BOAS COMPRAS «««««\n")
		escreva("-------------------------------------------\n")
		// chamar função menu
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
  	  		consoles()
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
	funcao consoles(){
		inteiro opcao2
		cadeia nomeConsole[5]={"Xbox", "PlayStation5", "SuperNitendo", "NitendoSWitch", "MegaDrive"}
		inteiro qtdeConsole[5]={3, 4, 2, 5, 1}
		cadeia descConsole[5]={"Descrição: Transmissão 4k", "Descrição: 825 GB", "Descrição : 32 GB ", "Descrição: Oled 64 GB", "Descrição: Edição limitada"}
		real precoConsole[5]={2500.00, 5500.00, 1000.00, 3000.00, 1000.00}
		cadeia opcaoConsole[5]={"[1]", "[2]", "[3]", "[4]", "[5]"}
		para(inteiro i=0; i<5;i++){
			escreva("\n", opcaoConsole[i]," " , nomeConsole[i], "  R$" ,precoConsole[i],  "\n")
			escreva(descConsole[i], "\nEstoque: ", qtdeConsole[i], "\n")
		}
		escreva("\n[6] Carrinho\n\n[7] Voltar ao menu principal" )
		escreva("\n\nEscolha sua opção: ")
		leia(opcao2)

		escolha(opcao2){
			caso 1:
				limpa() 
				escreva("\nVocê adicionou ", nomeConsole[0], " ao carrinho")
				escreva("\n")
				consoles()
				
			pare
			caso 2: 
				limpa() 
				escreva("\nVocê adicionou ", nomeConsole[1], " ao carrinho")
				escreva("\n")
				consoles()
			pare
			caso 3: 
				limpa() 
				escreva("\nVocê adicionou ", nomeConsole[2], " ao carrinho")
				escreva("\n")
				consoles()
			pare
			caso 4: 
				limpa()
				escreva("\nVocê adicionou ", nomeConsole[3], " ao carrinho")
				escreva("\n")
				consoles()
			pare
			caso 5: 
				limpa()
				escreva("\nVocê adicionou ", nomeConsole[4], " ao carrinho")
				escreva("\n")
				consoles()
			pare
			caso 6:
				limpa() 
				//Chamar função carrinho
			pare
			caso 7:
				limpa()
				//Chamar função menu
			pare
				//Tratar erros
				
				}
	}
}
 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 127; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */