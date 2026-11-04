# Plano de execução — Fase 01

## Escopo
Painel Power BI em até duas páginas; seletor de mês e ano, análise navegável em sete cortes e comparação lado a lado de valor, quantidade, metas e percentuais. Visuais: cartões, barras por filial e top 10 cidades com rótulo combinado, colunas de grupos com linha de meta, matrizes de vendedor/profissional e tabela de serviços.

## Distribuição estimada (58 pontos)
| Perfil | Entregas | Issues | Pontos |
|---|---|---|---:|
| Pessoa A — Dados e modelo | Organização, importação, Power Query, relacionamentos, calendário | F01-01 a F01-06 | 12 |
| Pessoa B — Metas | Validação do modelo, medidas base e metas | F01-07 a F01-10 | 13 |
| Pessoa C — Cálculos e testes | Atingimento, status, validação e perguntas | F01-11, F01-12, F01-18, F01-20 | 12 |
| Pessoa D — Visual e integração | Cartões, gráficos, revisão visual e publicação | F01-14, F01-15, F01-19, F01-21 | 10 |
| Pessoa E — Layout e entrega | Identidade visual, matrizes, serviços, links e submissão | F01-13, F01-16, F01-17, F01-22, F01-23 | 11 |

**Esforço relativo:** fácil 1 ponto; médio 2; difícil 3; muito difícil 4. **P0:** tarefa crítica/bloqueadora. **P1:** requisito importante, sem dispensar entrega.

## Cronograma — 04 a 07/11/2026

| Data | Pessoa A | Pessoa B | Pessoa C | Pessoa D | Pessoa E |
|---|---|---|---|---|---|
| **04/11** | F01-01 a 06 (base/modelo) | Estudar regras e planejar metas | Preparar cálculos e testes | Preparar visuais | F01-13 (layout) |
| **05/11** | Apoiar correções no modelo | F01-07 a 10 (modelo, base, metas) | F01-11 e 12 conforme medidas disponíveis | F01-14 e iniciar 15 | Iniciar F01-16 e 17 |
| **06/11** | Apoio técnico | Conferir metas | F01-18 e 20 | Concluir 15, F01-19, integração | Concluir 16 e 17 |
| **07/11** | Suporte | Conferência final | Conferir aprovação | F01-21 publicação | F01-22 e 23, testes e envio |

**Meta interna:** publicar e enviar até 20h em 07/11. Prazo oficial 23h59. O cronograma é acelerado: renegociar apoio imediatamente se DAX bloquear os visuais.

## Fluxo Kanban
Backlog → A fazer → Em andamento → Em revisão → Concluído.

**A fazer:** tarefa definida e desimpedida. **Em andamento:** execução iniciada (idealmente uma por pessoa). **Em revisão:** implementação pronta com evidência. **Concluído:** validada por outro integrante quando possível e integrada, ou pronta para integração.

## Como colaborar
- Manter **um PBIX principal** com integração controlada pela Pessoa D, a partir do modelo base da Pessoa A.
- Não editar o mesmo PBIX principal simultaneamente; compartilhar medidas DAX como texto e visuais em cópias de desenvolvimento.
- Usar Google Drive/OneDrive para dados e PBIX, com pastas `01_Dados`, `02_PowerBI`, `03_Design`, `04_Evidencias`, `05_Entrega`.
- Reunião diária de 10–15 min: concluído, próximo passo, bloqueios.
- Priorizar modelo e cálculos confiáveis antes do refinamento estético.
- Atribuir pessoas reais às Issues quando a squad confirmar os cinco responsáveis.

## Pontos de atenção
As metas têm quatro níveis independentes que **não** devem ser somados. Percentuais devem tratar divisão por zero e ausência de meta. O rótulo combinado personalizado pode demandar solução visual alternativa compatível com o Power BI.
