CREATE PROCEDURE ProdutosVendidos
AS
BEGIN
SELECT top 3
    Produto.Ds_Produto,	
    SUM(ItemNotaFiscal.Qt_ItemNF) as "Total"
FROM
    Produto,
    ItemNotaFiscal
WHERE
    ItemNotaFiscal.Cd_Produto = Produto.Cd_Produto

GROUP BY
	 Produto.Ds_Produto
ORDER BY
    SUM(ItemNotaFiscal.Qt_ItemNF) DESC
END
GO

EXECUTE ProdutosVendidos