-- AULA: Desafio - usando varios filtros juntos
-- TIPO: DESAFIO
-- O QUE FAZ: junta AND, IN e NOT IN na mesma consulta para aplicar
-- varias condicoes ao mesmo tempo.

-- Clientes especificos (IN), quantidade positiva, vendedores
-- especificos (IN) e produtos fora da lista (NOT IN)
SELECT	CLIENTE, 
		QUANTIDADE, 
		VENDEDOR, 
		PRODUTO, 
		MOVIMENTO
FROM	VENDAS_ANALITICAS
WHERE	CLIENTE IN (1876, 1422, 2249)
	AND	QUANTIDADE > 0
	AND VENDEDOR IN (4, 16)
	AND PRODUTO NOT IN (34726, 34304, 34394, 34593)
ORDER BY MOVIMENTO;
