FUNCTION Main()
    LOCAL cNome:= "Lucas"
    LOCAL cCidade:= "Sao Paulo"
    LOCAL cCurso:= "Harbour/ADVPL"

    hb_cdpSelect("uf8")

    Qout("=========================")
    QOut(" FICHA DE APRENSENTACAO  ")
    Qout("=========================")

    QOut("Nome: " + cNome)
    QOut("Cidade: " + cCidade)
    QOut("Curso: " + cCurso)

    QOut("=========================")

RETURN NIL
