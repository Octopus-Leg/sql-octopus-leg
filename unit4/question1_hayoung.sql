/*
[질문]
정보가 누락된 직원의 ID를 조회하시오. employee_id를 기준으로 오름차순으로 정렬하시오. (FULL OUTER JOIN 사용)
*/
SELECT e.employee_id
FROM employees e
LEFT JOIN salaries s ON e.employee_id = s.employee_id
WHERE s.employee_id IS NULL
UNION
SELECT s.employee_id
FROM employees e
RIGHT JOIN salaries s ON e.employee_id = s.employee_id
WHERE e.employee_id IS NULL
ORDER BY employee_id ASC;
