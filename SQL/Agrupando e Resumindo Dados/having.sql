-- AULA: Filtrando grupos com HAVING
-- TIPO: AULA
-- O QUE FAZ: HAVING filtra os GRUPOS depois que GROUP BY e as
-- funcoes de agregacao ja foram calculadas (diferente do WHERE, que
-- filtra antes de agrupar).

-- So mostra os grupos com soma de quantidade > 10 E soma de venda > 65
SELECT	PRODUTO, 
		CLIENTE, 
		SUM (QUANTIDADE) AS QUANTIDADE,
		SUM (VENDA_BRUTA) AS VENDA_BRUTA
FROM VENDAS_ANALITICAS
WHERE PRODUTO = 34902
GROUP BY PRODUTO, CLIENTE
HAVING	SUM (QUANTIDADE) > 10
	AND	SUM (VENDA_BRUTA) > 65.00
ORDER BY QUANTIDADE;
