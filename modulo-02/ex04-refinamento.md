# Exercício 4 — Refinamento Sucessivo

#### Nível 1 (Visão Geral)

1. Registrar os itens da compra.
2. Calcular o subtotal da compra.
3. Verificar se o cliente possui cartão fidelidade e aplicar desconto.
4. Mostrar o valor total a pagar.

#### Nível 2 (Detalhamento)

1. Registrar os itens da compra
   1.1 Ler a quantidade de itens.
   1.2 Ler o preço de cada item.
   1.3 Armazenar os valores informados.
2. Calcular o subtotal da compra
   2.1 Somar os preços de todos os itens.
   2.2 Armazenar o resultado na variável subtotal.
3. Verificar cartão fidelidade e aplicar desconto
   3.1 Perguntar se o cliente possui cartão fidelidade.
   3.2 Se possuir:
   desconto ← subtotal × 0,05
   total ← subtotal − desconto
   3.3 Senão:
   total ← subtotal
4. Mostrar o valor total a pagar
   4.1 Exibir o subtotal.
   4.2 Exibir o desconto aplicado (se houver).
   4.3 Exibir o total a pagar.

### Resumo do processo

INÍCIO
↓
Registrar itens
↓
Calcular subtotal
↓
Possui cartão fidelidade?
↓
Sim → Aplicar 5% de desconto
Não → Manter subtotal
↓
Mostrar total a pagar
↓
FIM
