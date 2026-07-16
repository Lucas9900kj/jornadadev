FUNCTION Main()

    LOCAL nNumero := 50
    LOCAL cTexto := ""
    //LOCAL dData := DATE()
    LOCAL Ddata := DATE()

    //QOut("Numero: " + ALLTRIM(STR( nNumero )) + " Texto: " + cTexto + " Data: " + DTOC( Ddata )) **essa tambem e uma das formas de se fazer**

    QOut("Texto: " + cTexto)
    QOut("Numero: " + ALLTRIM(STR( nNumero )))
    QOut("Data: " + DTOC( Ddata ))


RETURN NIL
