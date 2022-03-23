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
		  	jogos()
		  	pare
		  	caso 2:
  	  		consoles()
		  	pare
		  	caso 3:

		  		acessorios()



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
	funcao jogos(){
		
	inteiro opcao3
	cadeia nomeJogos[5]={"Fifa22","Desert Strike","Minecraft","Pac-Man","Pokemon Legends Arceus"}
	inteiro quantidadeJogos[5]={9, 1, 5, 2, 9}
	cadeia descricao[5]={"Futbol", "Nave", "Aventura", "labirinto", "Roubo"}
	real precoJogos[5]={200.00, 80.00, 150.00, 70.00, 450.00}
	cadeia opcaoJogos[5]={"[1]", "[2]", "[3]", "[4]", "[5]"}
	para(inteiro i=0; i<5;i++){
		escreva("\n",opcaoJogos[i]," ", nomeJogos[i], " R$" ,precoJogos[i], "\n")
		escreva(descricao[i], "\nEstoque: ", quantidadeJogos[i], "\n")
		}
	escreva("\n[6]Carrinho\n\n[7]Voltar Menu")
	escreva("\n\nEscolha sua Opcao!")
	leia(opcao3)

	escolha(opcao3){
		caso 1:
			limpa()
			escreva("Voce Adicionou ", nomeJogos[0]," ao carrinho")
			escreva("\n")
			jogos()
		pare
		caso 2:
			limpa()
			escreva("Voce Adicionou ", nomeJogos[1]," ao carrinho")
			escreva("\n")
			jogos()
		pare
		caso 3:
			limpa()
			escreva("Voce Adicionou ", nomeJogos[2]," ao carrinho")
			escreva("\n")
			jogos()
		pare
		caso 4:
			limpa()
			escreva("Voce Adicionou ", nomeJogos[3]," ao carrinho")
			escreva("\n")
			jogos()
		pare
		caso 5:
			limpa()
			escreva("Voce Adicionou ", nomeJogos[4]," ao carrinho")
			escreva("\n")
			jogos()
		pare
		caso 6:
			//Chamar funcao carrinho
		pare
		caso 7:
			//chamar Menu
		pare
			//Tratar Erros
		}
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


  funcao acessorios ()
	{
     cadeia numero[5]= {"[1]", "[2]", "[3]", "[4]", "[5]"}
     inteiro opcao
	cadeia nome_produto[5]= {"controle sem fio Xbox","Teclado de juegos inalambricos Coloridas retroiluminarias ", "Mouse Gamer Usb Msi 4200DPI Clutch GM08", "Controle Mobile Raze", "Kishi de Android Estuche FR-TEC"}
	cadeia descricao[5]= {"compatível com dispositivos selecionados e versões de sistema operacional.", "O teclado mais desejado modelo: K82.", "Auto-calibração, roda de rolagem ajusável, fio trançado em nylon.", "Eleve o nível do seu desempenho de jogo em dispositivos móveis.","Proteção de caixa rídida para seu controlador kishi: Esta bolsa de viagem protetora manterá seu controlador móvel Razer Kishi protegido." }
	inteiro Qtd[5] = {30, 12, 20, 15, 25}
	inteiro preco[5]= {500 , 300 , 150, 400, 100}
	
	para (inteiro a=0; a<5; a++) {
			escreva("\n",numero[a], " ", nome_produto[a],": ", preco[a],"R$", "\n" ,descricao[a],"\n", "estoque ", Qtd[a],"\n")
		                        }
		          escreva("\nQual produto você deseja comprar?\n")
		          escreva("\n [6] Adicionar no carrinho\n\n [7] Voltar ao menu principal\n")
		          escreva("\nEscolha uma opção: ")
		          leia(opcao)
		          
		  		 escolha (opcao) {
		   			caso 1: escreva("\nVocê adicionou: ", nome_produto[0], " ao carrinho")
		   				acessorios()
		   			pare

		   			caso 2: escreva("\nVocê adicionou: ", nome_produto[1], " ao carrinho")
		   				acessorios()
		   			pare
                         	
		   			caso 3: escreva("\nVocê adicionou: ", nome_produto[2], " ao carrinho")
		   				acessorios()
		   			pare

		   			caso 4: escreva("\nVocê adicionou: ", nome_produto[3], " ao carrinho")
		   				acessorios()
		   			pare

		   			caso 5: escreva("\nVocê adicionou: ", nome_produto[4], " ao carrinho")
		   				acessorios()
		   			pare

		   			caso 6: //função carrinho
		   			pare

		   			caso 7: // voltar ao menu
		   	
		   }
	}
	
	
}
 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1844; 

 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */