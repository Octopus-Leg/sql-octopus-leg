-- 정보가 누락된 직원의 급여 전체 조회
SELECT e.name, e.employee_id, s.employee_id, s.salary
FROM employees AS e
LEFT OUTER JOIN salaries AS s ON e.employee_id = s.employee_id
UNION
SELECT e.name, e.employee_id, s.employee_id, s.salary
FROM salaries AS s
LEFT OUTER JOIN employees AS e ON s.employee_id = e.employee_id;
