# F01-05 | Relacionamentos do modelo de dados

**Projeto:** Painel Aurora — Fase 1

## 1. Configuração do modelo

Foram configurados os 22 relacionamentos previstos no dicionário, com cardinalidade muitos para um (`*:1`) e direção de filtro única.

**Configuração final:**
- 18 relacionamentos ativos.
- 4 relacionamentos inativos.

## 2. Relacionamentos inativos e justificativas

| Relacionamento inativo | Justificativa |
|---|---|
| `profissionais[codigo_filial] → filiais[codigo_filial]` | Evitar caminhos duplos de filial até vendas e metas. |
| `vendedores[codigo_filial] → filiais[codigo_filial]` | Evitar caminhos duplos de filial até vendas e metas. |
| `metas_valor[codigo_grupo_servico] → grupos_servico[codigo_grupo_servico]` | Evitar caminhos ambíguos após ativar a ligação entre grupos e serviços. |
| `metas_quantidade[codigo_grupo_servico] → grupos_servico[codigo_grupo_servico]` | Evitar caminhos ambíguos após ativar a ligação entre grupos e serviços. |

O relacionamento `servicos[codigo_grupo_servico] → grupos_servico[codigo_grupo_servico]` permanece ativo, permitindo filtrar os itens vendidos por grupo de serviço.

## 3. Resultados dos testes

| Filtro | Resultado |
|---|---|
| Filial | Vendas, itens e metas responderam à seleção. |
| Profissional | Indicadores responderam à seleção. |
| Vendedor | Indicadores responderam à seleção. |
| Grupo de serviço | Itens vendidos e lista de serviços responderam à seleção após o ajuste. |
| Serviço | A seleção de um serviço reduziu os itens ao serviço correspondente. |
| Calendário | Indicadores responderam à troca de mês. |
| Chaves opcionais das metas | Nulos legítimos confirmados conforme o campo `nivel`. |

## 4. Observações para as próximas etapas

- O filtro por grupo de serviço passou a alcançar `itens_venda`.
- Os relacionamentos diretos entre grupos de serviço e metas foram desativados para evitar caminhos ambíguos.
- As medidas DAX deverão tratar especificamente as metas de nível Produto, pois o filtro de grupo não chega diretamente a esses registros pela configuração atual.
- Metas ausentes em determinados serviços devem ser apresentadas como "sem meta".
- Os níveis Produto, Serviço, Vendedor e Profissional são independentes e não devem ser somados entre si.
- A conferência dos valores com os dados originais e a validação das medidas serão realizadas nas próximas tarefas.

**Situação:** relacionamentos configurados e testes iniciais de propagação de filtros realizados. Tratamento das metas por nível e validação dos resultados ainda necessários.
