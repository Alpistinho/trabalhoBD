SELECT 
    dt_vencimentoduplicata
FROM 
    Duplicata
WHERE 
    DATEADD(day,-30,GETDATE()) > dt_vencimentoduplicata
UNION
SELECT 
    dt_vencimentoduplicata 
FROM 
    Duplicata
WHERE 
    DATEADD(day,30,GETDATE()) > dt_vencimentoduplicata
    AND GETDATE() < dt_vencimentoduplicata