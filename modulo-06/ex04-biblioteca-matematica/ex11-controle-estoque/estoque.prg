PROCEDURE Main()

    LOCAL aProdutos
    LOCAL cOpcao

    aProdutos := {}

    DO WHILE .T.

        cOpcao := Menu()

        DO CASE

        CASE cOpcao == "1"
            CadastrarProduto(aProdutos)

        CASE cOpcao == "2"
            ListarProdutos(aProdutos)

        CASE cOpcao == "3"
            EntradaEstoque(aProdutos)

        CASE cOpcao == "4"
            SaidaEstoque(aProdutos)

        CASE cOpcao == "5"
            BuscarProdutoTela(aProdutos)

        CASE cOpcao == "6"
            RelatorioEstoque(aProdutos)

        CASE cOpcao == "0"
            EXIT

        OTHERWISE
            QOut("Opcao invalida.")

        ENDCASE

    ENDDO

RETURN

FUNCTION Menu()

    LOCAL cOpcao

    CLS

    QOut("==============================")
    QOut(" CONTROLE DE ESTOQUE")
    QOut("==============================")
    QOut("1 - Cadastrar Produto")
    QOut("2 - Listar Produtos")
    QOut("3 - Entrada de Estoque")
    QOut("4 - Saida de Estoque")
    QOut("5 - Buscar Produto")
    QOut("6 - Relatorio")
    QOut("0 - Sair")
    QOut("==============================")

    ACCEPT "Opcao: " TO cOpcao

RETURN cOpcao
