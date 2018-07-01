CREATE TRIGGER atualizar_pgt
ON Duplicata
FOR  UPDATE
AS
	BEGIN
		IF UPDATE(vl_pagamentoduplicata)
		BEGIN
			UPDATE Duplicata
			SET Duplicata.dt_pagamentoduplicata = GETDATE()
			From
				Inserted,
				Duplicata
			WHERE Duplicata.Cd_Duplicata = inserted.Cd_Duplicata;
		END
	END


select *  from duplicata du where du.cd_duplicata < 5

UPDATE Duplicata
	SET vl_pagamentoduplicata = 2000
	where cd_duplicata = 1

select *  from duplicata du where du.cd_duplicata < 5
