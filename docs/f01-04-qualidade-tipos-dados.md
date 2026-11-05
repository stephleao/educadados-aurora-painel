# F01-04 | Verificação da qualidade e dos tipos de dados

**Projeto:** Painel Aurora — Fase 1  
**Escopo:** 11 tabelas importadas para o Power BI.

## 1. Verificações realizadas

- Inspeção das 11 tabelas, utilizando o Google Sheets para verificar valores nulos, possíveis erros e inconsistências.
- Conferência dos tipos de dados e ajustes necessários na importação pelo Power Query.
- Conversão das colunas de data para o tipo Data e dos campos Sim/Não para o tipo Lógico (`true/false`).
- Nenhum erro foi identificado durante as inspeções.

## 2. Achados e tratamentos

| Tabela | Achado | Tratamento |
|---|---|---|
| `calendario` | Conversão automática inadequada dos tipos de dados | Tabela importada novamente, com a conversão automática removida e os tipos configurados manualmente. |
| `calendario` | Valores nulos em campos de feriados | Nulos preservados, pois são esperados em dias sem feriado. |
| `filiais` | Linhas completamente vazias | Linhas removidas. |
| `filiais` | Valores nulos em `data_encerramento` | Preservados, pois filiais ativas não possuem data de encerramento. |
| `metas_valor` | Nulos nas quatro colunas `codigo_*` associadas ao nível da meta | Preservados, pois apenas a coluna correspondente ao `nivel` deve estar preenchida. |
| `metas_quantidade` | Mesmo comportamento de preenchimento conforme o `nivel` | Nulos preservados. |

## 3. Resultado

- As 11 tabelas foram inspecionadas.
- Os tipos de dados foram revisados e ajustados.
- As linhas completamente vazias identificadas foram removidas.
- Os valores nulos legítimos foram preservados.
- Nenhum erro foi identificado nas inspeções realizadas.

**Status:** inspeção e tratamentos concluídos. Dados preparados para a etapa de modelagem.
