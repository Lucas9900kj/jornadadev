FUNCTION Main()

    LOCAL cOperacao
    LOCAL nNumero1
    LOCAL nNumero2
    LOCAL nResultado

    hb_cdpSelect("PT850")

    ACCEPT "Informe a opera‡Æo (+, -, *, /, ^ ou R): " TO cOperacao

    nNumero1 := LerNumero("Informe o primeiro n£mero: ")
    nNumero2 := LerNumero("Informe o segundo n£mero: ")

    nResultado := Calcular(nNumero1, nNumero2, cOperacao)

    IF ValType(nResultado) == "L"

    QOut("")
    QOut("===== CALCULADORA =====")
    QOut("NÆo pode dividir por zero.")
    
    ELSE

    MostrarResultado(nResultado)

    ENDIF

RETURN NIL


FUNCTION LerNumero(cMensagem)

    LOCAL cNumero

    ACCEPT cMensagem TO cNumero

RETURN Val(cNumero)


FUNCTION Calcular(nNumero1, nNumero2, cOperacao)

    LOCAL nResultado

    DO CASE

    CASE cOperacao == "+"
        nResultado := nNumero1 + nNumero2

    CASE cOperacao == "-"
        nResultado := nNumero1 - nNumero2

    CASE cOperacao == "*"
        nResultado := nNumero1 * nNumero2

    CASE cOperacao == "/"

        IF nNumero2 == 0
            RETURN .F.
        ENDIF

        nResultado := nNumero1 / nNumero2

    CASE cOperacao == "^"
        nResultado := nNumero1 ^ nNumero2

    CASE cOperacao == "R"
        nResultado := Sqrt(nNumero1)

    OTHERWISE
        QOut("Opera‡Æo inv lida.")
        RETURN NIL

    ENDCASE

RETURN nResultado


FUNCTION MostrarResultado(nResultado)

    QOut("")
    QOut("===== CALCULADORA =====")
    QOut("Resultado: " + LTrim(Str(nResultado,10,2)))

RETURN NIL
