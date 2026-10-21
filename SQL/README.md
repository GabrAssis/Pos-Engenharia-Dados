# SQL | Estudos e competências

Registro dos meus estudos de SQL na pós-graduação em Engenharia de Dados, com exercícios organizados por módulo e aplicações em vendas, clientes, produtos e dados financeiros.

Este diretório compartilha meus aprendizados e minha evolução na construção de consultas, transformação de dados e análises com **SQL Server e T-SQL**.

**Ferramentas utilizadas:** SQL Server Management Studio (SSMS), VS Code, Git e GitHub.

## Competências praticadas

- **Consulta e exploração:** seleção de informações, filtros, ordenação e identificação de valores distintos.
- **Transformação de dados:** manipulação de textos, datas e números, conversão de tipos e tratamento de valores nulos.
- **Regras de negócio:** construção de classificações e cálculos condicionais com CASE WHEN e IIF.
- **Análise de indicadores:** cálculo de totais, médias, contagens e agrupamentos.
- **Relacionamento de tabelas:** integração de informações de vendas, produtos, clientes e vendedores utilizando JOINs.
- **Comparação de conjuntos:** combinação de resultados e identificação de interseções e diferenças.
- **Organização de consultas:** uso de subconsultas e tabelas temporárias para trabalhar com resultados intermediários.

## Módulos e aprendizados

| Módulo | Conteúdos praticados | Aprendizados |
|---|---|---|
| [Criando Consultas com SQL](Criando%20Consultas%20com%20SQL/) | SELECT, WHERE, operadores de comparação e lógicos, BETWEEN, IN, LIKE, DISTINCT, ORDER BY, concatenação e operações aritméticas. | Tradução de critérios de análise em filtros e seleção das informações necessárias para cada consulta. |
| [Manipulando Dados Através de Consultas](Manipulando%20Dados%20Atrav%C3%A9s%20de%20Consultas/) | Funções de texto, datas e números; CAST, CONVERT, TRY_CAST, COALESCE e NULLIF. | Preparação de campos para análise, conversão de tipos e tratamento de valores nulos conforme o contexto. |
| [Estruturas Condicionais](Estruturas%20Condicionais/) | CASE WHEN, IIF, classificação de vendas e cálculo de comissões. | Representação de regras de negócio em SQL e utilização de categorias calculadas em análises e agrupamentos. |
| [Agrupando e Resumindo Dados](Agrupando%20e%20Resumindo%20Dados/) | SUM, AVG, COUNT, GROUP BY, HAVING e ordem lógica de execução. | Definição do nível de detalhe dos resultados e distinção entre filtros sobre registros e filtros sobre grupos agregados. |
| [Relacionamentos entre Tabelas](Relacionamentos%20entre%20Tabelas/) | INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN e tratamento de valores nulos nos resultados. | Escolha dos registros que devem ser preservados em cada relacionamento e análise do efeito das correspondências nos resultados. |
| [Operadores de Conjunto](Operadores%20de%20Conjunto/) | UNION ALL, EXCEPT e INTERSECT. | Combinação de resultados compatíveis, compreensão da preservação de duplicidades no UNION ALL e comparação de conjuntos de entidades. |
| [Trabalhando com Subqueries](Trabalhando%20com%20Subqueries/) | Subconsultas em FROM/JOIN, IN, NOT IN, comparação escalar, TOP 1, EXISTS e NOT EXISTS. | Decomposição de perguntas em etapas e distinção entre subconsultas que retornam um valor, uma lista ou verificam a existência de registros. |
| [Tabelas Temporárias](Tabelas%20Tempor%C3%A1rias%20e%20CTEs/) | Tabelas temporárias locais (#) e globais (##), CREATE TABLE e SELECT INTO. | Armazenamento de resultados intermediários e compreensão do escopo das tabelas temporárias. |

## Aplicações desenvolvidas nos exercícios

| Aplicação | Técnicas utilizadas | Código |
|---|---|---|
| Total vendido por marca | JOIN entre vendas, produtos e marcas; SUM e GROUP BY. | [Vendas por marca](Relacionamentos%20entre%20Tabelas/inner_join_total_vendido_por_marca.sql) |
| Classificação das vendas | CASE WHEN, AVG e agrupamento por vendedor e tipo de venda. | [Classificação por tipo de venda](Estruturas%20Condicionais/case_when_agrupamento_tipo_venda.sql) |
| Análise de produtos e fabricantes | LEFT JOIN, COUNT DISTINCT, AVG e COALESCE. | [Média de vendas por fabricante](Relacionamentos%20entre%20Tabelas/left_join_fabricantes_media_vendas.sql) |
| Saldo financeiro por entidade | Subconsultas agregadas, LEFT JOIN e ISNULL. | [Valores a receber, a pagar e saldo](Trabalhando%20com%20Subqueries/subconsultas_from_saldo_receber_pagar.sql) |
| Comparação de entidades com títulos | EXCEPT e INTERSECT entre consultas. | [Títulos a pagar e a receber](Operadores%20de%20Conjunto/except_intersect_titulos_receber_pagar.sql) |
| Identificação do cliente com maior valor vendido | Subconsulta, TOP 1, SUM e ORDER BY. | [Cliente de maior valor vendido](Trabalhando%20com%20Subqueries/subconsulta_top_1_cliente_maior_venda.sql) |
| Organização de resultados intermediários | CREATE TABLE, SELECT INTO e tabelas temporárias. | [Tabelas temporárias locais e globais](Tabelas%20Tempor%C3%A1rias%20e%20CTEs/tabelas_temporarias_locais_globais_select_into.sql) |

## Aprendizados técnicos

Os exercícios registram o desenvolvimento do meu raciocínio na construção de consultas e na interpretação dos resultados:

- **Granularidade:** compreender o que cada linha representa e escolher as dimensões dos agrupamentos.
- **Relacionamentos:** observar como as chaves e as correspondências entre tabelas influenciam a quantidade de linhas e os indicadores.
- **Valores nulos:** distinguir ausência de informação de valores como zero e definir o tratamento adequado para cada análise.
- **Regras de negócio:** transformar critérios de classificação e cálculo em expressões SQL.
- **Estrutura das consultas:** organizar filtros, relacionamentos, cálculos e agregações para facilitar a leitura e a revisão.
- **Versionamento:** registrar a evolução dos estudos e manter os exercícios organizados por assunto.

As aplicações utilizam a base didática das aulas e compõem o registro do meu desenvolvimento em SQL ao longo da formação.

[Voltar ao repositório principal](../README.md)
