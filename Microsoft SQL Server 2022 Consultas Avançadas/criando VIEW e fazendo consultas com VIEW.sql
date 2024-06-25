--CREANDO UMA VIEW
--ASSIM CONSEGUIMOS CHAMAR ELA EM OUTRAS CONSULTAS
CREATE VIEW MEDIA_EMBALAGENS AS 
SELECT EMBALAGEM, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO 
FROM TABELA_DE_PRODUTOS 
GROUP BY EMBALAGEM;

--CONSULTA CHAMANDO UMA VIEW
SELECT 
	EMBALAGEM,
	PRECO_MEDIO
FROM MEDIA_EMBALAGENS --VIEW
WHERE PRECO_MEDIO <= 10;

--CREANDO UMA VIEW
CREATE VIEW VW_QUANTIDADE_PRODUTOS AS 
	SELECT 
		INF.CODIGO_DO_PRODUTO,
		TP.NOME_DO_PRODUTO, 
		SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL 
	FROM
		ITENS_NOTAS_FISCAIS  INF
	INNER JOIN TABELA_DE_PRODUTOS TP 
	ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
	GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO;

--CONSULTA CHAMANDO UMA VIEW
SELECT * FROM VW_QUANTIDADE_PRODUTOS
WHERE QUANTIDADE_TOTAL > 394000 
ORDER BY QUANTIDADE_TOTAL DESC;