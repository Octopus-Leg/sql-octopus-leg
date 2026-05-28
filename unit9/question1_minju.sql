-- 기계별 프로세스 평균 실행 시간 구하기
SELECT 
    machine_id,
    ROUND(SUM(CASE WHEN activity_type = 'end' THEN timestamp ELSE -timestamp END) / COUNT(DISTINCT process_id), 3) AS processing_time
FROM activity
GROUP BY machine_id;
