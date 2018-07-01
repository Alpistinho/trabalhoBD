ALTER TABLE Produto
ADD CONSTRAINT vl_max CHECK(CAST(vl_sugeridoproduto as int) <= 1000)