-- AULA: Operadores logicos AND e OR
-- TIPO: AULA
-- O QUE FAZ: AND exige que TODAS as condicoes sejam verdadeiras.
-- OR exige que PELO MENOS UMA condicao seja verdadeira.

-- Basta uma condicao ser verdadeira (inativo, OU cadastro recente,
-- OU inscricao fora do padrao)
SELECT		*
	FROM	ENTIDADES
	WHERE	ATIVO = 'N'
	OR		DATA_CADASTRO >= '18/06/2020'
	OR		INSCRICAO_FEDERAL NOT LIKE '%0001%';

-- OR encadeado para trazer 3 codigos especificos
-- (compare com o proximo arquivo, que faz o mesmo com IN)
SELECT		*
	FROM	ENTIDADES
	WHERE	ENTIDADE = 1001
	OR		ENTIDADE = 1002
	OR		ENTIDADE = 1003;
