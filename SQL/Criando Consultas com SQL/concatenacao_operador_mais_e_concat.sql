-- AULA: Concatenando valores (operador + e funcao CONCAT)
-- TIPO: AULA e DESAFIO
-- O QUE FAZ: junta o texto de duas ou mais colunas em uma so coluna.
-- CONCAT e mais seguro porque nao quebra se algum valor for NULL.

-- [AULA] Compara as duas formas: operador + e funcao CONCAT
SELECT	ENDERECO,
		CIDADE,
		ESTADO,
		CIDADE + ' - ' + ESTADO AS OPERADOR_MAIS,
		CONCAT (CIDADE,' - ', ESTADO) AS OPERACAO_CONCAT
FROM ENDERECOS;

-- [DESAFIO] Junta o codigo da entidade com o nome fantasia
SELECT	CONCAT (ENTIDADE,' - ', NOME_FANTASIA) AS CONCATENADO
FROM ENTIDADES;

-- [DESAFIO] Junta a descricao do produto com a unidade de medida
SELECT	DESCRICAO + ' - ' + UNIDADE_MEDIDA AS CONCATENADO
FROM PRODUTOS;
