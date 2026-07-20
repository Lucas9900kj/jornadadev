FUNCTION Main()

    LOCAL cEntrada := ""
    LOCAL nValor := 0

    QOut("=== O DOBRO (WHILE) ===")
    QOut("Dica: Digite 0 ou um numero negativo para sair.")
    QOut("")

    //Laco Infinito
    WHILE .T.

        //Lendo a Entrada infinitamente dentro do laco
        ACCEPT "Digite um Numero inteiro: " TO cEntrada
        nValor := Val(cEntrada)

        //Saida: para informar quando o valor e zero ou negativo
        IF nvalor <= 0
            QOut("")
            QOut("Valor zero ou negativo detectado. Encerrando...")
        EXIT
    ENDIF

    //Mostra o Dobro do valor lido
    QOut("-> O dobro de " + AllTrim(Str(nValor)) + " e:" + AllTrim(Str(nValor * 2)))
    ENDDO

    QOut("==================================")

RETURN NIL
