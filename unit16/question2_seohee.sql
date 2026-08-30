/*
어제보다 기온(temperature)이 더 높은 날의 날짜 ID(weather_id)를 조회하는 SQL 쿼리를 작성합니다.
*/

SELECT
    weather_id
FROM (
         SELECT
             weather_id,
             record_date,
             temperature,
             LAG(record_date) OVER (ORDER BY record_date) AS prev_date,
             LAG(temperature) OVER (ORDER BY record_date) AS prev_temperature
         FROM weather
) AS w
WHERE prev_temperature < temperature AND DATEDIFF(record_date, prev_date) = 1
ORDER BY weather_id;

-- 어제보다라는 조건을 빼먹어서 틀렸습니다.
-- DATEDIFF() 함수를 사용하는 방법과 DATE_SUB(B날짜, INTERVAL 1 DAY)을 사용하는 방법이 있음을 알게 되었습니다.
