--UTILIZANDO SUBCONSULTAS (SUB QUERY)
SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES;

--CONSULTA COM O MODO MANUAL
SELECT * FROM TABELA_DE_CLIENTES 
WHERE BAIRRO IN ('Cobacabana', 'Jardins', 'Santo Amaro', 'Tijuca');

--CONSULTA UTILIZANDO SUBCONSULTAS
SELECT * FROM TABELA_DE_CLIENTES
WHERE BAIRRO IN (SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES);

--EXERCICIO UTILIZANDO DISTINCT
SELECT DISTINCT
	SABOR
FROM 
	TABELA_DE_PRODUTOS
WHERE 
	CODIGO_DO_PRODUTO IN 
			(SELECT 
				INF.CODIGO_DO_PRODUTO
			FROM 
				ITENS_NOTAS_FISCAIS  INF
				INNER JOIN TABELA_DE_PRODUTOS TP 
			ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
			GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO
			HAVING SUM(INF.QUANTIDADE) > 394000);

