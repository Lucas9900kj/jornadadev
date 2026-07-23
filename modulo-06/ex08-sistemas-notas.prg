PROCEDURE Main()

    LOCAL aAlunos
    LOCAL cNome, cNota1, cNota2, cNota3, cNota4
    LOCAL cQtdAlunos, nQtdAlunos
    LOCAL nContador, nMedia, nSoma
    LOCAL nNota1, nNota2, nNota3, nNota4

    aAlunos := {}

    ACCEPT "Quantidade de alunos: " TO cQtdAlunos

    nQtdAlunos := Val(cQtdAlunos)

    FOR nContador := 1 TO nQtdAlunos

        ACCEPT "Nome: " TO cNome

        ACCEPT "Nota 1: " TO cNota1
        nNota1 := Val(cNota1)

        ACCEPT "Nota 2: " TO cNota2
        nNota2 := Val(cNota2)

        ACCEPT "Nota 3: " TO cNota3
        nNota3 := Val(cNota3)

        ACCEPT "Nota 4: " TO cNota4
        nNota4 := Val(cNota4)

        AAdd(aAlunos, {cNome, nNota1, nNota2, nNota3, nNota4})

    NEXT

    QOut("")
    QOut("===== RESULTADO =====")

    FOR nContador := 1 TO Len(aAlunos)

        nSoma := aAlunos[nContador][2] + ;
                 aAlunos[nContador][3] + ;
                 aAlunos[nContador][4] + ;
                 aAlunos[nContador][5]

        nMedia := nSoma / 4

        QOut("Aluno: " + aAlunos[nContador][1])
        QOut("Media: " + LTrim(Str(nMedia, 6, 2)))

        IF nMedia >= 7
            QOut("Situacao: APROVADO")
        ELSE
            QOut("Situacao: REPROVADO")
        ENDIF

        QOut("-----------------------")

    NEXT

RETURN
