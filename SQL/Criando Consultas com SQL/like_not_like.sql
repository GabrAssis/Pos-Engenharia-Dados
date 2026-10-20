-- AULA: Filtrando texto com LIKE e NOT LIKE
-- TIPO: AULA
-- O QUE FAZ: LIKE compara um texto com um padrao usando curingas:
-- % = qualquer sequencia de caracteres | _ = um caractere qualquer
-- NOT LIKE traz o oposto (quem NAO combina com o padrao)

-- Cidades que comecam com "SA"
SELECT CIDADE
FROM ENDERECOS
WHERE CIDADE LIKE 'SA%';

-- Cidades que NAO contem "ES" em nenhuma parte do nome
SELECT CIDADE
FROM ENDERECOS
WHERE CIDADE NOT LIKE '%ES%';

-- Cidades que comecam com S, tem uma letra qualquer depois e "O" na 3a posicao
SELECT CIDADE, ESTADO
FROM ENDERECOS
WHERE CIDADE LIKE 'S_O%';

-- Nomes que NAO contem "00" em nenhuma parte
SELECT NOME, DATA_CADASTRO
FROM ENTIDADES
WHERE NOME NOT LIKE '%00%';
