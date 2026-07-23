FUNCTION FatorialN(nN)

    LOCAL nResultado
    LOCAL nI

    nResultado := 1

    FOR nI := nN TO 1 STEP -1
        nResultado := nResultado * nI
    NEXT

RETURN nResultado


FUNCTION EhPrimo(nN)

    LOCAL nI

    IF nN < 2
        RETURN .F.
    ENDIF

    FOR nI := 2 TO nN - 1

        IF nN % nI == 0
            RETURN .F.
        ENDIF

    NEXT

RETURN .T.


FUNCTION MDC(nA, nB)

    LOCAL nMenor
    LOCAL nI

    IF nA < nB
        nMenor := nA
    ELSE
        nMenor := nB
    ENDIF

    FOR nI := nMenor TO 1 STEP -1

        IF nA % nI == 0 .AND. nB % nI == 0
            RETURN nI
        ENDIF

    NEXT

RETURN 1


FUNCTION MMC(nA, nB)
    LOCAL nResultado

    nResultado := (nA * nB) / MDC(nA, nB)

RETURN nResultado
