-- AULA: Funcoes numericas (ROUND, FLOOR, CEILING, ABS)
-- TIPO: AULA
-- O QUE FAZ: CEILING arredonda para cima, FLOOR arredonda para
-- baixo, ROUND arredonda para X casas decimais, ABS remove o sinal.
-- Tambem usa TOP para limitar a 10 linhas.

-- Compara as 4 funcoes na mesma coluna
SELECT TOP	10 PRODUTO, 
			QUANTIDADE, 
			VENDA_BRUTA, 
			CEILING (VENDA_BRUTA) AS FUNCAO_CEILING, 
			FLOOR (VENDA_BRUTA) AS FUNCAO_FLOOR, 
			ROUND (VENDA_BRUTA, 1) AS FUNCAO_ROUND,
			ABS (VENDA_BRUTA) AS FUNCAO_ABS
FROM VENDAS_ANALITICAS;
