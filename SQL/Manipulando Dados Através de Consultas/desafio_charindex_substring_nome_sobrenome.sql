-- AULA: Desafio - separar nome e sobrenome (CHARINDEX + SUBSTRING)
-- TIPO: DESAFIO
-- O QUE FAZ: CHARINDEX acha a POSICAO de um caractere dentro do
-- texto. Junto com SUBSTRING, da pra cortar o texto em duas partes
-- usando essa posicao como referencia.

-- Acha a posicao do espaco e usa ela para separar nome (antes do
-- espaco) e sobrenome (depois do espaco)
SELECT	NOME,
		CHARINDEX (' ', NOME) AS POSICAO_ESPACO,
		LEN (NOME), 
		SUBSTRING (NOME, 1, CHARINDEX (' ', NOME) - 1) NOME,
		SUBSTRING (NOME, CHARINDEX (' ', NOME) + 1, LEN (NOME) - CHARINDEX (' ', NOME)) AS SOBRENOME
FROM ENTIDADES;
