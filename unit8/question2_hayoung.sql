/*
[질문]
버스를 타기 위해 사람들이 줄을 서고 있습니다.
다만 버스의 무게 제한은 1000kg이므로 탑승하지 못하는 사람도 있을 수 있습니다.
무게 제한을 초과하지 않고 버스에 탑승할 수 있는 마지막 사람(person_name)을 조회하는 SQL 쿼리를 작성합니다.
*/
SELECT person_name
FROM (
    SELECT person_name, SUM(weight) OVER (ORDER BY turn) AS total_weight
    FROM queue
) q
WHERE total_weight <= 1000
ORDER BY total_weight DESC
LIMIT 1;
