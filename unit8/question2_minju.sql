-- 무게 제한(1000kg)을 초과하지 않는 마지막 탑승자 구하기
SELECT person_name
FROM (
    SELECT 
        person_name,
        turn,
        SUM(weight) OVER (ORDER BY turn) AS accumulated_weight
    FROM queue
) AS weight
WHERE accumulated_weight <= 1000
ORDER BY accumulated_weight DESC
LIMIT 1;
