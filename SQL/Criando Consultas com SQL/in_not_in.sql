-- AULA: Clausulas IN e NOT IN
-- TIPO: AULA
-- O QUE FAZ: IN e um atalho para varios "OU =" ao mesmo tempo -
-- verifica se o valor esta numa lista. NOT IN faz o oposto.

-- Exclui os codigos informados na lista
SELECT		*
	FROM	ENTIDADES
	WHERE	ENTIDADE NOT IN (1001, 1, 1035, 1258, 1455, 1254);

-- Traz apenas os enderecos dos estados informados na lista
SELECT		CIDADE, ESTADO
	FROM	ENDERECOS
	WHERE	ESTADO IN ('CE', 'SP', 'BA');
