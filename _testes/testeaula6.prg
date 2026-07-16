FUNCTION Main()
   LOCAL cNome
   LOCAL nIdade

   // ACCEPT lê uma string
   ACCEPT "Lucas Soares: " TO cNome

   // INPUT lê um valor (número, string, data, lógico)
   INPUT "24: " TO nIdade

   QOut("Olá, " + cNome + "!")
   QOut("Você tem " + Alltrim(Str(nIdade)) + " anos.")

RETURN NIL
