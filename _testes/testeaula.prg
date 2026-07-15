REQUEST HB_CODEPAGE_UTF8

FUNCTION Soma()
     LOCAL nResult := num1 + num2
     QOut( str(nResult) )
RETURN NIL

FUNCTION Main()
    hb_cdpSelect("UTF8")
    Soma(10,7)
RETURN NIL
