/*
[질문]
각 기계(machine_id)가 프로세스를 완료하는데 걸리는 평균 시간(processing_time)을 조회하는 SQL 쿼리를 작성합니다.
평균 시간은 소수점 이하 3자리로 반올림합니다.
*/

SELECT machine_id,
       ROUND((SUM(CASE WHEN activity_type = 'end' THEN timestamp END)
           - SUM(CASE WHEN activity_type = 'start' THEN timestamp END))
           / COUNT(DISTINCT process_id), 3) AS processing_time
FROM activity
GROUP BY machine_id;
