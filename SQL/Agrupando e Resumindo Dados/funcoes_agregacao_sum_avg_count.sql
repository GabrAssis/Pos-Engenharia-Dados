-- AULA: Funcoes de agregacao (SUM, AVG, COUNT) + GROUP BY
-- TIPO: AULA
-- O QUE FAZ: SUM soma, AVG calcula media, COUNT conta linhas.
-- GROUP BY define como as linhas sao agrupadas antes de somar/contar.
-- COUNT(DISTINCT coluna) conta valores diferentes, sem repetir.

-- Soma a quantidade vendida de um produto, por cliente
SELECT PRODUTO, CLIENTE, SUM (QUANTIDADE) AS VENDA
FROM VENDAS_ANALITICAS
WHERE PRODUTO = 34902
GROUP BY PRODUTO, CLIENTE
ORDER BY CLIENTE;

-- Media de quantidade e numero de compras por cliente
SELECT	PRODUTO, 
		CLIENTE, 
		AVG (QUANTIDADE) AS MEDIA,
		COUNT (PRODUTO) AS QTDE_COMPRAS
FROM VENDAS_ANALITICAS
WHERE PRODUTO = 34902
GROUP BY PRODUTO, CLIENTE
ORDER BY QTDE_COMPRAS;

-- Conta quantos produtos DIFERENTES cada cliente comprou
SELECT	CLIENTE, 
		COUNT (DISTINCT PRODUTO) AS QTDE_PRODUTOS
FROM VENDAS_ANALITICAS
GROUP BY CLIENTE
ORDER BY CLIENTE;
