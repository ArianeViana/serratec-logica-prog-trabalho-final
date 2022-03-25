programa
{
	
	inteiro  opcaoMenuPrincipal
	cadeia usuario
	inteiro senha

	inteiro somaCarrinho = 0
	cadeia addCarrinho[30] 
	cadeia addCarrinhoExibicao[30] 

	inteiro quantidadeItem[15] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
	
	real precoAuxiliar[15]
	logico teste = verdadeiro


	funcao inicio()
	{	
		// chamar usuario logado
		logo()
		login()
		menuPrincipal()
		
	}

	funcao login(){
		escreva("-------------------------------------------\n\n\n\n\n\n\n\n\n")
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
		  		limpa()
		  		jogos()
		  	pare
		  	caso 2:
		  		limpa()
  	  			consoles()
		  	pare
		  	caso 3:
		  		limpa()
		  		acessorios()
		  	pare
		  	caso 4:
		  		//loigin-Ricardo
		  	pare
		  	caso 5:
		  		limpa()
		  		carrinho()
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

		
	inteiro opcao1
	cadeia nomeJogos[5]={"Serratec Adveture","Zepa Conquest","Limpa()","Enquanto infinity","Save the Programmer"}
	inteiro quantidadeJogos[5]={9, 10, 13, 20, 40}
	cadeia descricao[5]={"Jogo de aventura","Jogo de ação","Jogo de Quebra-Cabeça","Jogo Infinito","Jogo de Terror"}
	real precoJogos[5]={199.99, 299.99, 149.99, 69.99, 249.99}
	cadeia opcaoJogos[5]={"[1]", "[2]", "[3]", "[4]", "[5]"}
	para(inteiro k=0; k<5;k++){
		escreva("\n",opcaoJogos[k]," ", nomeJogos[k], " R$" ,precoJogos[k], "\n")
		escreva(descricao[k], "\nEstoque: ", quantidadeJogos[k], "\n")
		}
	escreva("\n[6]Carrinho\n\n[7]Voltar Menu")
	escreva("\n\nEscolha o número da opção que você deseja realizar: ")
	leia(opcao1)

	escolha(opcao1){
		caso 1:
			teste = verdadeiro
			limpa()

			escreva("Você adicionou ", nomeJogos[0]," ao carrinho!")

			escreva("\n")
			addCarrinho[somaCarrinho] = nomeJogos[0]
			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeJogos[0]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1

					precoAuxiliar[j] = precoJogos[0]

					jogos()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeJogos[0]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeJogos[0]){
						quantidadeItem[i] = quantidadeItem[i] + 1

						precoAuxiliar[i] = precoJogos[0]

						
					}
				}
				
				somaCarrinho = somaCarrinho + 1
				jogos()
			}
		pare
		caso 2:
			teste = verdadeiro
			limpa()

			escreva("Você adicionou ", nomeJogos[1]," ao carrinho!")

			escreva("\n")
			addCarrinho[somaCarrinho] = nomeJogos[1]
			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeJogos[1]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1

					precoAuxiliar[j] = precoJogos[1]

					jogos()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeJogos[1]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeJogos[1]){
						quantidadeItem[i] = quantidadeItem[i] + 1

						precoAuxiliar[i] = precoJogos[1]

					}
				}
				
				somaCarrinho = somaCarrinho + 1
				jogos()
			}
		pare
		caso 3:
		teste = verdadeiro
			limpa()

			escreva("Você adicionou ", nomeJogos[2]," ao carrinho!")

			escreva("\n")
			addCarrinho[somaCarrinho] = nomeJogos[2]
			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeJogos[2]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1

					precoAuxiliar[j] = precoJogos[2]

					jogos()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeJogos[2]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeJogos[2]){
						quantidadeItem[i] = quantidadeItem[i] + 1

						precoAuxiliar[i] = precoJogos[2]

					}
				}
				
				somaCarrinho = somaCarrinho + 1
				jogos()
			}
		pare
		caso 4:
			teste = verdadeiro
			limpa()

			escreva("Você adicionou ", nomeJogos[3]," ao carrinho!")

			escreva("\n")
			addCarrinho[somaCarrinho] = nomeJogos[3]
			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeJogos[3]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1

					precoAuxiliar[j] = precoJogos[3]

					jogos()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeJogos[3]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeJogos[3]){
						quantidadeItem[i] = quantidadeItem[i] + 1

						precoAuxiliar[i] = precoJogos[3]

					}
				}
				
				somaCarrinho = somaCarrinho + 1
				jogos()
			}
		pare
		caso 5:
			teste = verdadeiro
			limpa()

			escreva("Você adicionou ", nomeJogos[4]," ao carrinho!")

			escreva("\n")
			addCarrinho[somaCarrinho] = nomeJogos[4]
			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeJogos[4]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1

					precoAuxiliar[j] = precoJogos[4]

					jogos()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeJogos[4]
				
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeJogos[4]){
						quantidadeItem[i] = quantidadeItem[i] + 1

						precoAuxiliar[i] = precoJogos[4]

					}
				}
				
				somaCarrinho = somaCarrinho + 1
				jogos()
			}
		caso 6:
			limpa()
			carrinho()
		pare
		caso 7:
			limpa()
			menuPrincipal()


		caso contrario: 
			limpa()
			escreva("Coloque uma opção válida\n")
			jogos()
			

		}
	}
	funcao consoles(){
		inteiro opcao2
		cadeia nomeConsole[5]={"Pc Serratec", "Serra Station 8", "Super Lógica", "Não Entendo SWitch", "Serra Drive"}
		inteiro qtdeConsole[5]={23, 14, 22, 15, 17}
		cadeia descConsole[5]={"Descrição: Agilidade", "Descrição: Necessita de persistência", "Descrição : Memória 1 TB  ", "Descrição: Recussividade", "Descrição: Edição limitada"}
		real precoConsole[5]={2499.99, 5499.99, 999.99, 2999.99, 999.99}
		cadeia opcaoConsole[5]={"[1]", "[2]", "[3]", "[4]", "[5]"}
		para(inteiro k=0; k<5;k++){
			escreva("\n", opcaoConsole[k]," " , nomeConsole[k], "  R$" , precoConsole[k],  "\n")
			escreva(descConsole[k], "\nEstoque: ", qtdeConsole[k], "\n")
		}
		escreva("\n[6] Carrinho\n\n[7] Voltar ao menu principal" )
		escreva("\n\nEscolha o número da opção que você deseja realizar: ")
		leia(opcao2)

		escolha(opcao2){

		caso 1:
			teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeConsole[0]," ao carrinho!")
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeConsole[0]
			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeConsole[0]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoConsole[0]
					consoles()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeConsole[0]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeConsole[0]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoConsole[0]
						
					}
				}
				
				somaCarrinho = somaCarrinho + 1

				consoles()
			}
		pare
		caso 2:
			teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeConsole[1]," ao carrinho!")
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeConsole[1]
			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeConsole[1]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoConsole[1]
					consoles()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeConsole[1]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeConsole[1]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoConsole[1]
					}
				}
				

				somaCarrinho = somaCarrinho + 1
				consoles()
			}
		pare
		caso 3:
		teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeConsole[2]," ao carrinho!")
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeConsole[2]
			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeConsole[2]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoConsole[2]
					consoles()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeConsole[2]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeConsole[2]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoConsole[2]
					}
				}
				
				somaCarrinho = somaCarrinho + 1
				consoles()
			}
		pare
		caso 4:
			teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeConsole[3]," ao carrinho!")
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeConsole[3]
			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeConsole[3]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoConsole[3]
					consoles()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeConsole[3]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeConsole[3]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoConsole[3]
					}
				}
				
				somaCarrinho = somaCarrinho + 1
				consoles()
			}
		pare
		caso 5:
			teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeConsole[4]," ao carrinho!")
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeConsole[4]
			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeConsole[4]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoConsole[4]
					consoles()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeConsole[4]
				
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeConsole[4]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoConsole[4]
					}
				}
				
				somaCarrinho = somaCarrinho + 1

				consoles()
			}
			caso 6:
				limpa() 

				carrinho()
			pare
			caso 7:
				limpa()
				menuPrincipal()
			pare
			caso contrario: 
				limpa()
				escreva("Coloque uma opção válida\n")
				consoles()
				

		}

	}


  funcao acessorios ()

  {	

     cadeia numero[5]= {"[1]", "[2]", "[3]", "[4]", "[5]"}
     inteiro opcao

	cadeia nomeAcessorios[5]= {"controle sem fio Xbox","Teclado de juegos inalambricos Coloridas retroiluminarias ", "Mouse Gamer Usb Msi 4200DPI Clutch GM08", "Controle Mobile Raze", "Kishi de Android Estuche FR-TEC"}

	cadeia descricao[5]= {"compatível com dispositivos selecionados e versões de sistema operacional.", "O teclado mais desejado modelo: K82.", "Auto-calibração, roda de rolagem ajusável, fio trançado em nylon.", "Eleve o nível do seu desempenho de jogo em dispositivos móveis.","Proteção de caixa rídida para seu controlador kishi: Esta bolsa de viagem protetora manterá seu controlador móvel Razer Kishi protegido." }
	inteiro Qtd[5] = {30, 12, 20, 15, 25}
	inteiro preco[5]= {500 , 300 , 150, 400, 100}
	
	para (inteiro a=0; a<5; a++) {

			escreva("\n",numero[a], " ", nomeAcessorios[a],": ", preco[a],"R$", "\n" ,descricao[a],"\n", "estoque ", Qtd[a],"\n")
		                        }
	escreva("\nQual produto você deseja comprar?\n")
	escreva("\n [6] Adicionar no carrinho\n\n [7] Voltar ao menu principal\n")
	escreva("\nEscolha uma opção: ")
	leia(opcao)
		          
	escolha (opcao) {
			caso 1: 
				limpa()
		   		escreva("\nVocê adicionou: ", nomeAcessorios[0], " ao carrinho")
		   		somaCarrinho = somaCarrinho + 1
				addCarrinho[somaCarrinho] = nomeAcessorios[0]
		   		acessorios()
		   	pare

		   	caso 2: 
		   		limpa()
		   		escreva("\nVocê adicionou: ", nomeAcessorios[1], " ao carrinho")
		   		somaCarrinho = somaCarrinho + 1
				addCarrinho[somaCarrinho] = nomeAcessorios[1]
		   		acessorios()
		   	pare
                         	
		   	caso 3:
		   		limpa()
		   		escreva("\nVocê adicionou: ", nomeAcessorios[2], " ao carrinho")
		   		somaCarrinho = somaCarrinho + 1
				addCarrinho[somaCarrinho] = nomeAcessorios[2]
		   		acessorios()
		   	pare

		   	caso 4: 
		   		limpa()
		   		escreva("\nVocê adicionou: ", nomeAcessorios[3], " ao carrinho")
		   		somaCarrinho = somaCarrinho + 1
				addCarrinho[somaCarrinho] = nomeAcessorios[3]
		   		acessorios()
		   	pare

		   	caso 5: 
		   		limpa()
		   		escreva("\nVocê adicionou: ", nomeAcessorios[4], " ao carrinho")
		   		somaCarrinho = somaCarrinho + 1
				addCarrinho[somaCarrinho] = nomeAcessorios[4]
		   		acessorios()
		   	pare

		   	caso 6: 
		   		limpa()
				carrinho()
		   	pare

		   	caso 7: 
		   		limpa()
				menuPrincipal()
			pare
		   	
		   }
	}
	funcao carrinho(){
		
		
		caracter respostaMenu, respostaCompra
		
		escreva("===Carrinho de Compras===")

				
		para(inteiro i = 0; i <= somaCarrinho; i++){
			escreva("\n\n", addCarrinhoExibicao[i], "\n")
			se(quantidadeItem[i] > 0){
				escreva("Quantidade: ", quantidadeItem[i], "\n")

				escreva("Preço Unitário: ", precoAuxiliar[i])

			}
			 
		}

		
		escreva("\nVocê quer voltar ao menu? [s/n]")
		leia(respostaMenu)
		se (respostaMenu == 's'){
			limpa()
			menuPrincipal()
			//escolhaMenu()
		} 
		se(respostaMenu == 'n'){
			escreva("Você quer confirmar a sua compra? [s/n]")
			leia(respostaCompra)
			se(respostaCompra == 's'){
				escreva("Compra realizada com sucesso!")
			}
			se(respostaCompra == 'n'){
				escreva("Seus produtos ficarão no carrinho te esperando!")
			}
		}

		//teste github
		
		
		
	}

	funcao logo(){
limpa()
escreva("\n      *****                             ****              ****             ****           ")
escreva("\n    *********                         ********          ********         ********         ")
escreva("\n   *****  ****                       **********        **********       **********        ")
escreva("\n   ***********                      ***  ****  *      ***  ****  *     ***  ****  *       ")
escreva("\n  *********                         ***  ****  *      ***  ****  *     ***  ****  *       ")
escreva("\n  *****            **   **   **     ************      ************     ************       ")
escreva("\n  ***             **** **** ****    ************      ************     ************       ")
escreva("\n  *****           **** **** ****    ************      ************     ************       ")
escreva("\n  *********        **   **   **     ************      ************     ************       ")
escreva("\n    **********                      ************      ************     ************       ")
escreva("\n    **********                      ************      ************     ************       ")
escreva("\n     ********                       *** **** ***      *** **** ***     *** **** ***       ")
escreva("\n       ****                          *   **   *        *   **   *       *   **   *        ")
escreva("\n                                                                                          ")
escreva("\n                                                                                          ")
escreva("\n                                                                                          ")
escreva("\n      ***********             *********   ***   *************   ***********               ")
escreva("\n      ***********             **********  ***   *************   ***********               ")
escreva("\n      ***     ***             ***     **  ***        ***        ***                       ")
escreva("\n      ***     ***             ***     **  ***        ***        ***                       ")
escreva("\n      ***********   *******   **********  ***        ***        ***********               ")
escreva("\n      ***********   *******   **********  ***        ***        ***********               ")
escreva("\n      ***     ***             ***     **  ***        ***                ***               ")
escreva("\n      ***     ***             ***     **  ***        ***                ***               ")
escreva("\n      ***********             **********  ***        ***        ***********               ")
escreva("\n      ***********             *********   ***        ***        ***********               ")
	}
	
}
 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 

 * @POSICAO-CURSOR = 3191; 

 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */