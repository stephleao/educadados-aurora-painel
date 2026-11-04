# F01-02 | Análise do dicionário de dados

**Escopo:** Fase 1 — Rede Aurora. Análise documental; configuração do modelo na [F01-05](https://github.com/stephleao/educadados-aurora-painel/issues/30).

## Tabelas e chaves primárias

| Tipo | Tabela | Chave primária |
|---|---|---|
| Fato | `vendas` | `codigo_venda` |
| Fato | `itens_venda` | `codigo_item_venda` |
| Fato | `metas_valor` | `codigo_meta_valor` |
| Fato | `metas_quantidade` | `codigo_meta_quantidade` |
| Dimensão | `calendario` | `data` |
| Dimensão | `cidades` | `codigo_cidade` |
| Dimensão | `filiais` | `codigo_filial` |
| Dimensão | `profissionais` | `codigo_profissional` |
| Dimensão | `vendedores` | `codigo_vendedor` |
| Dimensão | `grupos_servico` | `codigo_grupo_servico` |
| Dimensão | `servicos` | `codigo_servico` |

## Relacionamentos — filtro `A partir da = Fase 1`

**22 ligações.** Todas têm cardinalidade **muitos para um (`*:1`)** e **filtro único** no dicionário. Cada linha abaixo mostra a chave estrangeira (lado `*`) → chave referenciada (lado `1`). **Não significa que as 22 devam ficar ativas simultaneamente.**

| Origem (*) | Destino (1) |
|---|---|
| `filiais[codigo_cidade]` | `cidades[codigo_cidade]` |
| `itens_venda[codigo_servico]` | `servicos[codigo_servico]` |
| `itens_venda[codigo_venda]` | `vendas[codigo_venda]` |
| `profissionais[codigo_filial]` | `filiais[codigo_filial]` |
| `servicos[codigo_grupo_servico]` | `grupos_servico[codigo_grupo_servico]` |
| `vendas[codigo_filial]` | `filiais[codigo_filial]` |
| `vendas[codigo_profissional]` | `profissionais[codigo_profissional]` |
| `vendas[codigo_vendedor]` | `vendedores[codigo_vendedor]` |
| `vendas[data]` | `calendario[data]` |
| `vendedores[codigo_filial]` | `filiais[codigo_filial]` |
| `metas_valor[codigo_filial]` | `filiais[codigo_filial]` |
| `metas_valor[codigo_grupo_servico]` | `grupos_servico[codigo_grupo_servico]` |
| `metas_valor[codigo_profissional]` | `profissionais[codigo_profissional]` |
| `metas_valor[codigo_servico]` | `servicos[codigo_servico]` |
| `metas_valor[codigo_vendedor]` | `vendedores[codigo_vendedor]` |
| `metas_valor[mes]` | `calendario[data]` |
| `metas_quantidade[codigo_filial]` | `filiais[codigo_filial]` |
| `metas_quantidade[codigo_grupo_servico]` | `grupos_servico[codigo_grupo_servico]` |
| `metas_quantidade[codigo_profissional]` | `profissionais[codigo_profissional]` |
| `metas_quantidade[codigo_servico]` | `servicos[codigo_servico]` |
| `metas_quantidade[codigo_vendedor]` | `vendedores[codigo_vendedor]` |
| `metas_quantidade[mes]` | `calendario[data]` |

Na tabela `vendas`, `codigo_cliente`, `codigo_usuario` e `codigo_midia` também são chaves estrangeiras; suas dimensões de referência entram em fase posterior.

## Caminhos duplos potenciais

Setas abaixo indicam **propagação de filtro** (lado `1` → lado `*`). São riscos inferidos da estrutura, **não erros já comprovados no Power BI**.

| Origem / destino | Caminho direto | Caminho alternativo |
|---|---|---|
| Filial → vendas | `filiais → vendas` | `filiais → profissionais → vendas` |
| Filial → vendas | `filiais → vendas` | `filiais → vendedores → vendas` |
| Filial → metas (ambas as tabelas) | `filiais → metas` | `filiais → profissionais → metas` |
| Filial → metas (ambas as tabelas) | `filiais → metas` | `filiais → vendedores → metas` |
| Grupo de serviço → metas (ambas) | `grupos_servico → metas` | `grupos_servico → servicos → metas` |
| Filial → itens de venda | `filiais → vendas → itens_venda` | `filiais → profissionais/vendedores → vendas → itens_venda` |

**Nota:** `cidades → filiais` é uma ligação entre dimensões, mas não cria, sozinha, um caminho duplo adicional nessa lista. A presença de múltiplas rotas deve ser avaliada ao escolher relacionamentos ativos na F01-05.

## Particularidades das metas

- `metas_valor` e `metas_quantidade` têm **6 relacionamentos cada**: filial, grupo de serviço, serviço, vendedor, profissional e calendário.
- As chaves de grupo, serviço, vendedor e profissional podem ser nulas conforme o `nivel` da meta (Produto, Serviço, Vendedor ou Profissional).
- `mes` corresponde ao **primeiro dia do mês**, ligado a `calendario[data]`.
- Os quatro níveis de metas são **independentes**; somá-los entre si duplica o objetivo. A meta total de **valor** da filial vem de Produto; a meta total de **quantidade**, de Vendedor.
- Uma ligação definida no dicionário não garante, por si só, o comportamento esperado de todos os filtros. A implementação será verificada na F01-05 e validada na F01-07.
