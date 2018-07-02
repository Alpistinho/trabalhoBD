DECLARE @cursorProduto CURSOR;
DECLARE @produto_id int;
Declare @notafiscal_id int;

set @notafiscal_id = 10000;

insert into Pessoa values (12345, 'Joao das Neves', CAST(N'2012-01-02' AS datetime), NULL, NULL, NULL)

BEGIN
    SET @cursorProduto = CURSOR FOR
    select cd_produto from Produto
 

    OPEN @cursorProduto 
    FETCH NEXT FROM @cursorProduto 
    INTO @produto_id

    WHILE @@FETCH_STATUS = 0
    BEGIN

        insert into NotaFiscal values (@notafiscal_id, CAST(N'2012-01-02' AS datetime), CAST(N'2012-01-03' AS datetime), CAST(N'15:30:00' AS Time), N'COMPRA', 5, CAST(35426547 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(123456 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), 1, CAST(1 AS Numeric(18, 0)), 3.5000, 12345,  NULL, @produto_id)
        insert into ItemNotaFiscal values(notafiscal_id, 1, 1, NULL, @produto_id, @notafiscal_id)
		set @notafiscal_id = @notafiscal_id + 1
        FETCH NEXT FROM @cursorProduto 
        INTO @produto_id 
    END; 

    CLOSE @cursorProduto ;
    DEALLOCATE @cursorProduto;
END;