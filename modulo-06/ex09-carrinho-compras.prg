PROCEDURE Main()

    LOCAL aCarrinho
    LOCAL cNome
    LOCAL nPreco, cPreco
    LOCAL cOpcao
    LOCAL nContador
    LOCAL nTotal

    aCarrinho := {}
    nTotal := 0

    cOpcao := "S"

    DO WHILE Upper(cOpcao) == "S"

        ACCEPT "Nome do produto: " TO cNome

        ACCEPT "Preco do produto: " TO cPreco
        nPreco := Val(cPreco)

        AAdd(aCarrinho, {cNome, nPreco})

        ACCEPT "Deseja adicionar outro produto? (S/N): " TO cOpcao

    ENDDO

    QOut("")
    QOut("===== CARRINHO DE COMPRAS =====")

    FOR nContador := 1 TO Len(aCarrinho)

        QOut("Produto: " + aCarrinho[nContador][1])
        QOut("Preco: R$ " + LTrim(Str(aCarrinho[nContador][2], 8, 2)))

        nTotal := nTotal + aCarrinho[nContador][2]

        QOut("----------------------------")

    NEXT

    QOut("Total da compra: R$ " + LTrim(Str(nTotal, 8, 2)))

RETURN
