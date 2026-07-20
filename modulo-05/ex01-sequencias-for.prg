FUNCTION Main()
    LOCAL nI

    Qout("a) Nùmeros de 1 a 100:")
    FOR nI := 1 TO 100
        Qout(NTOC(nI))
        PausaNaExecucao()
    NEXT

    Qout("")
    Qout("b) Nùmeros de -50 a 50:")
    FOR nI := -50 TO 50 STEP -1
        Qout(NTOC(nI))
        PausaNaExecucao()
    NEXT

    Qout("")
    Qout("c) Nùmeros de 80 a 5:")
    FOR nI := 80 TO 5 STEP -1
        Qout(NTOC(nI))
        PausaNaExecucao()
    NEXT
RETURN NIL

FUNCTION PausaNaExecucao()
    hb_idleSleep(0.1)
RETURN NIL
