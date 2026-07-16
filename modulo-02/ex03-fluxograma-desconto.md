# FLUXOGRAMA

Início:

Leia o valor da compra

O valor é maior que R$ 100,00?

Sim:
Calcule o desconto:
valorFinal = valor \* 0,90 (10% de desconto)

Não:
Valor Final = valor

Mostrar o valor final a pagar.

# FLUXOGRAMA

<pre class="overflow-visible! px-0!" data-start="52" data-end="927"><div class="relative w-full mt-4 mb-1"><div class=""><div class="contents"><div class="relative"><div class="h-full min-h-0 min-w-0"><div class="h-full min-h-0 min-w-0"><div class="border border-token-border-light border-radius-3xl corner-superellipse/1.1 rounded-3xl"><div class="h-full w-full border-radius-3xl bg-(--code-block-surface) corner-superellipse/1.1 overflow-clip rounded-3xl [--code-block-surface:var(--bg-elevated-secondary)] dark:[--code-block-surface:var(--composer-surface-primary)] lxnfua_clipPathFallback"><div class="relative"><div class="pe-11 pt-3"><div class="relative z-0 flex max-w-full"><div id="code-block-viewer" dir="ltr" class="q9tKkq_viewer cm-editor z-10 light:cm-light dark:cm-light flex h-full w-full flex-col items-stretch ͼs ͼ16"><div class="cm-scroller"><pre class="cm-content q9tKkq_readonly m-0 PDq2pG_selectionAnchorContainer"><code><span>┌─────────┐
           │ INÍCIO  │
           └────┬────┘
                │
                ▼
      ┌─────────────────┐
      │ Leia valorCompra│
      └────────┬────────┘
               │
               ▼
          ◇ Valor > 100? ◇
           /            \
        Sim              Não
         │                │
         ▼                ▼
┌─────────────────┐  ┌─────────────────┐
│ desconto ←      │  │ valorFinal ←    │
│ valor × 0,10    │  │ valor           │
│ valorFinal ←    │  └────────┬────────┘
│ valor-desconto  │           │
└────────┬────────┘           │
         └──────────┬─────────┘
                    │
                    ▼
       ┌─────────────────────┐
       │ Escreva valorFinal  │
       └──────────┬──────────┘
                  │
                  ▼
            ┌─────────┐
            │   FIM   │
            └─────────┘</span></code><span aria-hidden="true" class="PDq2pG_selectionAnchor"></span></pre></div></div></div></div></div></div></div></div></div><div class=""><div class=""></div></div></div></div></div></div></pre>

**Lógica do fluxograma:**

1. Início.
2. Ler o valor da compra.
3. Verificar se o valor é maior que R$ 100.
4. Se **sim** , aplicar desconto de 10%.
5. Se **não** , manter o valor original.
6. Mostrar o valor final a pagar.
7. Fim.

[ ]
