/*
2024년 7월 27일까지 30일 동안의 일일(day) 활성 사용자 수(active_user_count)를 조회하는 SQL 쿼리를 작성합니다.
사용자가 해당 날짜에 하나 이상의 활동을 수행했으면 활성 사용자라고 할 수 있습니다.
*/

SELECT
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_user_count
FROM activity
WHERE activity_date < '2024-07-28' AND activity_date > DATE_SUB('2024-07-27', INTERVAL 30 DAY)
GROUP BY activity_date;

-- 31일 동안 30일 동안 계산이 헷갈렸습니다.
