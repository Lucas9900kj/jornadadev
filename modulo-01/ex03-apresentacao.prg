REQUEST HB_CODEPAGE_PT850

FUNCTION Main()

    LOCAL cNome := "Lucas"
    LOCAL cCidade := "Sao Paulo - SP"
    LOCAL cCurso := "Harbour/ADVPL"

    HB_CDPSELECT("PT850")

    QOut("=========================")
    QOut(" FICHA DE APRESENTACAO  ")
    QOut("=========================")
    QOut("Nome    : " + cNome)
    QOut("Cidade  : " + cCidade)
    QOut("Curso : " + cCurso)
    QOut("=========================")
    
RETURN NIL
