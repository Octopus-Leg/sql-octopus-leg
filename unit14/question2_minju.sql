-- 두 번째로 높은 급여 조회하기 (단, 해당하는 급여가 없으면 NULL 반환)

SELECT 
    MAX(salary) AS second_highest_salary 
FROM 
    employee 
WHERE 
    salary NOT IN (SELECT MAX(salary) FROM employee);
