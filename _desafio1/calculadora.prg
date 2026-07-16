FUNCTION Main()

   LOCAL nA :=""
   LOCAL nB :=""
   LOCAL cA := 0
   LOCAL cB := 0

   ACCEPT "Digite o primeiro numero: " TO cA
   ACCEPT "Digite o segundo numero: " TO cB

    nA := Val(cA)
    nB := Val(cB)

    QOut("Soma:      " +  Str(nA + nB, 10, 2))
    QOut("Subtração: " + Str(nA - nB, 10, 2))
    QOut("Produto:   " + Str(nA * nB, 10, 2))

     IF nB <> 0
    QOut("Divisão:   " + Str(nA / nB, 10, 2))
    ELSE
    QOut("Divisão:   Não é possível dividir por zero.")
    ENDIF

RETURN NIL
