
CREATE VIEW duplicatas_vencidas
AS
SELECT Pessoa.cd_pessoa, Pessoa.Nm_Pessoa
  FROM Duplicata, NotaFiscal, Pessoa
  WHERE Duplicata.Dt_vencimentoduplicata < GETDATE()
  AND Pessoa.Cd_Pessoa = NotaFiscal.Cd_Cliente
  AND NotaFiscal.Cd_NotaFiscal = Duplicata.Cd_NotaFiscal;
GO
