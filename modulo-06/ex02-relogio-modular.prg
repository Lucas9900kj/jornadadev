    FUNCTION Main()

            LOCAL cHora
            LOCAL nContador

    FOR nContador := 1 TO 30

            cHora := Obterhora()

            cHora := FormatarHora(cHora)

            ExibirHora(cHora)

            HB_IdleSleep(1)

    NEXT

    RETURN NIL

    FUNCTION ObterHora()

            RETURN Time()

    FUNCTION FormatarHora(chora)

            RETURN cHora

    FUNCTION ExibirHora(cHora)

            QOut(cHora)

    RETURN NIL
