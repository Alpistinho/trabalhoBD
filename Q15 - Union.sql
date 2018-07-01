SELECT dt_vencimentoduplicata FROM Duplicata
WHERE DATEADD(day, 60,dt_vencimentoduplicata) > GETDATE() and dt_vencimentoduplicata < GETDATE()

UNION

SELECT dt_vencimentoduplicata FROM Duplicata
WHERE dt_vencimentoduplicata > GETDATE() and DATEADD(day, -60,dt_vencimentoduplicata) < GETDATE()


-- feito com 60 dias para garantir que apareçam os registros
