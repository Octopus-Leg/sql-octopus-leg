/*
[질문]
관리자(manager_id)보다 높은 급여(salary)를 받는 직원 이름(name)을 조회하는 SQL 쿼리를 작성합니다.
*/
SELECT e1.name
FROM employee e1
INNER JOIN employee e2 ON e1.manager_id = e2.emp_id
WHERE e1.salary > e2.salary;