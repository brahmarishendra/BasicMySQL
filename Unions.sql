SELECT 
    'Silver' AS Type,
    ID,
    Name
FROM GoldCus
WHERE Cost BETWEEN 2000 AND 3000
UNION 
SELECT 
    ID,
    Name,
    'Gold' AS Type
FROM GoldCus
WHERE Cost > 3000
ORDER BY Name;
