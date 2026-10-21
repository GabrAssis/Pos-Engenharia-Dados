
-- SP ID número de contexto de execução
-- tabelas temporárias (apagada sempre que fecha o banco)
-- tabelas temporárias globais (é reconhecido em outros contextos SP ID e acessadas por outros usuários)


CREATE TABLE #tblTemporaria -- Temporaria
(
	cod_cliente INT,
	nome_cliente VARCHAR (80),
	total_vendido MONEY
)


CREATE TABLE ##tblTemporaria -- Global
(
	cod_cliente INT,
	nome_cliente VARCHAR (80),
	total_vendido MONEY
)




SELECT			B.ENTIDADE				AS	cod_cliente,
				B.NOME					AS	nome_cliente,
				SUM	(A.VENDA_LIQUIDA)	AS	total_vendido
	INTO		#tblClienteVendas	-- TABELA TEMPORARIA
	FROM		VENDAS_ANALITICAS	A
	JOIN		ENTIDADES	B	ON	A.CLIENTE	=	B.ENTIDADE
	GROUP BY	B.ENTIDADE,	B.NOME


SELECT			*
	FROM		#tblClienteVendas



SELECT			B.ENTIDADE				AS	cod_cliente,
				B.NOME					AS	nome_cliente,
				SUM	(A.VENDA_LIQUIDA)	AS	total_vendido
	INTO		##tblClienteVendas2	-- TABELA TEMPORARIA GLOBAL
	FROM		VENDAS_ANALITICAS	A
	JOIN		ENTIDADES	B	ON	A.CLIENTE	=	B.ENTIDADE
	GROUP BY	B.ENTIDADE,	B.NOME


SELECT			*
	FROM		##tblClienteVendas2