
--USANDO DISTINCT, PARA QUE ASSIM TRAGA APENAS UMA VEZ O MESMO VALOR
SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS;--ASSIM ELE VAI TRAZER APENAS UM VEZ O TIPO DE EMBALAGEM

SELECT DISTINCT EMBALAGEM, SABOR FROM TABELA_DE_PRODUTOS; --ASSIM ELE VAI TRAZER UMA VEZ A COMBINA��O DESSES DOIS CAMPOS

SELECT DISTINCT SABOR FROM TABELA_DE_PRODUTOS;

--CONSULTA PARA TRAZER APENAS O PRIMEIROS REGISTROS
SELECT DISTINCT TOP 4 * FROM TABELA_DE_PRODUTOS; --NUMERO QUE ESTA AO LADO DO TOP, S�O A
												 --QUANTIDADE DE LINHAS QUE ELE VAI TRAZER 
												 --DO PRIMEIRO REGISTRO

SELECT TOP 10 * FROM NOTAS_FISCAIS WHERE DATA_VENDA = '2017-10-01';