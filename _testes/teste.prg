FUNCTION Main()
    LOCAL cNome:= "Lucas"
    LOCAL cCidade:= "Maua"
    LOCAL cCurso:= "Harbour/ADVPL"

    hb_cdpSelect("PT850")

    Qout("=========================")
    QOut(" FICHA DE APRENSENTACAO  ")
    Qout("=========================")

    QOut("Nome: " + cNome)
    QOut("Cidade: " + cCidade)
    QOut("Curso: " + cCurso)

    QOut("=========================")

    RETURN NIL
