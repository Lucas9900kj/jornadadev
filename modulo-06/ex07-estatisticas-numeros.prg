FUNCTION Main()

        LOCAL aArray := Array(10)
        LOCAL nPreencher, nI := 1
        LOCAL nSoma, nMedia, nArmaSoma := 0

        QOut("Preencha o Array: ")
        
        FOR nI := 1 TO Len(aArray)

            ACCEPT "Digite o valor para preencher o Array: " TO nPreencher

            aArray[nI]:= Val(nPreencher)
        NEXT

        Asort(aArray)
        QOut("Array ordenado: ")
        
        FOR nI := 1 TO Len(aArray)
            QOut(aArray[nI])
        NEXT
        

        Qout("Soma e media dos valores do Array")

        FOR nI := 1 TO Len(aArray)
            nArmaSOma += aArray[nI]

        NEXT
        nMedia := (nArmaSoma, nMedia)
        QOut(nArmaSoma, nMedia)

        QOut("Maior e Menor do Array:", Str(aArray[1]),", ", Str(aArray[len(aArray)]))

RETURN NIL
