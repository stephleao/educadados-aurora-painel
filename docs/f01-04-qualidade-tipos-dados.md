# F01-04 | Verificação da qualidade e dos tipos de dados

**Projeto:** Painel Aurora — Fase 1  
**Escopo:** 11 tabelas importadas no Power Query.

## Verificações realizadas

- Tipos de dados conferidos, com ajustes nas colunas de data e nos campos de Sim/Não (convertidos para tipo lógico, `true/false`).
- Na tabela `calendario`, `mes_ano` e `ano_mes` foram alteradas para Texto.
- Inspeção de erros e valores nulos nas 11 tabelas. **Nenhum erro foi identificado na verificação realizada.**

## Achados e tratamento

| Tabela | Achado | Tratamento / decisão |
|---|---|---|
| `calendario` | Valores nulos em coluna(s) da tabela; coluna(s) não especificada(s) no registro da inspeção | Mantidos; conferir se correspondem a `nome_feriado_nacional`, cujo vazio é esperado em dias sem feriado. Se houver nulos em `data`, investigar. |
| `filiais` | Linhas inteiramente vazias | Linhas vazias removidas no Power Query. |
| `metas_valor` | Das quatro colunas `codigo_grupo_servico`, `codigo_servico`, `codigo_vendedor` e `codigo_profissional`, apenas a correspondente a `nivel` fica preenchida em cada registro | Nulos legítimos, preservados. |
| `metas_quantidade` | Mesmo padrão de preenchimento condicionado a `nivel` | Nulos legítimos, preservados. |

## Pontos de conferência antes de finalizar

- Verificar se `calendario[mes_ano]` contém rótulos como `Jan/2024` e `calendario[ano_mes]` valores como `2024-01`, **e não textos de datas** como `01/01/2024`. Mudar apenas o tipo para Texto não restaura automaticamente o formato original.
- Confirmar que a etapa de remoção em `filiais` excluiu **somente linhas inteiramente vazias** e não filiais com campos opcionais nulos.
- Após **Fechar e Aplicar**, conferir que as 11 tabelas carregam sem erros.

**Situação:** inspeção e tratamento relatados; os pontos de conferência acima permanecem para validação final da F01-04.
