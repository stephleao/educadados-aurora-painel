# Tarefas - Desafio Fase 1

Este documento descreve a divisão das entregas em tarefas pequenas, definição da sequência de execução, estabelecimento das prioridades, avaliação da dificuldade e criação critérios claros de conclusão.

A organização será baseada nos três páginas do bootcamp: Desafio Fase 1, Base de dados e Roadmap.

- **Projeto:** Painel Comercial - Rede Aurora
- **Início da execução proposta:** 04/11/2026
- **Prazo oficial:** 07/11/2026, às 23h59 (horário de Brasília)
- **Equipe:** 5 integrantes
- **Ferramenta principal:** Power BI
- **Metodologia de acompanhamento recomendada:** Kanban

---

# **1. Kanban**

Fluxo recomendado: Backlog → A fazer → Em andamento → Em revisão → Concluído.

- **Backlog:** tarefas identificadas, ainda não priorizadas para execução imediata.
- **A fazer:** tarefas prontas para iniciar, com responsável definido.
- **Em andamento:** tarefas que estão sendo executadas.
- **Em revisão:** tarefas concluídas tecnicamente, mas aguardando validação.
- **Concluído:** tarefas validadas que atendem aos critérios de aceite.

## 1.2. Identificação das tarefas

Os cartões serão identificados pelo padrão:

**F01-XX**

- F01: Fase 01 do bootcamp.
- XX: número sequencial da tarefa.

Exemplo: `F01-09 | Criar medidas de metas por nível`.

Esse padrão poderá ser mantido nas próximas fases, utilizando F02, F03 e assim por diante.

## 1.3. Prioridades

- **P0 - Crítica:** tarefa que bloqueia outras atividades, compromete os cálculos ou impede a entrega.
- **P1 - Alta:** tarefa obrigatória de construção, apresentação ou validação do relatório.

Todas as tarefas propostas fazem parte do escopo. A prioridade serve para definir a ordem de execução, não para eliminar exigências.

## 1.4. Pontuação de dificuldade e esforço

| Dificuldade | Pontos |
| --- | --- |
| Fácil | 1 |
| Média | 2 |
| Difícil | 3 |
| Muito difícil | 4 |

Os pontos representam uma estimativa relativa de esforço, considerando uma equipe iniciante em dados. Não equivalem diretamente a horas.

---

# 2. Distribuição da squad

A divisão foi realizada considerando complexidade e esforço, evitando distribuir somente pela quantidade de tarefas.

| Integrante | Responsabilidade principal | Tarefas | Pontos |
| --- | --- | --- | --- |
| Pessoa A | Preparação de dados e modelagem | 6 | 12 |
| Pessoa B | Validação do modelo e medidas de metas | 4 | 13 |
| Pessoa C | DAX avançado e validação de resultados | 4 | 12 |
| Pessoa D | Indicadores, gráficos e integração | 4 | 10 |
| Pessoa E | Design, detalhamento e entrega | 5 | 11 |
| **Total** |  | **23** | **58** |

A quantidade de cartões não será igual para todos, pois algumas tarefas exigem mais esforço técnico.

## 2.1. Responsabilidades individuais

**Pessoa A — Dados e modelagem**

Responsável por organizar as bases, realizar a importação, tratar tipos de dados, construir os relacionamentos e configurar o calendário.

**Pessoa B — Medidas e metas**

Responsável por validar o modelo, criar medidas base e implementar as regras de metas por nível, filial, cidade e rede.

**Pessoa C — DAX avançado e validação**

Responsável pelos percentuais de atingimento, indicadores de status, rótulos combinados, testes de cálculos e respostas às perguntas de aprovação.

**Pessoa D — Indicadores e gráficos**

Responsável pelos cartões, gráficos executivos, testes visuais e integração do relatório final no Power BI.

**Pessoa E — Design, detalhamento e entrega**

Responsável pela identidade visual, matrizes, tabela de serviços, navegação, disponibilização dos arquivos e envio da entrega.

---

# 3. Backlog detalhado de tarefas

Recomenda-se manter somente uma tarefa ativa por pessoa, sempre que possível.

Se uma pessoa estiver bloqueada por uma dependência, poderá trabalhar em outra tarefa independente.

Problemas de modelagem, DAX ou integração deverão ser comunicados imediatamente para evitar retrabalho.

## ETAPA 1 — Preparação dos dados

### F01-01 | Baixar e organizar os arquivos

**Responsável:** Pessoa A

**Prioridade:** P0

**Dificuldade:** Fácil

**Esforço:** 1 ponto

**Como executar:**

1. Acessar a pasta oficial dos dados no Google Drive.
2. Baixar todos os arquivos e extrair o ZIP.
3. Organizar os arquivos em uma pasta fixa.
4. Identificar os 11 arquivos necessários para a Fase 1.
5. Confirmar a presença do dicionário de dados.
6. Definir a estrutura de pastas compartilhadas da equipe.

**Critério de conclusão:** todos os arquivos necessários estão disponíveis, identificados e organizados.

### F01-02 | Analisar o dicionário de dados

**Responsável:** Pessoa A

**Prioridade:** P0

**Dificuldade:** Média

**Esforço:** 2 pontos

**Como executar:**

1. Abrir `00_dicionario_de_dados.xlsx`.
2. Ler as abas Leia-me, Colunas e Relacionamentos.
3. Filtrar a coluna "A partir da" por Fase 1.
4. Identificar as tabelas fato e dimensão.
5. Identificar as chaves primárias e estrangeiras.
6. Registrar os relacionamentos e cardinalidades indicados no arquivo.

**Critério de conclusão:** estrutura de dados compreendida e documentada para a equipe.

### F01-03 | Criar o projeto e importar as tabelas

**Responsável:** Pessoa A

**Prioridade:** P0

**Dificuldade:** Média

**Esforço:** 2 pontos

**Como executar:**

1. Abrir o Power BI Desktop.
2. Criar e salvar o arquivo `Aurora_F01_Base.pbix`.
3. Selecionar Obter Dados → Pasta de Trabalho do Excel.
4. Importar as 11 tabelas necessárias.
5. Utilizar Transformar Dados para conferir a importação.
6. Carregar as tabelas e salvar o projeto.

**Critério de conclusão:** todas as 11 tabelas aparecem corretamente no Power BI.

### F01-04 | Conferir a qualidade e os tipos de dados

**Responsável:** Pessoa A

**Prioridade:** P0

**Dificuldade:** Média

**Esforço:** 2 pontos

**Como executar:**

1. Abrir o Power Query.
2. Conferir os tipos de dados das colunas.
3. Validar especialmente datas, valores monetários, quantidades e identificadores.
4. Identificar erros de conversão, valores nulos e possíveis inconsistências.
5. Corrigir apenas os problemas confirmados, preservando valores nulos legítimos.
6. Aplicar as alterações e documentar eventuais problemas encontrados.

**Critério de conclusão:** dados importados com tipos corretos e sem erros de tratamento conhecidos.

## ETAPA 2 — Modelagem

### F01-05 | Criar os relacionamentos entre tabelas

**Responsável:** Pessoa A

**Prioridade:** P0

**Dificuldade:** Difícil

**Esforço:** 3 pontos

**Como executar:**

1. Abrir a exibição Modelo.
2. Consultar a aba Relacionamentos do dicionário.
3. Relacionar as tabelas pelas chaves indicadas.
4. Conferir cardinalidade e direção de filtro.
5. Verificar relacionamentos inativos ou ambíguos.
6. Organizar visualmente o modelo.

**Critério de conclusão:** relacionamentos configurados de acordo com o dicionário, sem ambiguidades indevidas.

### F01-06 | Configurar a tabela calendário

**Responsável:** Pessoa A

**Prioridade:** P0

**Dificuldade:** Média

**Esforço:** 2 pontos

**Como executar:**

1. Conferir a coluna `calendario[data]`.
2. Validar as relações de data necessárias.
3. Classificar `mes_ano` por `ano_mes`.
4. Classificar `mes_nome` por `mes_numero`.
5. Configurar a tabela calendário para análises temporais.
6. Testar filtros de mês e ano.

**Critério de conclusão:** filtros cronológicos funcionando corretamente.

### F01-07 | Validar os relacionamentos e a integridade do modelo

**Responsável:** Pessoa B

**Prioridade:** P0

**Dificuldade:** Difícil

**Esforço:** 3 pontos

**Dependências:** F01-05 e F01-06

**Como executar:**

1. Receber o modelo preparado pela Pessoa A.
2. Criar tabelas temporárias para comparar vendas por mês e filial.
3. Verificar se os filtros chegam às tabelas esperadas.
4. Testar os relacionamentos de cidades, filiais, vendas, itens e serviços.
5. Verificar duplicações e registros sem correspondência.
6. Registrar e corrigir, em conjunto com a Pessoa A, eventuais inconsistências.

**Critério de conclusão:** modelo validado e pronto para receber as medidas DAX.

## ETAPA 3 — Medidas DAX

### F01-08 | Criar as quatro medidas base

**Responsável:** Pessoa B

**Prioridade:** P0

**Dificuldade:** Média

**Esforço:** 2 pontos

**Dependência:** F01-07

**Como executar:**

1. Criar medida de valor líquido de vendas.
2. Criar medida de número de vendas, contando os códigos distintos das vendas.
3. Criar medida de valor bruto dos itens.
4. Criar medida de quantidade de itens.
5. Testar cada medida por mês e filial.
6. Padronizar os nomes utilizados nas medidas.

**Critério de conclusão:** as quatro medidas funcionam e apresentam resultados coerentes.

### F01-09 | Criar medidas de metas por nível

**Responsável:** Pessoa B

**Prioridade:** P0

**Dificuldade:** Muito difícil

**Esforço:** 4 pontos

**Dependências:** F01-07 e F01-08

**Como executar:**

1. Examinar as tabelas `metas_valor` e `metas_quantidade`.
2. Identificar a coluna `nivel` e seus valores.
3. Criar medidas específicas para Produto.
4. Criar medidas específicas para Serviço.
5. Criar medidas específicas para Vendedor.
6. Criar medidas específicas para Profissional.
7. Validar o contexto de mês e entidade.
8. Tratar metas inexistentes corretamente.

**Regra importante:** os níveis Produto, Serviço, Vendedor e Profissional são independentes e não devem ser somados entre si.

**Critério de conclusão:** medidas de metas retornam valores corretos para cada nível, sem duplicação.

### F01-10 | Consolidar metas da rede, filial e cidade

**Responsável:** Pessoa B

**Prioridade:** P0

**Dificuldade:** Muito difícil

**Esforço:** 4 pontos

**Dependência:** F01-09

**Como executar:**

1. Calcular a meta de valor da filial usando o nível Produto.
2. Calcular a meta de quantidade da filial usando o nível Vendedor.
3. Calcular a meta da cidade somando as metas de suas filiais.
4. Calcular a meta da rede somando as metas das filiais.
5. Testar o comportamento das medidas sob diferentes filtros.
6. Validar os resultados com a base original.

**Critério de conclusão:** metas consolidadas corretas para os níveis da rede, cidade e filial.

### F01-11 | Calcular percentuais de atingimento

**Responsável:** Pessoa C

**Prioridade:** P0

**Dificuldade:** Muito difícil

**Esforço:** 4 pontos

**Dependências:** F01-09 e F01-10

**Como executar:**

1. Identificar as medidas de realizado e de meta.
2. Criar os percentuais de atingimento utilizando `DIVIDE`.
3. Tratar divisão por zero e ausência de meta.
4. Configurar percentuais com uma casa decimal.
5. Criar uma apresentação textual para mostrar "sem meta" quando necessário.
6. Testar os sete cortes de análise.

**Critério de conclusão:** percentuais corretos e ausência de meta claramente identificada.

**Observação técnica:** manter medidas numéricas para cálculos e formatação condicional, utilizando uma medida ou formatação de exibição separada quando necessário.

### F01-12 | Criar medidas de status e rótulos combinados

**Responsável:** Pessoa C

**Prioridade:** P1

**Dificuldade:** Difícil

**Esforço:** 3 pontos

**Dependência:** F01-11

**Como executar:**

1. Criar medida para identificar resultado acima ou abaixo da meta.
2. Criar medida de cor para a formatação condicional.
3. Criar medida de texto para apresentar valor e quantidade juntos.
4. Aplicar o formato brasileiro de moeda e separador de milhar.
5. Testar os resultados em filiais e cidades.
6. Validar com a Pessoa D a utilização das medidas nos gráficos.

**Exemplo de rótulo:** `R$ 50.459 | Qtd 3.500`.

**Critério de conclusão:** medidas de status e texto criadas, testadas e prontas para uso visual.

**Atenção:** o gráfico nativo do Power BI pode apresentar limitações para rótulos personalizados de texto. A equipe deverá testar uma alternativa compatível com o requisito.

## ETAPA 4 — Construção do dashboard

### F01-13 | Definir layout e identidade visual

**Responsável:** Pessoa E

**Prioridade:** P1

**Dificuldade:** Média

**Esforço:** 2 pontos

**Como executar:**

1. Consultar o manual da marca e a logo da Rede Aurora.
2. Identificar cores, fontes e regras de aplicação.
3. Criar um esboço das duas páginas.
4. Definir a posição dos filtros, cartões, gráficos e tabelas.
5. Validar a proposta com as Pessoas C e D.

**Critério de conclusão:** layout planejado e padrão visual definido.

### F01-14 | Criar cartões de indicadores e filtros

**Responsável:** Pessoa D

**Prioridade:** P0

**Dificuldade:** Média

**Esforço:** 2 pontos

**Dependências:** F01-08, F01-10 e F01-11

**Como executar:**

1. Inserir cartões de valor líquido e número de vendas.
2. Inserir cartões de metas de valor e quantidade.
3. Inserir os percentuais de atingimento.
4. Adicionar filtros de mês e ano.
5. Configurar formatação monetária e percentual.
6. Testar as interações dos filtros.

**Critério de conclusão:** cartões e filtros funcionando corretamente.

### F01-15 | Criar gráficos comerciais

**Responsável:** Pessoa D

**Prioridade:** P1

**Dificuldade:** Muito difícil

**Esforço:** 4 pontos

**Dependências:** F01-08 a F01-12

**Como executar:**

1. Criar gráfico horizontal de valor líquido por filial, em ordem decrescente.
2. Criar gráfico das dez maiores cidades.
3. Implementar os rótulos combinados de valor e quantidade.
4. Criar gráfico de colunas por grupo de serviço.
5. Adicionar a meta de valor como linha no gráfico de grupos.
6. Aplicar a identidade visual.
7. Testar valores, ordenação e filtros.

**Critério de conclusão:** três gráficos completos, coerentes e legíveis.

### F01-16 | Criar matrizes por vendedor e profissional

**Responsável:** Pessoa E

**Prioridade:** P1

**Dificuldade:** Difícil

**Esforço:** 3 pontos

**Dependências:** F01-09 e F01-11

**Como executar:**

1. Inserir matriz por vendedor.
2. Incluir valor, meta de valor, percentual, quantidade, meta de quantidade e percentual.
3. Utilizar as metas específicas do nível Vendedor.
4. Repetir a estrutura para profissionais.
5. Utilizar as metas específicas do nível Profissional.
6. Aplicar formatação condicional nos percentuais.

**Critério de conclusão:** duas matrizes com as seis colunas exigidas e medidas corretas.

### F01-17 | Criar tabela de serviços e navegação

**Responsável:** Pessoa E

**Prioridade:** P1

**Dificuldade:** Muito difícil

**Esforço:** 4 pontos

**Dependências:** F01-09, F01-11 e F01-13

**Como executar:**

1. Criar tabela por serviço.
2. Incluir valor bruto, quantidade de itens e metas.
3. Tratar os serviços sem meta.
4. Configurar navegação entre os sete cortes utilizando botões, marcadores ou parâmetros de campo.
5. Sincronizar filtros de período quando necessário.
6. Verificar que o relatório utiliza, no máximo, duas páginas.

**Critério de conclusão:** serviços e navegação funcionando, com todos os cortes acessíveis.

## ETAPA 5 — Testes e aprovação

### F01-18 | Validar os cálculos do relatório

**Responsável:** Pessoa C

**Prioridade:** P0

**Dificuldade:** Média

**Esforço:** 2 pontos

**Dependências:** F01-11 e F01-12

**Como executar:**

1. Selecionar setembro/2026.
2. Conferir valores líquidos e quantidades.
3. Comparar as medidas de metas com a base.
4. Testar os sete cortes.
5. Verificar resultados sem meta e divisão por zero.
6. Registrar inconsistências e acompanhar as correções.

**Critério de conclusão:** medidas revisadas e aprovadas.

### F01-19 | Testar a apresentação e a usabilidade

**Responsável:** Pessoa D

**Prioridade:** P1

**Dificuldade:** Média

**Esforço:** 2 pontos

**Dependências:** F01-14 a F01-17

**Como executar:**

1. Conferir os cartões e gráficos.
2. Conferir as matrizes e a tabela de serviços.
3. Testar os filtros e a navegação.
4. Verificar a ordenação e a legibilidade dos gráficos.
5. Confirmar a aplicação da identidade visual.
6. Simular a apresentação para a diretoria.

**Critério de conclusão:** relatório navegável, legível e compreensível.

### F01-20 | Responder às perguntas de aprovação

**Responsável:** Pessoa C

**Prioridade:** P0

**Dificuldade:** Difícil

**Esforço:** 3 pontos

**Dependência:** F01-18

Todas as respostas devem considerar setembro/2026.

**Como executar:**

1. Calcular o valor líquido vendido pela rede e o percentual da meta de valor.
2. Identificar a filial líder em valor líquido e seu percentual de atingimento.
3. Identificar a cidade com mais vendas e verificar se também lidera em valor.
4. Encontrar o vendedor com meta de valor que possui o menor percentual de atingimento.
5. Identificar o grupo de serviço com maior valor bruto e sua participação no total bruto dos itens.
6. Registrar todas as respostas com as evidências utilizadas.
7. Solicitar conferência de outro integrante.

**Critério de conclusão:** as cinco respostas estão registradas, corretas e conferidas.

## ETAPA 6 — Integração e entrega

### F01-21 | Integrar e publicar o relatório

**Responsável:** Pessoa D

**Prioridade:** P0

**Dificuldade:** Média

**Esforço:** 2 pontos

**Dependências:** F01-18, F01-19 e F01-20

**Como executar:**

1. Integrar todas as contribuições no PBIX principal.
2. Confirmar a presença das duas páginas e de todas as medidas necessárias.
3. Realizar uma conferência final do relatório.
4. Salvar a versão final do PBIX.
5. Publicar no Power BI Service.
6. Utilizar a opção Publicar na Web, conforme solicitado no desafio, se disponível e autorizada.

**Critério de conclusão:** relatório consolidado e publicado, com link público funcional.

### F01-22 | Compartilhar PBIX e testar links

**Responsável:** Pessoa E

**Prioridade:** P0

**Dificuldade:** Fácil

**Esforço:** 1 ponto

**Dependência:** F01-21

**Como executar:**

1. Receber o PBIX final.
2. Enviar para Google Drive ou OneDrive.
3. Habilitar acesso para qualquer pessoa com o link.
4. Testar o link do PBIX em janela anônima.
5. Testar o relatório publicado em janela anônima.
6. Confirmar que nenhum dos dois solicita login.

**Critério de conclusão:** os dois links são acessíveis publicamente.

### F01-23 | Realizar entrega oficial

**Responsável:** Pessoa E

**Prioridade:** P0

**Dificuldade:** Fácil

**Esforço:** 1 ponto

**Dependência:** F01-22

**Como executar:**

1. Confirmar que todos os testes foram finalizados.
2. Reunir o link do relatório publicado.
3. Reunir o link do PBIX.
4. Enviar ambos na plataforma do bootcamp.
5. Registrar a confirmação da entrega para a squad.

**Critério de conclusão:** entrega registrada na plataforma até 07/11/2026 às 23h59.

---

# 4. Cronograma de execução

Considerando o prazo próximo, a proposta é trabalhar em paralelo sempre que possível.

**Importante:** este cronograma é acelerado. Se as tarefas críticas demorarem mais que o previsto, a equipe deverá priorizar a correção dos dados e das medidas antes de refinamentos estéticos.

| Data | Principal objetivo |
| --- | --- |
| 04/11 - Quarta | Organizar os dados, construir o modelo e preparar as atividades que podem acontecer em paralelo. |
| 05/11 - Quinta | Validar o modelo, implementar as principais medidas e iniciar os elementos visuais. |
| 06/11 - Sexta | Concluir o dashboard, integrar as contribuições e validar os resultados. |
| 07/11 - Sábado | Realizar a conferência final, publicar o relatório e enviar a entrega oficial. |

---

## 4.1. Distribuição diária sugerida

**Quarta-feira — 04/11**

| Integrante | Tarefas | Atividades |
| --- | --- | --- |
| Pessoa A | F01-01 a F01-06 | Baixar dados, analisar dicionário, importar tabelas, tratar dados, criar relacionamentos e configurar calendário |
| Pessoa B | Preparação de F01-07 a F01-10 | Estudar as regras de metas, verificar as tabelas de metas e planejar as medidas DAX |
| Pessoa C | Preparação de F01-11 e F01-12 | Estudar percentuais, tratamento de ausência de meta e medidas de status |
| Pessoa D | Preparação de F01-14 e F01-15 | Planejar cartões, gráficos e estrutura dos indicadores |
| Pessoa E | F01-13 | Definir layout, identidade visual e organização das duas páginas |

**Entregas esperadas:**

- As 11 tabelas importadas.
- Modelo de dados construído.
- Calendário configurado.
- Regras de metas compreendidas.
- Layout das duas páginas definido.

**Prioridade:** disponibilizar o modelo para que os cálculos e os visuais possam começar.

**Quinta-feira — 05/11**

| Integrante | Tarefas | Atividades |
| --- | --- | --- |
| Pessoa A | Suporte de modelagem | Corrigir possíveis problemas nos relacionamentos e apoiar a equipe |
| Pessoa B | F01-07 a F01-10 | Validar o modelo, criar medidas base e desenvolver as metas por nível e consolidadas |
| Pessoa C | F01-11 e F01-12 | Desenvolver percentuais de atingimento, status e rótulos combinados |
| Pessoa D | F01-14 e início de F01-15 | Criar cartões, filtros e iniciar gráficos comerciais |
| Pessoa E | Início de F01-16 e F01-17 | Construir matrizes, tabela de serviços e estrutura de navegação |

**Entregas esperadas:**

- Modelo validado.
- Medidas de valor e quantidade funcionando.
- Metas implementadas e em validação.
- Percentuais e indicadores de status criados.
- Cartões, gráficos e matrizes em desenvolvimento.

**Prioridade:** garantir que as medidas respeitem os diferentes níveis de meta, sem duplicar valores.

**Sexta-feira — 06/11**

| Integrante | Tarefas | Atividades |
| --- | --- | --- |
| Pessoa A | Suporte técnico | Corrigir problemas de dados ou relacionamentos encontrados |
| Pessoa B | Validação de metas | Conferir as metas por nível, filial, cidade e rede |
| Pessoa C | F01-18 e F01-20 | Testar cálculos e responder às cinco perguntas de aprovação |
| Pessoa D | Conclusão de F01-15 e F01-19 | Finalizar os gráficos, integrar contribuições e testar a apresentação |
| Pessoa E | Conclusão de F01-16 e F01-17 | Finalizar matrizes, tabela de serviços, navegação e identidade visual |

**Entregas esperadas:**

- Relatório com até duas páginas concluído.
- Sete cortes navegáveis.
- Medidas e metas validadas.
- Cinco perguntas de aprovação respondidas.
- Relatório integrado e revisado.

**Prioridade:** encerrar o desenvolvimento e corrigir as inconsistências antes da publicação.

**Sábado — 07/11**

| Integrante | Tarefas | Atividades |
| --- | --- | --- |
| Pessoa A | Suporte final | Resolver problemas relacionados aos dados |
| Pessoa B | Conferência final | Apoiar a validação dos indicadores e metas |
| Pessoa C | Conferência das respostas | Validar novamente as perguntas de aprovação |
| Pessoa D | F01-21 | Integrar últimos ajustes e publicar o relatório na web |
| Pessoa E | F01-22 e F01-23 | Compartilhar PBIX, testar links e realizar a entrega |

**Entregas esperadas:**

- Relatório publicado na web.
- Arquivo PBIX disponível no Google Drive ou OneDrive.
- Ambos os links funcionando sem exigir login.
- Entrega realizada na plataforma do bootcamp.

**Meta interna:** finalizar o envio até as 20h, mantendo uma margem de segurança em relação ao prazo oficial das 23h59.

---

# 5. Organização do trabalho colaborativo

O Power BI Desktop não permite que vários integrantes editem simultaneamente o mesmo PBIX como em um documento online.

Para evitar perda de trabalho e conflitos de versão, serão adotadas as seguintes regras:

1. Existirá um PBIX principal, com controle de versão.
2. A Pessoa A será responsável pela versão inicial do modelo.
3. A Pessoa D será responsável pela integração final.
4. As pessoas poderão utilizar cópias de desenvolvimento para testar medidas e visuais.
5. Medidas DAX deverão ser documentadas com nome, fórmula e finalidade.
6. Alterações no PBIX principal deverão ser integradas de forma controlada.
7. Antes de mudanças grandes, deverá ser salva uma cópia de segurança.
8. As versões finais deverão ficar disponíveis para toda a squad.

**Sugestão de organização de arquivos:**

- `01_Dados`: planilhas originais e dicionário.
- `02_Desenvolvimento`: arquivos de trabalho e medidas DAX.
- `03_Evidencias`: testes, capturas de tela e respostas.
- `04_Entrega`: PBIX final e links.

---

# 6. Principais regras de negócio

Para evitar erros nos indicadores, toda a equipe deverá considerar:

| Corte | Valor realizado | Quantidade | Meta |
| --- | --- | --- | --- |
| Rede | Valor líquido | Número de vendas | Soma das filiais |
| Filial | Valor líquido | Número de vendas | Produto para valor; Vendedor para quantidade |
| Cidade | Valor líquido | Número de vendas | Soma das filiais da cidade |
| Vendedor | Valor líquido | Número de vendas | Nível Vendedor |
| Profissional | Valor líquido | Número de vendas | Nível Profissional |
| Grupo de serviço | Valor bruto dos itens | Quantidade de itens | Nível Produto |
| Serviço | Valor bruto dos itens | Quantidade de itens | Nível Serviço |

**Regras críticas:**

- O valor líquido das vendas considera os descontos.
- O valor bruto dos itens não considera o rateio dos descontos.
- O número de vendas não é igual à quantidade de itens vendidos.
- As metas dos diferentes níveis não devem ser somadas entre si.
- Serviços sem meta devem exibir "sem meta".
- Meses futuros podem conter metas, mas não possuem vendas realizadas nos dados.
- A data máxima de vendas disponível é 30/09/2026.

O desrespeito a essas regras pode gerar resultados incorretos, mesmo que os visuais estejam funcionando.

---

# 7. Critérios de revisão e conclusão

Uma tarefa poderá ser movida para **Em revisão** quando:

- A execução estiver finalizada.
- O responsável tiver realizado um teste inicial.
- Existir evidência do resultado, quando aplicável.
- O arquivo ou a contribuição estiver disponível para integração.

Uma tarefa poderá ser movida para **Concluído** quando:

- O critério de conclusão estiver atendido.
- O resultado tiver sido verificado.
- Não houver erros conhecidos que comprometam a entrega.
- A contribuição estiver integrada ou pronta para integração.

Sempre que possível, a validação deverá ser realizada por alguém diferente do responsável pela execução.

---

# 8. Principais riscos e ações preventivas

| Risco | Ação preventiva |
| --- | --- |
| Erros nos relacionamentos | Validar o modelo antes das medidas |
| Metas duplicadas | Separar os cálculos por nível |
| Dificuldade com DAX | Documentar e testar cada medida |
| Conflitos entre arquivos PBIX | Manter integração centralizada |
| Rótulos não suportados pelos gráficos | Validar a solução visual antecipadamente |
| Excesso de informações nas duas páginas | Planejar navegação e layout antes da montagem |
| Atrasos nas tarefas técnicas | Priorizar tarefas críticas e redistribuir apoio |
| Problemas na publicação | Testar o acesso e os links antes do prazo |

---

# 9. Checklist de entrega oficial

Antes de realizar o envio, a squad deverá confirmar:

- [ ]  As 11 tabelas da Fase 1 foram carregadas.
- [ ]  Os relacionamentos foram validados.
- [ ]  As medidas de valor e quantidade estão corretas.
- [ ]  As metas respeitam os níveis definidos.
- [ ]  Os percentuais de atingimento foram testados.
- [ ]  Os casos sem meta são tratados corretamente.
- [ ]  Os sete cortes de análise estão disponíveis.
- [ ]  Todos os visuais solicitados foram implementados.
- [ ]  O painel possui no máximo duas páginas.
- [ ]  Os filtros de mês e ano funcionam.
- [ ]  As cinco perguntas de aprovação foram respondidas.
- [ ]  A identidade visual oficial foi aplicada.
- [ ]  O relatório está publicado.
- [ ]  O arquivo PBIX final foi compartilhado.
- [ ]  Os dois links foram testados em janela anônima.
- [ ]  A entrega foi registrada na plataforma dentro do prazo.

---

# 10. Acordos e próximos passos

A squad deverá:

1. Definir quem será a Pessoa A, B, C, D e E.
2. Confirmar se todos têm acesso aos dados e ao Power BI.
3. Conferir as prioridades, dificuldades e dependências.
4. Combinar como serão compartilhados os arquivos de trabalho.
5. Definir horários para alinhamento e integração.
6. Iniciar imediatamente as tarefas que não dependem de outras.

**Objetivo comum da squad:** entregar um painel comercial funcional, com cálculos confiáveis, navegação clara e todos os requisitos da Fase 1 atendidos.

A qualidade dos dados e dos indicadores terá prioridade sobre os refinamentos visuais. A responsabilidade pela entrega é coletiva, mesmo com tarefas individuais.