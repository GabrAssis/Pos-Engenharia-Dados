-- AULA: Funcao NULLIF
-- TIPO: AULA
-- O QUE FAZ: NULLIF(a, b) compara dois valores; se forem IGUAIS
-- retorna NULL, senao retorna o valor de "a". Muito usado para
-- tratar texto vazio ('') como se fosse NULL.

-- Troca COMPLEMENTO vazio por NULL e filtra so quem tem complemento preenchido
SELECT CIDADE, ESTADO, COMPLEMENTO, NULLIF (COMPLEMENTO, '') AS FUNCAO_NULLIF
FROM ENDERECOS
WHERE NULLIF (COMPLEMENTO, '') IS NOT NULL;
