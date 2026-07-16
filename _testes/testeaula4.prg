FUNCTION Main()

    LOCAL nIdade := 50
    LOCAL lAtivo := .T.

    if( nIdade > 60 .and. lAtivo )
        ? "A pessoa e idosa e esta ativa"
    ENDIF

    if( nIdade <= 60 .or. .NOT. lAtivo )
        ? "A pessoa nao e idosa ou nao esta ativa"
    ENDIF


RETURN NIL
