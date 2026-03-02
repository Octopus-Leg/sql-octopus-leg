-- 매니저보다 급여가 높은 직원 이름 조회
SELECT e.name
FROM employee e
INNER JOIN employee m
    ON e.manager_id = m.emp_id
WHERE e.salary > m.salary
