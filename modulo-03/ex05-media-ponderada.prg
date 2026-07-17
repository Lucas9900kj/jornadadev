FUNCTION Main()
    LOCAL n1, n2, n3, n4
    LOCAL nMediaPonderada
    LOCAL cValor

    QOUT("=== CALCULO DE MEDIA PONDERADA ===")

    QOUT("")
    QOUT("Digite a primeira nota:") 
    ACCEPT TO cValor
    n1 = VAL(cValor)

    QOUT("Digite a segunda nota:")
    ACCEPT TO cValor
    n2 = VAL(cValor)

    QOUT("Digite a terceira nota:")
    ACCEPT TO cValor
    n3 = VAL(cValor)

    QOUT("Digite a quarta nota:")
    ACCEPT TO cValor
    n4 = VAL(cValor)

    nMediaPonderada = (n1 * 1 + n2 * 2 + n3 * 3 + n4 * 4) / 10

    QOUT("")
    QOUT("A media ponderada das notas é: " + ALLTRIM(STR(nMediaPonderada, 10, 2)))
RETURN NIL
