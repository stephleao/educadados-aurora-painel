# Fechamento da Fase 01 — Painel Comercial Rede Aurora

**Projeto:** Bootcamp Educadados — Rede Aurora Odontologia  
**Entrega:** 07/11/2026  
**Registro de encerramento:** 09/11/2026  
**Situação:** Entregue; acesso à Fase 02 liberado.

## 1. Entrega realizada

Foi desenvolvido e entregue um relatório comercial no Power BI, organizado em duas páginas: **Visão Geral** e **Detalhamento**.

O painel contempla indicadores de vendas, metas, percentuais de atingimento, gráficos por filial, Top 10 cidades e grupos de serviço, além de matrizes de vendedores e profissionais e tabela de serviços.

Foram implementados filtros de período, formatação condicional nos percentuais das matrizes, rótulos combinados de valor e quantidade e apresentação de "sem meta" na tabela de serviços.

## 2. Medidas DAX documentadas

As medidas utilizadas no projeto estão registradas nos arquivos:

- `dax/medidas-base.dax` — valor líquido, número de vendas, quantidade e valor bruto dos itens.
- `dax/metas.dax` — metas nos níveis Produto, Serviço, Vendedor e Profissional, além das consolidações por filial, cidade e rede.
- `dax/indicadores.dax` — percentuais de atingimento, status, cores e rótulo combinado.
- `dax/exibicao.dax` — quatro medidas auxiliares de apresentação de "sem meta" na tabela de serviços.

As medidas de exibição retornam texto. Os cálculos numéricos permanecem nas medidas originais.

## 3. Implementação visual

Na tabela de serviços, foram utilizadas quatro medidas auxiliares de exibição para apresentar valores formatados e a indicação "sem meta".

A formatação condicional foi configurada diretamente nos visuais do Power BI, **sem utilização de medidas DAX de cor para a tabela de serviços**.

Os gráficos por filial e cidade receberam rótulos combinados de valor e quantidade. As matrizes de vendedores e profissionais receberam formatação condicional nos percentuais.

## 4. Validação e pendência técnica conhecida

Foram realizados testes durante a construção do modelo, das medidas e dos visuais, mas não há registro de conclusão integral de todas as verificações previstas.

**Pendência conhecida:** ao selecionar uma categoria no gráfico de grupos de serviço, o indicador percentual não atualizava conforme o comportamento solicitado no desafio. O problema não foi corrigido antes da entrega por restrição de tempo.

**Causa não confirmada.** Uma investigação futura poderá avaliar as interações entre visuais, a direção de propagação dos filtros no modelo e o contexto das medidas DAX.

A conferência integral dos totais consolidados, especialmente nos cortes de grupo de serviço e serviço, não deve ser considerada aprovada sem evidências adicionais.

## 5. Encerramento

A Fase 01 foi entregue em 07/11/2026, e o acesso à Fase 02 foi liberado. As tarefas dos dois Kanbans foram encerradas pela responsável.

O fechamento administrativo registra o resultado da entrega e preserva as limitações técnicas conhecidas; não significa que todas tenham sido resolvidas.
