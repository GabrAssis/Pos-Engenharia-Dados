-- AULA: Funcoes de texto (UPPER, LOWER, REPLACE, LEN)
-- TIPO: AULA
-- O QUE FAZ: UPPER deixa maiusculo, LOWER deixa minusculo, REPLACE
-- troca um pedaco do texto por outro, LEN conta os caracteres.

-- Deixa o nome maiusculo, troca "Cliente " por nada, e conta letras
-- (no arquivo original o 2o UPPER foi usado por engano onde deveria
-- ser LOWER, ja que a coluna chama LETRAS_MINUSCULAS)
SELECT	NOME,
		UPPER (NOME) LETRAS_MAIUSCULAS, 
		UPPER (NOME_FANTASIA) LETRAS_MINUSCULAS,
		REPLACE (NOME, 'Cliente ', '') as FUNCAO_REPLACE, -- SUBSTITUICAO
		LEN (NOME) AS QUANTIDADE_CARACTERES
FROM ENTIDADES;
