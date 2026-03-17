-- 직원별 날짜별 총 근무 시간 조회
SELECT emp_id, event_day AS day, SUM(out_time) - SUM(in_time) AS total_time
FROM employees
GROUP BY emp_id, event_day;
