PROCEDURE Main()
    Jokenpo()
RETURN

procedure Jokenpo()
    LOCAL cJogadaComputador := SortearJogadaCPU()
    LOCAL cJogadaUsuario := ""
    LOCAL cVencedor := ""

    WHILE .T.
        ACCEPT "Escolha sua jogada (PEDRA, PAPEL ou TESOURA): " to cJogadaUsuario

        IF ValidarJogada(cJogadaUsuario)
            EXIT
        ENDIF
    ENDDO

    cVencedor := DefinirVencedor(cJogadaUsuario, cJogadaComputador)

    MostrarDisplayVencedor(cJogadaUsuario, cJogadaComputador, cVencedor)
RETURN

FUNCTION SortearJogadaCPU()
    LOCAL nNumeroAleatorio := HB_RandomInt(1, 3)
    LOCAL aJogadas := { "PEDRA", "PAPEL", "TESOURA" }


RETURN aJogadas[nNumeroAleatorio]

FUNCTION ValidarJogada(cJogada)
    LOCAL aJogadas := { "PEDRA", "PAPEL", "TESOURA" }
    LOCAL nI := 1

    FOR nI := 1 to len(aJogadas)
        IF UPPER(cJogada) == aJogadas[nI]
            RETURN .T.
        ENDIF
    NEXT
RETURN .F.

FUNCTION DefinirVencedor(cJogada1, cJogada2)
    LOCAL cJogadaFormatada1 := Upper(cJogada1)
    LOCAL cJogadaFormatada2 := Upper(cJogada2)

    IF cJogadaFormatada1 == cJogadaFormatada2
        RETURN "Empate!"
    ENDIF

    IF (cJogadaFormatada1 == "PEDRA" .AND. cJogadaFormatada2 == "TESOURA") .OR. ;
        (cJogadaFormatada1 == "TESOURA" .AND. cJogadaFormatada2 == "PAPEL") .OR.;
        (cJogadaFormatada1 == "PAPEL" .AND. cJogadaFormatada2 == "PEDRA")
        RETURN "Voce venceu!"
    ENDIF

RETURN "o Computador venceu!"

procedure MostrarDisplayVencedor(cJogadaUsuario, cJogadaComputador, cVencedor)
    QOut("")
    QOut("**************************")
    QOut("Resultado do Jokenpo")
    QOut("Voce jogou: " + UPPER(cJogadaUsuario))
    QOut("O Computador jogou: " + cJogadaComputador)
    QOut("O resultado e :")
    QOut(cVencedor)
    QOut("**************************")
    QOut("")
RETURN 
