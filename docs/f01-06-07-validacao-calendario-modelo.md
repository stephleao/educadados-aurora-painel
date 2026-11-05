# F01-06 e F01-07 | Validação do calendário e do modelo de dados

**Projeto:** Painel Aurora — Fase 1

## 1. Objetivo

Validar a configuração do calendário, a propagação dos filtros e a integridade dos relacionamentos do modelo, complementando o trabalho documentado na F01-05.

## 2. F01-06 — Configuração do calendário

**Configurações realizadas:**
- Confirmado o tipo Data em `calendario[data]`.
- Classificado `mes_ano` por `ano_mes` e `mes_nome` por `mes_numero`.
- Marcada `calendario` como tabela de datas.
- Confirmada a ordenação cronológica dos meses.

**Validação dos filtros:**

| Indicador | Set/26 | Ago/26 | Fev/24 |
|---|---:|---:|---:|
| Itens | 4 mil | 4 mil | 2 mil |
| Meta quantidade | 9 mil | 9 mil | 3 mil |
| Meta valor | R$ 33,98 mi | R$ 32,08 mi | R$ 6,38 mi |
| Vendas | 2 mil | 2 mil | 945 |

*Valores conforme exibição arredondada dos cartões.*

**Resultado:** filtros temporais e ordenação cronológica funcionando corretamente nos testes.

## 3. F01-07 — Validação dos relacionamentos e integridade

### 3.1. Vendas por mês e filial

Criado um **visual do tipo Tabela**, na página `Teste_Modelo`, utilizando:
- `filiais[nome_abreviado]`
- Contagem distinta de `vendas[codigo_venda]`
- Soma de `vendas[valor_liquido]`

Em setembro/2026, foram identificadas **1.745 vendas** e **R$ 9.760.630,53** de valor líquido.

**Resultado:** filtros de mês e filial funcionando conforme esperado.

### 3.2. Duplicidade e integridade

| Teste | Resultado |
|---|---|
| Vendas distintas — setembro/2026 | 1.745 de 1.745 |
| Vendas distintas — base completa | 45.000 de 45.000 |
| Vendas sem filial | Nenhuma identificada |
| Itens sem venda | 0 |
| Itens sem serviço | 0 |
| Filiais sem cidade | 0 |
| Chaves primárias das 11 tabelas | Únicas, sem nulos ou erros |

As chaves foram verificadas no Power Query, utilizando o perfilamento de todo o conjunto de dados.

### 3.3. Propagação dos filtros

- **Calendário e filiais:** filtros aplicados corretamente às vendas.
- **Cidades:** seleção filtrando as respectivas filiais e vendas.
- **Metas:** `metas_valor` e `metas_quantidade` respondendo aos filtros de mês e filial.
- **Vendedores, profissionais e serviços:** testes iniciais registrados na F01-05.

## 4. Decisões e ajustes

- Mantida a configuração da F01-05: **18 relacionamentos ativos e 4 inativos**, evitando caminhos ambíguos.
- Removidas apenas linhas completamente vazias dos arquivos de origem, com atualização dos arquivos locais.
- Utilizadas medidas DAX temporárias para testes, sem substituir as medidas definitivas.
- Mantida para as próximas tarefas a implementação das regras específicas de metas por nível.

## 5. Conclusão

As validações não identificaram duplicações de chaves ou registros sem correspondência nos relacionamentos testados.

O calendário, os filtros e os relacionamentos apresentaram o comportamento esperado.
