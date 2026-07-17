#define PI 3.14159

FUNCTION Main()
    
    LOCAL cEntrada
    LOCAL nRaio
    LOCAL nArea
    LOCAL nCatetoA
    LOCAL nCatetoB
    LOCAL nHipotenusa
    LOCAL nPeso
    LOCAL nAltura
    LOCAL nIMC

    // Calculando a área de um círculo
    ACCEPT "Digite o raio do círculo: " TO cEntrada
    nRaio := VAL(cEntrada)

    nArea := PI * (nRaio ^ 2)
    QOut("A área do círculo é: " + ALLTRIM(STR(nArea, 10, 2)))

    // Calculando a hipotenusa de um triângulo retângulo
    ACCEPT "Digite o comprimento do cateto A: " TO cEntrada
    nCatetoA := VAL(cEntrada)

    ACCEPT "Digite o comprimento do cateto B: " TO cEntrada
    nCatetoB := VAL(cEntrada)

    nHipotenusa := SQRT((nCatetoA ^ 2) + (nCatetoB ^ 2))
    QOut("O comprimento da hipotenusa é: " + ALLTRIM(STR(nHipotenusa, 10, 2)))

    // Calculando o Índice de Massa Corporal (IMC)
    ACCEPT "Digite o peso em kg: " TO cEntrada
    nPeso := VAL(cEntrada)

    ACCEPT "Digite a altura em metros: " TO cEntrada
    nAltura := VAL(cEntrada)

    nIMC := nPeso / (nAltura ^ 2)
    QOut("O Índice de Massa Corporal (IMC) é: " + ALLTRIM(STR(nIMC, 10, 2)))

RETURN NIL
