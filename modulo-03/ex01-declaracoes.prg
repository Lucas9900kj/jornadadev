 FUNCTION Principal()

   LOCAL cNomeFuncionario := "Lucas Soares"
   LOCAL nSalarioFuncionario := 2500.00
   LOCAL lAtivo := .T.
   LOCAL dDataAdmissao := CTOD("11/11/2019")
   LOCAL cCodigoDepartamento := "TI-02"

   QOut("Nome do Funcionario: " + cNomeFuncionario)
   QOut("Salario do Funcionario: " + ALLTRIM(STR(nSalarioFuncionario, 10, 2)))
   QOut("Funcionario Ativo: " + IIF(lAtivo, "Sim", "Nao"))
   QOut("Data de Admissao: " + DTOC(dDataAdmissao))
   QOut("Codigo do Departamento: " + cCodigoDepartamento)

RETURN NIL
