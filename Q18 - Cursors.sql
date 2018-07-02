DECLARE @descricaoProduto char(18), @valorSugerido money, @quantidadeEstoque numeric(18)
 
DECLARE Cursor_Produto CURSOR FOR
 
SELECT ds_produto, vl_sugeridoproduto, qt_estoqueproduto FROM Produto
 
OPEN Cursor_Produto

FETCH NEXT FROM Cursor_Produto
 
   INTO @descricaoProduto, @valorSugerido, @quantidadeestoque

WHILE @@FETCH_STATUS = 0
BEGIN
	PRINT 'Nome Produto                              Valor Sugerido     Quantidade em Estoque'
    PRINT @descricaoProduto +  CONVERT(char, @valorSugerido, 103) + '             ' + CONVERT(char, @quantidadeestoque, 103)

	FETCH NEXT FROM Cursor_Produto
 
		INTO @descricaoProduto, @valorSugerido, @quantidadeestoque

END
 
CLOSE Cursor_Produto

DEALLOCATE Cursor_Produto