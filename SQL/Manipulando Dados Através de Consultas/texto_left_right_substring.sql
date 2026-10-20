-- AULA: Funcoes de texto (LEFT, RIGHT, SUBSTRING)
-- TIPO: AULA
-- O QUE FAZ: LEFT pega os primeiros N caracteres, RIGHT pega os
-- ultimos N, SUBSTRING pega N caracteres a partir de uma posicao.

-- Compara os 3 jeitos de recortar texto
SELECT	NOME,
		LEFT (NOME, 7),
		RIGHT (NOME, 4),
		SUBSTRING (NOME, 4, 4)
FROM ENTIDADES;
