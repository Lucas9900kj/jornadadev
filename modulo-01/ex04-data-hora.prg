// OBS: Ficha com data e horas atuais
//=========================================

FUNCTION Main()

    LOCAL cNome   := "Lucas Soares"
    LOCAL nIdade  := 24
    
    hb_cdpSelect( "PT850" )

    QOut("===========================")
    QOut("Nome   : " + cNome)
    QOut("Idade  : " + Str(nIdade))
    QOut("Data   : " + DToC(Date()))
    QOut("Hora   : " + Time())
    QOut("===========================")

RETURN NIL

FUNCTION OutraFuncao()
    
    RETURN NIL
