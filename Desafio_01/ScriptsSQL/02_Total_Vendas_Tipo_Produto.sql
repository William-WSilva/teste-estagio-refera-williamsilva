-- Valor de venda por tipo de produto

SELECT
	DIMP.CATEGORIAID,
	DIMP.CATEGORIA,
	SUM(FDET.VALOR) AS TOTAL_VENDAS
FROM VW_DIM_PRODUTO AS DIMP
INNER JOIN FAT_DETALHES FDET ON FDET.PRODUTOID = DIMP.PRODUTOID
GROUP BY DIMP.CATEGORIAID, DIMP.CATEGORIA
ORDER BY TOTAL_VENDAS DESC