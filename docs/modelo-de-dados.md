# Referência do modelo de dados

## Tabelas da Fase 01

| Tipo | Tabela | Chave principal |
|---|---|---|
| Fato | vendas | `codigo_venda` |
| Fato | itens_venda | `codigo_item_venda` |
| Fato | metas_valor | `codigo_meta_valor` |
| Fato | metas_quantidade | `codigo_meta_quantidade` |
| Dimensão | calendario | `data` |
| Dimensão | cidades | `codigo_cidade` |
| Dimensão | filiais | `codigo_filial` |
| Dimensão | profissionais | `codigo_profissional` |
| Dimensão | vendedores | `codigo_vendedor` |
| Dimensão | grupos_servico | `codigo_grupo_servico` |
| Dimensão | servicos | `codigo_servico` |

## Relacionamentos a conferir
- `vendas[codigo_venda]` e `itens_venda[codigo_venda]`
- `filiais[codigo_cidade]` e `cidades[codigo_cidade]`
- `vendas[codigo_filial]` e `filiais[codigo_filial]`
- `vendas[codigo_profissional]` e `profissionais[codigo_profissional]`
- `vendas[codigo_vendedor]` e `vendedores[codigo_vendedor]`
- `itens_venda[codigo_servico]` e `servicos[codigo_servico]`
- `servicos[codigo_grupo_servico]` e `grupos_servico[codigo_grupo_servico]`
- Vínculos de metas por filial, mês e entidade, conforme nível.

**Importante:** os pares acima são referências de chaves descritas na base, **não uma instrução para criar todos como relacionamentos físicos ativos**. Consultar a aba `Relacionamentos` do arquivo `00_dicionario_de_dados.xlsx` para cardinalidade, direção, relacionamentos ativos/inativos e eventuais alternativas DAX. Evitar caminhos de filtro ambíguos e dupla contagem.

## Calendário
Ordenar `mes_ano` por `ano_mes` e `mes_nome` por `mes_numero`. Testar filtros por mês e ano antes de criar visuais.

## Verificação
Validar contagens por mês/filial, caminhos de filtro e coerência entre totais e detalhamentos antes de começar as metas.
