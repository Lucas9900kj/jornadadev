FUNCTION CadastrarProduto(aProdutos)

    LOCAL cCodigo
    LOCAL cNome
    LOCAL cQuantidade
    LOCAL cPreco

    LOCAL nCodigo
    LOCAL nQuantidade
    LOCAL nPreco

    ACCEPT "Codigo: " TO cCodigo
    nCodigo := Val(cCodigo)

    IF BuscarProduto(aProdutos, nCodigo) > 0
        QOut("Codigo ja cadastrado.")
        RETURN NIL

    ENDIF

    ACCEPT "Nome: " TO cNome

    ACCEPT "Quantidade: " TO cQuantidade
    nQuantidade := Val(cQuantidade)

    IF nQuantidade <= 0
        QOut("Quantidade invalida.")
        RETURN NIL

    ENDIF

    ACCEPT "Preco Unitario: " TO cPreco
    nPreco := Val(cPreco)

    IF nPreco <= 0
        QOut("Preco invalido.")
        RETURN NIL
    
    ENDIF

    AAdd(aProdutos, {nCodigo, cNome, nQuantidade, nPreco})

    QOut("Produto cadastrado!")

RETURN NIL

FUNCTION ListarProdutos(aProdutos)

    LOCAL nContador

    IF Len(aProdutos) == 0
        QOut("Nenhum produto cadastrado.")
        RETURN NIL
    ENDIF

    FOR nContador := 1 TO Len(aProdutos)

        QOut("------------------------------")
        QOut("Codigo.....: " + LTrim(Str(aProdutos[nContador][1])))
        QOut("Nome.......: " + aProdutos[nContador][2])
        QOut("Quantidade.: " + LTrim(Str(aProdutos[nContador][3])))
        QOut("Preco......: R$ " + ;
             LTrim(Str(aProdutos[nContador][4],8,2)))

    NEXT

RETURN NIL

FUNCTION BuscarProduto(aProdutos, nCodigo)

    LOCAL nContador

    FOR nContador := 1 TO Len(aProdutos)

        IF aProdutos[nContador][1] == nCodigo
            RETURN nContador
        ENDIF

    NEXT

RETURN 0

FUNCTION BuscarProdutoTela(aProdutos)

    LOCAL cCodigo
    LOCAL nCodigo
    LOCAL nPosicao

    ACCEPT "Informe o codigo: " TO cCodigo

    nCodigo := Val(cCodigo)

    nPosicao := BuscarProduto(aProdutos, nCodigo)

    IF nPosicao == 0

        QOut("Produto nao encontrado.")

    ELSE

        QOut("--------------------------")
        QOut("Codigo.....: " + LTrim(Str(aProdutos[nPosicao][1])))
        QOut("Nome.......: " + aProdutos[nPosicao][2])
        QOut("Quantidade.: " + LTrim(Str(aProdutos[nPosicao][3])))
        QOut("Preco......: R$ " + ;
            LTrim(Str(aProdutos[nPosicao][4],8,2)))

    ENDIF

RETURN NIL

FUNCTION EntradaEstoque(aProdutos)

    LOCAL cCodigo
    LOCAL cQuantidade

    LOCAL nCodigo
    LOCAL nQuantidade
    LOCAL nPosicao

    ACCEPT "Codigo do produto: " TO cCodigo
    nCodigo := Val(cCodigo)

    nPosicao := BuscarProduto(aProdutos, nCodigo)

    IF nPosicao == 0

        QOut("Produto nao encontrado.")
        RETURN NIL

    ENDIF

    ACCEPT "Quantidade de entrada: " TO cQuantidade

    nQuantidade := Val(cQuantidade)

    IF nQuantidade <= 0
        QOut("Quantidade invalida.")
        RETURN NIL

    ENDIF

    aProdutos[nPosicao][3] := ;
        aProdutos[nPosicao][3] + nQuantidade

    QOut("Estoque atualizado!")

RETURN NIL

FUNCTION SaidaEstoque(aProdutos)

    LOCAL cCodigo
    LOCAL cQuantidade

    LOCAL nCodigo
    LOCAL nQuantidade
    LOCAL nPosicao

    ACCEPT "Codigo do produto: " TO cCodigo
    nCodigo := Val(cCodigo)

    nPosicao := BuscarProduto(aProdutos, nCodigo)

    IF nPosicao == 0

        QOut("Produto nao encontrado.")
        RETURN NIL

    ENDIF

    ACCEPT "Quantidade de saida: " TO cQuantidade

    nQuantidade := Val(cQuantidade)

    IF nQuantidade <= 0
        QOut("Quantidade invalida.")
        RETURN NIL
    
    ENDIF
    
    IF nQuantidade > aProdutos[nPosicao][3]

        QOut("Quantidade insuficiente.")

    ELSE

        aProdutos[nPosicao][3] := ;
            aProdutos[nPosicao][3] - nQuantidade

        QOut("Saida realizada!")

    ENDIF

RETURN NIL

FUNCTION RelatorioEstoque(aProdutos)

    LOCAL nContador
    LOCAL nValorProduto
    LOCAL nValorTotal

    nValorTotal := 0

    IF Len(aProdutos) == 0

        QOut("Nenhum produto cadastrado.")
        RETURN NIL

    ENDIF

    QOut("==============================")
    QOut("RELATORIO DO ESTOQUE")
    QOut("==============================")

    FOR nContador := 1 TO Len(aProdutos)

        nValorProduto := ;
            aProdutos[nContador][3] * ;
            aProdutos[nContador][4]

        nValorTotal := ;
            nValorTotal + nValorProduto

        QOut("------------------------------")
        QOut("Codigo.....: " + ;
            LTrim(Str(aProdutos[nContador][1])))

        QOut("Nome.......: " + ;
            aProdutos[nContador][2])

        QOut("Quantidade.: " + ;
            LTrim(Str(aProdutos[nContador][3])))

        QOut("Preco......: R$ " + ;
            LTrim(Str(aProdutos[nContador][4],8,2)))

        QOut("Total......: R$ " + ;
            LTrim(Str(nValorProduto,10,2)))

    NEXT

    QOut("==============================")
    QOut("VALOR TOTAL DO ESTOQUE")
    QOut("R$ " + LTrim(Str(nValorTotal,12,2)))
    QOut("==============================")

RETURN NIL
