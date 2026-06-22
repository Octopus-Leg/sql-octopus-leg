/*
[질문]
활성 비즈니스는 해당 이벤트 유형(event_type)의 평균 발생 횟수(occurrences)보다 더 많이 발생하는 이벤트 유형이 두 개 이상 있는 비즈니스입니다.
활성 비즈니스(business_id)를 조회하는 SQL 쿼리를 작성합니다.
*/
SELECT business_id
FROM events e
INNER JOIN (
    SELECT event_type, AVG(occurrences) AS avg_occurrences
    FROM events
    GROUP BY event_type
) AS evt_avg ON e.event_type = evt_avg.event_type
WHERE e.occurrences > evt_avg.avg_occurrences
GROUP BY business_id
HAVING COUNT(*) >= 2;
