WITH CTE_CUMUL AS
(SELECT 
    *, 
    SUM(weight_kg) OVER (
        PARTITION BY lift_id 
        ORDER BY id, weight_kg
    ) AS cumul_sum
	, CASE WHEN capacity_kg > SUM(weight_kg) OVER (PARTITION BY lift_id ORDER BY id, weight_kg) THEN 1 ELSE 0 END Flag 
FROM 
    LIFT L
JOIN 
    LIFT_PASSENGERS LP 
ON 
    L.ID = LP.LIFT_ID
ORDER BY 
    id, weight_kg) 
SELECT lift_id,  string_agg(passenger_name, ' ,')
FROM CTE_CUMUL
WHERE Flag = 1
GROUP BY lift_id