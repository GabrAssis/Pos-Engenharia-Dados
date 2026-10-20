-- AULA: Funcoes de data (DATEADD, DATEDIFF, EOMONTH)
-- TIPO: AULA
-- O QUE FAZ: DATEADD soma/subtrai tempo de uma data. DATEDIFF
-- calcula a diferenca entre duas datas. EOMONTH traz o ultimo dia
-- do mes de uma data.

-- Soma 10 dias ao vencimento
SELECT	TITULO,
		VENCIMENTO, 
		DATEADD (DAY, 10, VENCIMENTO) AS VENDIMENTO_PROJETO
FROM TITULOS_RECEBER;

-- Calcula dias de prazo ate hoje, o ultimo dia do mes e o numero desse dia
SELECT	TITULO,
		VENCIMENTO, 
		CONCAT (DATEDIFF  (DAY, MOVIMENTO, GETDATE ()), ' DIAS DE PRAZO') AS PRAZO,
		EOMONTH (MOVIMENTO) AS ULTIMA_DATA_MES,
		DAY (EOMONTH (MOVIMENTO)) AS ULTIMO_DIA_MES
FROM TITULOS_RECEBER;
