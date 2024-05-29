--Como apilidar uma coluna
SELECT 
	NOME AS [NOME DO CLIENTE],
	CPF AS [CPF DO CLIENTE],
	ESTADO AS ESTADO_DO_CLIENTE
FROM CLIENTE;


--Fazer uma consulta que traga apenas uma vez o mesmo dado. Trazendo de uma forma distinta.
SELECT DISTINCT SABOR FROM PRODUTOS;