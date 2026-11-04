# Plano de execução individual — Painel Aurora - Steph

Este planejamento usa **23 Issues individuais**, com prefixo `[Steph]`, atribuídas a `stephleao`. O projeto pessoal **Painel Aurora - Steph** é separado do projeto da squad. As cópias têm progresso independente.

> O planejamento de 04 a 07/11 foi elaborado para **cinco pessoas**. Sozinha, executar os **58 pontos** até 07/11 é um risco elevado. As ondas a seguir representam a **sequência por dependências**, não prazos garantidos.

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

## Adicionar as cópias ao projeto certo

Os cartões precisam ser adicionados ao **GitHub Project separado** chamado `Painel Aurora - Steph`. Nunca adicionar as 23 Issues originais da squad como se fossem suas cópias. O script [scripts/adicionar-ao-projeto-steph.ps1](../scripts/adicionar-ao-projeto-steph.ps1) seleciona o projeto **pelo título exato** e adiciona somente as 23 Issues individuais. Precisa ser executado localmente com GitHub CLI autenticado; os campos/status do quadro podem requerer configuração no GitHub.
