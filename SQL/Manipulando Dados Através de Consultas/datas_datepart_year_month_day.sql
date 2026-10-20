-- AULA: Funcoes de data (DATEPART, YEAR, MONTH, DAY)
-- TIPO: AULA
-- O QUE FAZ: GETDATE traz a data/hora atual. YEAR, MONTH e DAY
-- extraem ano, mes e dia de uma data. DATEPART extrai qualquer
-- parte (hora, minuto, semana, dia da semana etc).

-- Mostra a data atual e varias partes dela
-- (as 2 ultimas linhas ficaram com erro no arquivo original - a
-- funcao DATE nao existe - por isso a linha esta comentada)
SELECT GETDATE() AS DATA_HORA_ATUAL,
YEAR (GETDATE ()) AS ANO,
MONTH (GETDATE ()) AS MES,
DAY (GETDATE ()) AS DIA,
DATEPART (HOUR, GETDATE ()) AS HORAS,
DATEPART (MINUTE, GETDATE ()) AS MINUTOS,
DATEPART (WEEK, GETDATE ()) AS SEMANA,
DATEPART (WEEKDAY, GETDATE ()) AS DIA_SEMANA,
DATEADD (YEAR, 1, GETDATE ())
-- DATE (YEAR, 1, GETDATE ())  -- essa linha nao existe no SQL Server, foi um erro de digitacao

-- Aplica as mesmas funcoes na data de cadastro e filtra pelo dia
-- da semana (6 = sexta). Tambem calcula a idade do cadastro em anos.
SELECT	NOME,
		DATA_CADASTRO,
		YEAR (DATA_CADASTRO) AS ANO_CADASTRO,
		MONTH (DATA_CADASTRO) AS MES_CADASTRO,
		DAY (DATA_CADASTRO) AS DIA_CADASTRO,
		DATEPART (WEEKDAY, DATA_CADASTRO) AS DIA_SEMANA_CADASTRO,
		DATEPART (DAYOFYEAR, DATA_CADASTRO) AS DIA_NO_ANO,
		CONCAT (DATEDIFF  (YEAR, DATA_CADASTRO, GETDATE ()), ' ANOS') AS DIFERENCA_ANOS
FROM ENTIDADES
WHERE DATEPART (WEEKDAY, DATA_CADASTRO) = 6
ORDER BY ANO_CADASTRO;
