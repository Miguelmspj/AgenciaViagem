Algoritmo "cadastroAgencia"


Var

cliente, destino: vetor [0..4] de caractere
opcao, nome: caractere
i, j: inteiro

procedimento inicializa()

Inicio

    enquanto opcao <> "3" faca

    escreval()
    escreval("         SISTEMA DE CADASTRO DE CLIENTES E DESTINOS         ")
    escreval()
    escreval("(1) Cadastro ")
    escreval("(2) Consulta")
    escreval("(3) Sair")
    leia(opcao)

    se opcao= "1" entao
    limpatela
    cadastra_cliente_destino()
    fimse


    se opcao = "2" então
    limpatela
    consulta_cliente_destino()
    fimse

    se opcao="3" entao
    para i de 0 ate 4 faca
    cliente [i] <- "x"
    fimpara
    limpatela
    escreval ("Obrigado, volte sempre!")
    fimse


    fimenquanto
    fimprocedimento


    procedimento cadastra_cliente_destino()

    inicio

    para i de 0 ate 4 faca
    se (cliente[i]= "") entao
    escreval("Nome do cliente:")
    leia(cliente[i])
    escreval("Destino escolhido:")
    leia(destino[i])
    voltar_menu()
    limpatela
    fimse
    fimpara
    escreval("Esgotou o limite de cadastro")
    fimprocedimento

    procedimento voltar_menu

    inicio
    escreval()
    escreval("----------------------------------")
    escreval("DESEJA REALIZAR UM NOVO CADASTRO? ")
    escreval("----------------------------------")
    escreval()
    escreval("S = SIM")
    escreval("N = NÃO")
    leia (opcao)
    se ((opcao="N") ou (opcao="n")) entao
    limpatela
    inicializa()
    senao
    limpatela
    cadastra_cliente_destino()
    fimse
    fimprocedimento

    procedimento consulta_cliente_destino()

    inicio
    j<-0
    escreval("Informe o nome do cliente:")
    leia(nome)
    para i de 0 ate 4 faca
    se nome=cliente[i] entao
    escreval ("Cliente:"  ,  cliente[i])
    escreval ("Destino:"  ,  destino [i])
    j<-j+1

    fimse
    fimpara

    se j=0 entao
    escreval("Cliente não cadastrado!")
    escreval("Destino não cadastrado!")
    fimse

    voltar_menu2()
    limpatela
    fimprocedimento

    procedimento voltar_menu2()

    inicio

    escreval()
    escreval("----------------------------------")
    escreval("DESEJA REALIZAR UMA NOVA CONSULTA?")
    escreval("----------------------------------")
    escreval()
    escreval("S = SIM")
    escreval("N = NÃO")
    leia (opcao)
    se ((opcao="N") ou (opcao="n")) entao
    limpatela
    inicializa()
    senao
    limpatela
    consulta_cliente_destino()
    fimse
    fimprocedimento


inicio

inicializa()


Fimalgoritmo