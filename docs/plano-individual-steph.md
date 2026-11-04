# Plano de execução individual — Painel Aurora - Steph

Este planejamento usa **23 Issues individuais**, sem prefixo pessoal nos títulos e **sem atribuição de responsável**. O projeto GitHub **Painel Aurora - Steph** é separado do quadro da squad, e suas Issues são cópias independentes das tarefas coletivas. Elas podem ser identificadas pela etiqueta `individual:Steph`.

> O planejamento de 04 a 07/11 foi elaborado para **cinco pessoas**. Sozinha, executar os **58 pontos** até 07/11 é um risco elevado. As ondas a seguir representam a **sequência por dependências**, não prazos garantidos.

## Organização do trabalho individual

- **Projeto:** Painel Aurora - Steph (GitHub Projects separado do projeto Painel Aurora da squad).
- **Branch de desenvolvimento:** `steph` (ainda não renomeada para `steph-ind`).
- **Referência dos requisitos:** [Documento ajustado de tarefas da Fase 1](tarefas-desafio-fase-01.md).
- **Issues individuais:** [ver as 23 tarefas com etiqueta `individual:Steph`](https://github.com/stephleao/educadados-aurora-painel/issues?q=is%3Aopen+is%3Aissue+label%3Aindividual%3ASteph).
- **Identificação das etapas:** etiquetas `solo:onda-1` a `solo:onda-6`, além de prioridade, dificuldade e esforço.
- **Responsáveis:** não atribuídos nas Issues individuais, pois o projeto pessoal já contextualiza a execução.
- **Arquivos de trabalho:** manter PBIX e arquivos de desenvolvimento em pasta pessoal, sem sobrescrever os da squad. A [pasta compartilhada da equipe](https://drive.google.com/drive/folders/1ImPkDwLwbxaNvFR_UZ92ou28MN97AtDQ) permanece como referência.

## Ordem recomendada

| Onda | Trabalho | Códigos | Pontos | Marco |
|---|---|---|---:|---|
| **1 — Começar agora** | Preparar arquivos e esboçar layout | F01-01, F01-13 | 3 | Dados organizados e telas planejadas |
| **2 — Construir modelo** | Dicionário, importação, qualidade, relacionamentos, calendário e validação | F01-02 a F01-07 | 14 | Modelo sem erros conhecidos |
| **3 — DAX essencial** | Realizados, metas e percentuais | F01-08 a F01-11 | 14 | Cálculos testados em tabela |
| **4 — Criar dashboard** | Rótulos/status, cartões, gráficos, matrizes, serviços e navegação | F01-12, F01-14 a F01-17 | 16 | Sete cortes em até duas páginas |
| **5 — Validar** | Testar medidas, usabilidade e responder aprovação | F01-18 a F01-20 | 7 | Cinco perguntas respondidas |
| **6 — Entregar** | Integrar/publicar, testar links e enviar | F01-21 a F01-23 | 4 | Entrega enviada e acessível |
| **Total** | | **23 tarefas** | **58** | |

**Ordem inicial concreta:** F01-01 → F01-02 → F01-03 → F01-04 → F01-05 → F01-06 → F01-07 → F01-08 → F01-09 → F01-10 → F01-11. **F01-13** pode ser feito desde o início, porque é independente de DAX.

Para concluir o desafio, as 23 tarefas continuam sendo necessárias. Em caso de restrição de tempo, valide o modelo e as metas antes de refinamentos visuais; não trate requisitos obrigatórios como opcionais.

## Cópias válidas e dependências

| Código | Issue individual | Depende das Issues individuais |
|---|---|---|
| F01-01 | #26 | — |
| F01-02 | #27 | #26 |
| F01-03 | #28 | #26, #27 |
| F01-04 | #29 | #28 |
| F01-05 | #30 | #27, #28, #29 |
| F01-06 | #43 | #30 |
| F01-07 | #31 | #30, #43 |
| F01-08 | #32 | #31 |
| F01-09 | #33 | #31, #32 |
| F01-10 | #34 | #33 |
| F01-11 | #36 | #33, #34 |
| F01-12 | #37 | #36 |
| F01-13 | #38 | — |
| F01-14 | #39 | #32, #34, #36, #38 |
| F01-15 | #40 | #32, #33, #34, #36, #37, #38 |
| F01-16 | #41 | #33, #36, #38 |
| F01-17 | #42 | #33, #36, #38 |
| F01-18 | #44 | #36, #37 |
| F01-19 | #45 | #39, #40, #41, #42 |
| F01-20 | #46 | #44 |
| F01-21 | #47 | #44, #45, #46 |
| F01-22 | #48 | #47 |
| F01-23 | #49 | #48 |

A Issue **#35** foi criada por engano como duplicata da F01-10. Está fechada como duplicata e **não é parte das 23 tarefas**. A F01-10 válida é **#34**.

## Como acompanhar

- Trabalhar com a tag `individual:Steph` e `solo:onda-N`.
- Uma tarefa por vez em *Em andamento*, salvo a preparação independente do layout.
- Antes de marcar *Concluído*, conferir o critério de conclusão e guardar evidência.
- Usar o [Drive da squad](https://drive.google.com/drive/folders/1ImPkDwLwbxaNvFR_UZ92ou28MN97AtDQ) como referência; guardar seus arquivos de desenvolvimento em subpasta pessoal para não sobrescrever o PBIX compartilhado.
- Seguir as regras técnicas do [documento ajustado](tarefas-desafio-fase-01.md), especialmente a separação das quatro metas e o tratamento de “sem meta”.

## Projetos, branches e visibilidade

As 23 Issues individuais **já foram adicionadas manualmente ao projeto Painel Aurora - Steph**. Não é necessário instalar GitHub CLI ou executar scripts para vinculá-las.

O repositório é **público**: suas Issues e os arquivos da branch `steph` são visíveis mesmo quando o GitHub Project pessoal é privado. A privacidade do quadro não torna suas Issues privadas. Isso é conhecido e aceitável para o acompanhamento atual.

O `README.md` compartilhado permanece idêntico nas branches `main` e `steph`; as informações individuais ficam exclusivamente neste arquivo.

**Antes de um merge para `main`:** confira quais arquivos serão integrados. Embora este documento só exista na branch `steph` agora, um merge normal pode adicioná-lo à `main`. Se quiser manter a documentação individual fora da branch da squad, exclua este arquivo das alterações que serão integradas.

A Issue **#35** é uma duplicata fechada da F01-10 e não integra as 23 tarefas válidas. Não interpretá-la como trabalho concluído.
