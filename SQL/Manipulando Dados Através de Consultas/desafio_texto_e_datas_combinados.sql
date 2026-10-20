-- AULA: Desafio - texto (CHARINDEX/SUBSTRING) + data (DATEDIFF) juntos
-- TIPO: DESAFIO
-- O QUE FAZ: junta o que foi visto de texto e de data numa consulta
-- so, separando "documento/parcela" e calculando o prazo em dias.

-- TITULO vem como "documento/parcela". Acha a barra "/" e separa
-- documento (antes) e parcela (depois). DATEDIFF calcula o prazo.
SELECT	ENTIDADE, 
		TITULO,
		SUBSTRING (TITULO, 1, CHARINDEX ('/', TITULO) -1 ) AS DOCUMENTO,
--					( COLUNA, QTDE APOS POSICAO DA BARRA, QTDE DE CARACTERES - POSICAO A PARTIR DA BARRA) 
		SUBSTRING (TITULO, CHARINDEX ('/', TITULO) +1, LEN (TITULO) - CHARINDEX ('/', TITULO))  AS PARCELA,
		DATEDIFF  (DAY, MOVIMENTO, VENCIMENTO) AS PRAZO
FROM TITULOS_RECEBER
WHERE ENTIDADE = 1824
ORDER BY PRAZO DESC;
