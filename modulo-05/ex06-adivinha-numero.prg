FUNCTION Main ()
    LOCAL nSecreto
    LOCAL nPalpite
    LOCAL ntentativa
    LOCAL lacertou

    nSecreto := HB_RandomInt(1, 100)
    lacertou := .F.

    QOut("Adivinha o numero entre 1  100. Voce tem apenas 7 chances!.")

    FOR ntentativa := 1TO 7
        nPalpite := -1
        WHILE nPalpite < 1 .OR. nPalpite > 100
            INPUT "Tentativa " + NTOC(nTentativa) + "/7 - Seu palpite: " TO nPalpite
            IF nPalpite < 1 .OR. nPalpite > 100
                Qout("Palpite invalido. Digite um valor entre 1 e 100!.")
            ENDIF
        ENDDO

        IF nPalpite == nSecreto
            lAcertou := .T.
            EXIT

        ELSEIF nPalpite < nSecreto
            Qout("O numero secreto e maior.")
        ELSE
            Qout("O numero secreto e menor.")
        ENDIF

    NEXT

    Qout("")
    IF lAcertou
        Qout("Parabens! Voce acertou em " + NTOC(nTentativa) + " tentativa(s).")
    ELSE
        Qout("Esgotaram suas tentativas :(")
    ENDIF
    Qout("O numero secreto era: " + NTOC(nSecreto))
RETURN NIL
