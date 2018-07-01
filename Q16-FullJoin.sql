SELECT
    *
FROM 
    Pessoa
FULL OUTER JOIN
    NotaFiscal
ON 
    Pessoa.cd_pessoa = NotaFiscal.cd_cliente;