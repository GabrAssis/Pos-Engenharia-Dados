-- AULA: Pratica de CASE WHEN com 3 faixas
-- TIPO: DESAFIO (tentativa com erros - deixado como esta de proposito)
-- O QUE FAZ: tentativa de separar QUANTIDADE em 3 faixas.
--
-- 2 problemas para revisar:
-- 1) as duas primeiras condicoes usam o mesmo texto de saida
-- 2) tem uma virgula sobrando antes do FROM, o que da erro ao rodar
SELECT	VENDEDOR,
		QUANTIDADE,
		CASE	WHEN QUANTIDADE <= 0 THEN 'MENOR OU IGUAL A ZERO'
				WHEN QUANTIDADE < 100 THEN 'MENOR OU IGUAL A ZERO'
				ELSE 'MAIOR OU IGUAL A 100'
		END AS TIPO,
FROM VENDAS_ANALITICAS
WHERE VENDEDOR IS NOT NULL;
