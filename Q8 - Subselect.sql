SELECT
    Pessoa.nm_pessoa
FROM
    Pessoa
WHERE NOT EXISTS
    (SELECT *
    FROM
        Produto
    WHERE NOT EXISTS
        (SELECT *
        FROM
            ItemNotaFiscal, NotaFiscal
        WHERE
			Pessoa.cd_pessoa = NotaFiscal.cd_cliente
			AND ItemNotaFiscal.cd_notafiscal = NotaFiscal.cd_notafiscal
			AND Produto.cd_produto = ItemNotaFiscal.cd_produto
		)
)