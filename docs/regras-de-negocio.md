# Regras de negócio — Fase 01

A fonte destas regras é o enunciado do Desafio Fase 1 e a descrição da base de dados da Educadados.

| Corte | Valor realizado | Quantidade realizada | Regra da meta |
|---|---|---|---|
| Rede | `vendas[valor_liquido]` | Número de vendas | Soma das metas das filiais |
| Filial | Valor líquido | Número de vendas | Valor: nível **Produto**; quantidade: nível **Vendedor** |
| Cidade | Valor líquido das filiais da cidade | Número de vendas | Soma das metas de suas filiais |
| Vendedor | Valor líquido | Número de vendas | Nível **Vendedor** |
| Profissional | Valor líquido | Número de vendas | Nível **Profissional** |
| Grupo de serviço | `itens_venda[valor_total]` (bruto) | Soma de `itens_venda[quantidade]` | Nível **Produto** |
| Serviço | Valor bruto dos itens | Quantidade de itens | Nível **Serviço** |

## Cuidados indispensáveis
- **Valor líquido** = bruto da venda menos desconto. **Valor bruto dos itens** não tem desconto rateado.
- **Número de vendas** (códigos distintos da tabela vendas) não é **quantidade de itens**.
- `metas_valor` e `metas_quantidade` possuem níveis independentes Produto, Serviço, Vendedor, Profissional; **não somar níveis entre si**, senão a meta duplica.
- Para filiais: valor da meta = soma do nível Produto; quantidade da meta = soma do nível Vendedor.
- Para rede e cidade: meta = soma das filiais.
- Serviço ou grupo sem meta: exibir **“sem meta”**, nunca 0%. Não transformar ausência de meta em meta zero.
- Manter medidas **numéricas** para percentuais, cores e gráficos; pode haver medida de exibição textual separada.
- Dados de vendas de **01/01/2024 a 30/09/2026**; metas futuras até dezembro de 2026 não implicam realizado futuro.

## Perguntas de aprovação (setembro/2026)
1. Valor líquido da rede e % da meta de valor (uma casa decimal).
2. Filial líder em valor líquido e % de atingimento.
3. Cidade líder em **quantidade de vendas**; também é líder em valor líquido?
4. Entre vendedores com meta de valor, quem tem menor percentual de atingimento?
5. Grupo de serviço líder por **valor bruto dos itens** e sua participação no bruto total dos itens.

As respostas dependem das planilhas reais do desafio: não registrar valores inventados.
