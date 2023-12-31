-- Media de compras que um cliente faz.

SELECT
    FCAB.CLIENTEID,
    COUNT(DISTINCT FCAB.CUPOMID) AS TOTAL_QTD_COMPRA,
    AVG(FDET.VALOR) AS MEDIA_VALOR_COMPRA
FROM FAT_CABECALHO FCAB
INNER JOIN FAT_DETALHES FDET ON FDET.CUPOMID = FCAB.CUPOMID
GROUP BY FCAB.CLIENTEID
ORDER BY MEDIA_VALOR_COMPRA DESC