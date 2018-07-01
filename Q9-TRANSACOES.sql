SELECT * FROM Endereco
WHERE cd_endereco <= 5

------------ AQUI VAMOS ATUALIZAR OS 5 PRIMEIROS REGISTROS
BEGIN TRANSACTION update_endereco
UPDATE Endereco
SET nu_cep = 21321620
WHERE cd_endereco = 1 

UPDATE Endereco
SET nu_cep = 22345566
WHERE cd_endereco = 2 

UPDATE Endereco
SET nu_cep = 21321320
WHERE cd_endereco = 3 

UPDATE Endereco
SET nu_cep = 21310120
WHERE cd_endereco = 4 

UPDATE Endereco
SET nu_cep = 21475665
WHERE cd_endereco = 5 

COMMIT TRANSACTION update_endereco
--- AQUI COMMITAMOS AS ALTERAÇÕES
SELECT * FROM Endereco
WHERE cd_endereco <= 5



-------- AGORA VAMOS SUPOR SITUAÇÃO DE ROLL BACK
BEGIN TRANSACTION update_ENDERECO_ROLLBACK
UPDATE Endereco
SET nu_cep = 21321320
WHERE cd_endereco< 5
SELECT * FROM Endereco
WHERE cd_endereco <= 5

ROLLBACK TRANSACTION update_ENDERECO_ROLLBACK

SELECT * FROM Endereco
WHERE cd_endereco <= 5