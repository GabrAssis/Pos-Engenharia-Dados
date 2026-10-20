-- AULA: IIF (versao curta do CASE WHEN)
-- TIPO: AULA
-- O QUE FAZ: IIF(condicao, se_verdadeiro, se_falso) e um jeito mais
-- curto de escrever um CASE WHEN quando ha so 2 resultados possiveis.

-- Com CASE WHEN: positivo = VENDA, senao = DEVOLUCAO
SELECT	VENDEDOR,
		QUANTIDADE,
		CASE	WHEN QUANTIDADE > 0 THEN 'VENDA'
				ELSE 'DEVOLUCAO'
		END AS TIPO
FROM VENDAS_ANALITICAS
WHERE VENDEDOR IS NOT NULL;

-- A mesma regra, so que com IIF - repare como fica mais curto
SELECT	VENDEDOR,
		QUANTIDADE,
		IIF (QUANTIDADE > 0, 'VENDA' , 'DEVOLUCAO') AS TIPO
FROM VENDAS_ANALITICAS
WHERE VENDEDOR IS NOT NULL;
