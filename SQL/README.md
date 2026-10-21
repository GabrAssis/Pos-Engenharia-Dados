# SQL

Repositório de estudos de SQL da pós-graduação em Engenharia de Dados, com consultas, anotações e exercícios organizados por módulo e assunto.

**Ambiente:** SQL Server e T-SQL. As consultas são editadas e executadas no SQL Server Management Studio (SSMS) ou em ferramenta compatível.

## Módulos e temas

| Pasta | Conteúdos estudados |
|---|---|
| [Criando Consultas com SQL](Criando%20Consultas%20com%20SQL/) | Filtros, operadores de comparação e lógicos, BETWEEN, IN, LIKE, DISTINCT, ordenação, concatenação e operações aritméticas. |
| [Manipulando Dados Através de Consultas](Manipulando%20Dados%20Atrav%C3%A9s%20de%20Consultas/) | Funções de texto, datas e números; COALESCE, NULLIF e conversão de tipos com CAST, CONVERT e TRY_CAST. |
| [Estruturas Condicionais](Estruturas%20Condicionais/) | CASE WHEN, IIF e classificação de vendas aplicada a agrupamentos. |
| [Agrupando e Resumindo Dados](Agrupando%20e%20Resumindo%20Dados/) | SUM, AVG, COUNT, GROUP BY, HAVING e ordem lógica de execução. |
| [Relacionamentos entre Tabelas](Relacionamentos%20entre%20Tabelas/) | INNER, LEFT, RIGHT e FULL JOIN; aplicação em vendas, produtos, marcas, famílias, fabricantes, vendedores e clientes. |
| [Operadores de Conjunto](Operadores%20de%20Conjunto/) | UNION ALL, EXCEPT e INTERSECT; combinação e comparação de conjuntos de consultas. |
| [Trabalhando com Subqueries](Trabalhando%20com%20Subqueries/) | Subconsultas em FROM/JOIN, IN, NOT IN, comparação escalar, TOP 1, EXISTS e NOT EXISTS. |
| [Tabelas Temporárias e CTEs](Tabelas%20Tempor%C3%A1rias%20e%20CTEs/) | Tabelas temporárias locais (#) e globais (##), CREATE TABLE e SELECT INTO. Os arquivos atuais desta pasta cobrem tabelas temporárias. |

As pastas preservam a organização dos estudos. Estruturas condicionais e agrupamentos são mantidos como temas próprios.

## Consultas adicionadas nesta organização

Os 19 arquivos anteriormente identificados como SQLQuery foram nomeados conforme o assunto principal. Os nomes não representam a numeração oficial das aulas.

| Arquivo | Assunto |
|---|---|
| [cast_convert_try_cast.sql](Manipulando%20Dados%20Atrav%C3%A9s%20de%20Consultas/cast_convert_try_cast.sql) | Conversão de tipos com CAST, CONVERT e TRY_CAST; números e datas. |
| [case_when_agrupamento_tipo_venda.sql](Estruturas%20Condicionais/case_when_agrupamento_tipo_venda.sql) | Classificação de vendas com CASE WHEN; AVG e GROUP BY por vendedor e tipo de venda. |
| [joins_inner_left_right_full.sql](Relacionamentos%20entre%20Tabelas/joins_inner_left_right_full.sql) | Exemplos de INNER, LEFT, RIGHT e FULL JOIN com tabelas A e B e filtros de ausência de correspondência. |
| [inner_join_total_vendido_por_marca.sql](Relacionamentos%20entre%20Tabelas/inner_join_total_vendido_por_marca.sql) | Relaciona vendas, produtos e marcas; soma o valor vendido por marca. |
| [inner_join_vendedores_familias_group_by_having.sql](Relacionamentos%20entre%20Tabelas/inner_join_vendedores_familias_group_by_having.sql) | JOIN entre vendas e vendedores; GROUP BY/HAVING; produtos e famílias de produtos. |
| [left_join_coalesce_familias_produtos.sql](Relacionamentos%20entre%20Tabelas/left_join_coalesce_familias_produtos.sql) | LEFT JOIN com famílias/grupos e COALESCE para descrições ausentes; contagens e totais por família. |
| [left_join_fabricantes_media_vendas.sql](Relacionamentos%20entre%20Tabelas/left_join_fabricantes_media_vendas.sql) | LEFT JOIN entre produtos, vendas e fabricantes; COUNT DISTINCT, média e conversão de valores. |
| [right_join_isnull_fabricantes_media_vendas.sql](Relacionamentos%20entre%20Tabelas/right_join_isnull_fabricantes_media_vendas.sql) | RIGHT JOIN preservando produtos; fabricantes, ISNULL, COUNT DISTINCT e média das vendas. |
| [full_join_vendedores_quantidade_vendida.sql](Relacionamentos%20entre%20Tabelas/full_join_vendedores_quantidade_vendida.sql) | FULL JOIN de vendas e vendedores; COALESCE, ISNULL e soma das quantidades. |
| [full_join_clientes_total_vendido.sql](Relacionamentos%20entre%20Tabelas/full_join_clientes_total_vendido.sql) | FULL JOIN de vendas e entidades; total vendido por cliente e inspeção com TOP 10. |
| [union_all_clientes_titulos_receber_pagar.sql](Operadores%20de%20Conjunto/union_all_clientes_titulos_receber_pagar.sql) | UNION ALL de PF, PJ e entidades; união dos valores a receber e a pagar. |
| [union_all_clientes_titulos_receber_pagar_revisao.sql](Operadores%20de%20Conjunto/union_all_clientes_titulos_receber_pagar_revisao.sql) | Mesmas instruções SQL do arquivo 11; preservado como revisão com comentários diferentes. |
| [except_intersect_titulos_receber_pagar.sql](Operadores%20de%20Conjunto/except_intersect_titulos_receber_pagar.sql) | EXCEPT e INTERSECT entre conjuntos de entidades com títulos a pagar e a receber. |
| [subconsultas_from_saldo_receber_pagar.sql](Trabalhando%20com%20Subqueries/subconsultas_from_saldo_receber_pagar.sql) | Subconsultas agregadas em FROM/JOIN; totais a receber, a pagar e saldo por entidade. |
| [subconsultas_in_not_in_clientes_2019.sql](Trabalhando%20com%20Subqueries/subconsultas_in_not_in_clientes_2019.sql) | IN e NOT IN com subconsultas de clientes em vendas de 2019. |
| [subconsulta_escalar_cliente_2019.sql](Trabalhando%20com%20Subqueries/subconsulta_escalar_cliente_2019.sql) | Subconsulta com operador de igualdade; comparação escalar com cliente das vendas de 2019. |
| [subconsulta_top_1_cliente_maior_venda.sql](Trabalhando%20com%20Subqueries/subconsulta_top_1_cliente_maior_venda.sql) | Subconsulta com TOP 1, SUM e ORDER BY para localizar o cliente de maior valor vendido. |
| [exists_not_exists_e_comparacao_joins.sql](Trabalhando%20com%20Subqueries/exists_not_exists_e_comparacao_joins.sql) | EXISTS e NOT EXISTS correlacionados; alternativas com LEFT JOIN e NOT IN; joins explícitos e implícitos. |
| [tabelas_temporarias_locais_globais_select_into.sql](Tabelas%20Tempor%C3%A1rias%20e%20CTEs/tabelas_temporarias_locais_globais_select_into.sql) | CREATE TABLE e SELECT INTO com tabelas temporárias locais (#) e globais (##). |

As duas consultas de UNION ALL foram preservadas: a versão identificada como revisão contém as mesmas instruções SQL com comentários diferentes.

## Como estudar

1. Escolha a pasta do assunto e abra um arquivo `.sql`.
2. Leia as consultas e os comentários antes de executar.
3. Use a base didática correspondente às tabelas utilizadas na aula.
4. Execute cada consulta separadamente e confira o resultado.
5. Registre o objetivo, as regras de negócio e os aprendizados nos comentários.

As consultas dependem das tabelas usadas nas aulas. Funções e recursos de T-SQL podem exigir adaptações para outros bancos.

## Como adicionar uma aula

Use o [modelo para novas aulas](_MODELO_para_novas_aulas.sql) e salve o arquivo na pasta do assunto.

- Escolha um nome descritivo, em minúsculas, com palavras separadas por `_`.
- Identifique a aula, o tipo de exercício e o que a consulta faz.
- Acrescente comentários às regras e decisões que ajudam a entender o código.
- Salve o arquivo antes de preparar o commit.

## Versionamento dos estudos

Na raiz do repositório, confira as alterações com `git status`, prepare os arquivos com `git add -- SQL`, revise com `git diff --cached --stat -- SQL` e registre a evolução com um commit descritivo. Use `git push` para enviar os commits ao GitHub.

[Voltar ao início](../README.md)
