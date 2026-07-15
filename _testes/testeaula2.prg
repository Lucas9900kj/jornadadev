FUNCTION Main()
     LOCAL nValor := 250
     LOCAL nDesconto := 50
     LOCAL nTotal := 0

if nValor > 100
      nDesconto := nValor * 0.50     
ENDIF
     
     nTotal := nValor - nDesconto

     QOut("Total: " + str(nTotal))

RETURN NIL
