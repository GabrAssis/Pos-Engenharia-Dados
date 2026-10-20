-- AULA: Operacoes aritmeticas no SQL (+, -, *, /, %)
-- TIPO: DESAFIO (provavel resolucao do desafio da aula)
-- O QUE FAZ: as operacoes aritmeticas podem ser usadas dentro do
-- SELECT para criar colunas calculadas a partir de outras colunas.

-- So para ver as colunas da tabela antes de calcular algo
SELECT *
FROM NF_FATURAMENTO_PRODUTOS;

-- Calcula o valor total (quantidade x valor unitario) e o valor do
-- ICMS (valor total x aliquota / 100)
SELECT	PRODUTO, 
		QUANTIDADE, 
		VALOR_UNITARIO, 
		QUANTIDADE * VALOR_UNITARIO AS VALOR_TOTAL_PRODUTO, 
		ICMS_ALIQUOTA, 
		QUANTIDADE * VALOR_UNITARIO * ICMS_ALIQUOTA / 100 AS ICMS_VALOR
FROM NF_FATURAMENTO_PRODUTOS;
