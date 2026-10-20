-- AULA: Removendo duplicados (DISTINCT)
-- TIPO: AULA
-- O QUE FAZ: remove linhas repetidas do resultado.

-- Lista as cidades sem repetir, dos estados que nao estao na lista
SELECT		DISTINCT (CIDADE), ESTADO
	FROM	ENDERECOS
	WHERE	ESTADO NOT IN ('CE', 'SP', 'BA')
	ORDER BY ESTADO;
