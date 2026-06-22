/*
[질문]
각 직원이 매일 사무실에서 보낸 총시간을 조회하시오. (GROUP BY 사용)
*/
SELECT 
    emp_id, 
    event_day AS day, 
    SUM(out_time - in_time) AS total_time
FROM employees
GROUP BY emp_id, event_day;
