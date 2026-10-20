-- AULA: Ordenando dados (ORDER BY)
-- TIPO: AULA e DESAFIO
-- O QUE FAZ: ORDER BY define a ordem das linhas no resultado.
-- Pode usar mais de uma coluna, e cada uma pode ser ASC ou DESC.

-- [AULA] Ordena por produto (crescente) e, dentro do produto,
-- por quantidade do maior para o menor
SELECT	PRODUTO,
		MOVIMENTO,
		QUANTIDADE,
		VENDA_BRUTA
FROM VENDAS_ANALITICAS
ORDER BY PRODUTO, QUANTIDADE DESC;

-- [DESAFIO] Ordena os clientes do cadastro mais novo para o mais antigo
SELECT	ENTIDADE AS COD_CLIENTE, CONCAT (INSCRICAO_FEDERAL, ' - ' ,NOME) AS CLIENTE, DATA_CADASTRO
FROM ENTIDADES
ORDER BY DATA_CADASTRO DESC;
