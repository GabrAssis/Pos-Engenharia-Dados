-- AULA: Clausula BETWEEN
-- TIPO: AULA
-- O QUE FAZ: filtra valores dentro de um intervalo, incluindo os
-- dois limites. Funciona com numero, data e ate texto.

-- Entidades com codigo entre 1000 e 1010 (incluindo os dois)
SELECT *
FROM ENTIDADES
WHERE ENTIDADE BETWEEN 1000 AND 1010;
