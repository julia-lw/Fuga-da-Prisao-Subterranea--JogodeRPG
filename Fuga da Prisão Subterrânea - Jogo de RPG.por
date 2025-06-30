programa {
    funcao inicio() {
        cadeia nomePersonagem
        inteiro opcao,item,caminho,lado

        //Introdução
        escreva("Olá, antes de começar o jogo, escolha um nome para o seu personagem: ")
        leia(nomePersonagem)
        escreva(nomePersonagem, " acorda em uma cela úmida e escura, sem memória de como foi parar ali. Sua última lembrança é uma sensação de tontura. Sua cabeça dói, e um som constante de goteira ecoa nas paredes de pedra.\n")
        escreva("Você está na Fortaleza do Abismo, uma prisão mais antiga do que os montes acima dela. Seu objetivo é claro: escapar desta prisão.\n")

        //Descrição de personagem
        escreva("---")
        escreva("\nDescrição de seu personagem:")
        escreva("\nNome: ", nomePersonagem, " \nItens: 0\nVida: 1\nForça de combate: 5\n")
        escreva("---")
        escreva("\nPressione enter para continuar ")
        leia(nomePersonagem)

        //Primeiro desafio: Saia da cela.
        escreva("\nPrimeiro desafio: saia da cela.\nVocê olha pela cela, e encontra duas opções de fuga: \n(1) Uma tranca enferrujada na porta da cela.\n(2) Um buraco no chão.\nQual você escolhe? ")
        leia(opcao)

        escolha(opcao){
            caso 1:
                escreva("Você escolheu a tranca enferrujada. Você força a tranca da porta e sai, porém o barulho acorda o guarda. Ele rapidamente pega seu braço antes que possas correr, te jogando e prendendo de volta na cela.\n")
                escreva("Game Over.\n")
                retorne
            caso 2:
                escreva("Você escolheu o buraco no chão. Precisas de algo para o alargar. Encontras três itens na cela.\n(1) Colher.\n(2) Pedaço do pé da cama.\n(3) Lixa.\nQual item você escolhe? ")
                leia(item)

                se(item==3){
                    escreva("Você escolheu uma lixa, alargando o buraco e acessando uma pequena saída.\nVocê acessa uma nova área: os corredores do térreo. Prepara-se para correr.\n")
                    escreva("Pressione enter para continuar \n")
                    leia(nomePersonagem)
                   
                    //Segunda decisão
                    escreva("---")
                    escreva("\nVocê está no início de um corredor extenso, ocupado por guardas na porta de cada uma das celas. Seu objetivo é chegar até o outro lado sem ser pego. Você pode:\n(1) Lutar.\n(2) Esquivar e correr.\nO que você escolhe? ")
                    leia(opcao)

                    escolha(opcao){
                        caso 1:
                            escreva("Você luta contra os guardas, porém eles te encurralam e você é pego.\nGame Over.\n")
                            retorne
                        caso 2:
                            escreva("Você esquiva dos guardas e corre até a saída no outro lado, porém um prisioneiro puxa seu braço e pede um favor num tom desesperado. O que você faz?\n(1) Ignora e golpeia o braço do prisioneiro para se soltar.\n(2) Escuta seu pedido.\n")
                            leia(opcao)

                            se(opcao==1){
                                escreva("Você ignora o pedido do prisioneiro e golpeia seu braço, se soltando e chegando até a porta, porém ela está trancada e os guardas te pegam.\nGame Over.\n")
                                retorne
                            }senao se(opcao==2){
                                escreva("Você escuta o pedido do prisioneiro, e ele te pede para lhe alcançar uma pequena bola colorida no chão, a alguns centímetros de distância de sua cela.\n´´É meu único conforto neste fim de mundo, por favor!``\nEle te promete um item importante em troca.\nVocê o entrega?\n(1) Não.\n(2) Sim.\n")
                                leia(opcao)

                                se(opcao==1){
                                    escreva("Você não o entrega e fica preso no corredor, sendo pego pelos guardas.\nGame Over.\n")
                                    retorne
                                }senao se(opcao==2){
                                    escreva("Você entrega a bolinha e ele lhe dá uma chave que abre a porta para a saída do corredor, liberando uma nova área.\n")
                                    escreva("Pressione enter para continuar \n")
                                    leia(nomePersonagem)

                                    // Terceiro desafio
                                    escreva("---")
                                    escreva("\nVocê passa da porta e anda um pequeno percurso por um corredor. Uma abertura escura é avistada no fim do corredor. Você chega até lá e vê uma grade enferrujada cobrindo a entrada. Após tirá-la do caminho, você passa pela abertura e segue um longo caminho onde a escuridão é quase total, e cada passo ecoa nas paredes úmidas. Você mal consegue ver o que está a frente, mas a corrente de água fria nos seus tornozelos indica a direção. Seus olhos se esforçam para se adaptar.\nVocê continua andando e tropeça em algo na água. Ao tatear, suas mãos encontram uma lanterna pesada e fria. Você tenta ligá-la, mas percebe que as pilhas estão ausentes.\n")
                                    escreva("Pressione enter para continuar...\n")
                                    leia(nomePersonagem)

                                    escreva("Com o pequeno, e quase inexistente, resquício de luz, você vê na distância dois caminhos que podem ser percorridos. Por qual lado você vai?\n(1) Direita.\n(2) Esquerda.\n")
                                    leia(opcao)

                                    se(opcao==1){
                                        escreva("Você segue pela direita, sentindo uma forte correnteza puxar seus pés. Você tenta agarrar alguma coisa, mas não consegue ver nada, e as paredes estão úmidas demais para isso. Você acaba sendo arrastado para um abismo escuro e molhado.\nGame Over.\n")
                                        retorne
                                    }senao se(opcao==2){
                                        escreva("Você segue pela esquerda, tateando as paredes. De repente, seu pé encontra algo macio e flutuante. Com um arrepio, você percebe que é um corpo... Ao sentir os bolsos, encontra um par de pilhas velhas, rapidamente colocando na lanterna. Agora é possível ver os seus arredores, e você dá um pulo de susto ao ver com clareza o corpo a sua frente. Parece ser um guarda, e não deve estar aí por pouco tempo.\n")
                                        escreva("Pressione enter para continuar\n")
                                        leia(nomePersonagem)

                                        escreva("\nSeguindo em frente, você avança pelo esgoto. Um movimento rápido na beira da luz revela uma criatura nojenta. Um rato de um tamanho maior do que deveria ser parece te olhar com ameaça. O que você faz?\n(1) Luta com ele.\n(2) Corre.\n")
                                        leia(opcao)

                                        escolha(opcao){
                                            caso 1:
                                                escreva("Você decide lutar com o rato estranho. Sua força de combate é 5. A força dele é 7. Você ataca primeiro?\n(1) Não.\n(2) Sim.\n")
                                                leia(opcao)
                                                escreva("O rato é muito forte e você não consegue derrotá-lo.\nGame Over.\n")
                                                retorne
                                            caso 2:
                                                escreva("Você corre na direção oposta, achando um beco com uma válvula na parede. Ela deve ser girada pelo lado correto para ser aberta. Para qual lado você gira?\n(1) Esquerda.\n(2) Direita.\n")
                                                leia(lado)

                                                se(lado==1){
                                                    escreva("Você gira pra esquerda, mas nada acontece e o rato te alcança.\nGame Over.\n")
                                                    retorne
                                                }senao se(lado==2){
                                                    escreva("Você gira pra direita, e um som de impacto ecoa enquanto a parede atrás da válvula se abre, revelando uma alta escada de mão. Você rapidamente começa a subir pela escada, despistando o rato.\n")
                                                    escreva("Pressione enter para continuar...\n")
                                                    leia(nomePersonagem)

                                                    escreva("---")
                                                    escreva("\nApós muito tempo subindo, você encontra uma tampa no topo da escada e abre, finalmente chegando a superfície. Você sai e respira fundo, aliviado de estar enfim liberto da Fortaleza do Abismo.\n")
                                                    escreva("Você vê na distância montanhas e montes, sua única companhia é um jipe abandonado a alguns metros de distância. Você olha uma última vez para trás e anda até o jipe, dirigindo para longe, esperando voltar para casa o quanto antes.\n")
                                                    escreva("\n--- FIM DO JOGO! PARABÉNS" ,nomePersonagem, ", Você conseguiu escapar da prisão subterrânea! ---\n")
                                                }senao{
                                                    escreva("Opção inválida. Escolha entre 1 ou 2.\nGame Over.\n")
                                                    retorne
                                                }
                                            
                                        }

                                    }
                                } 
                            }
                        }
                    }
                }
        }
    }
