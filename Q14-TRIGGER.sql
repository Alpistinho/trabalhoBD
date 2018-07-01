CREATE TRIGGER update_on_pagamento
ON Duplicata
FOR  UPDATE
AS
	BEGIN
		IF UPDATE(Vl_Pagamento_Duplicata)
		BEGIN
			UPDATE Duplicata
			SET Duplicata.Dt_pagamentoduplicata = GETDATE()
			FROM
				Inserted,
				Duplicata
			WHERE Duplicata.cd_duplicata = inserted.cd_duplicata;
		END
	END