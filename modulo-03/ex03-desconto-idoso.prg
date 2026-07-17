PROCEDURE Main()

    LOCAL cNome
    LOCAL cData
    LOCAL cPreco
    LOCAL dNasc
    LOCAL nPreco
    LOCAL nIdade
    LOCAL nDesconto
    LOCAL nTotal

    QOUT("=== CALCULO DE DESCONTO ===")

    QOUT("")
    QOUT("Digite o nome:")
    ACCEPT TO cNome

    QOUT("Digite a data de nascimento (dd/mm/aaaa):")
    ACCEPT TO cData
    dNasc = CTOD(cData)

    QOUT("Digite o preco do produto:")
    ACCEPT TO cPreco
    nPreco = VAL(cPreco)

    nIdade = INT((DATE() - dNasc) / 365)

    IF nIdade > 60
        nDesconto = nPreco * 0.125
    ELSE
        nDesconto = 0
    ENDIF

    nTotal = nPreco - nDesconto

    QOUT("")
    QOUT("===== RESUMO =====")
    QOUT("Cliente: " + cNome)
    QOUT("Idade: " + STR(nIdade,3))
    QOUT("Preco: R$ " + STR(nPreco,10,2))
    QOUT("Desconto: R$ " + STR(nDesconto,10,2))
    QOUT("Total: R$ " + STR(nTotal,10,2))

RETURN
