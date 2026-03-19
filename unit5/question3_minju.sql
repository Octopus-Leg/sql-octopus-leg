-- 부서별 평균 급여 조회
SELECT department, name, salary, ROUND(AVG(salary) OVER (PARTITION BY department), 2) AS avg_salary
FROM employee;

-- 틀린 쿼리:
-- 모든 직원 행을 유지하면서 부서 평균을 보여줘야 하므로 GROUP BY가 아닌 PARTITION BY를 사용해야 함.
-- GROUP BY를 쓰면 name, salary 등 집계되지 않은 컬럼을 SELECT할 수 없음.
SELECT department, name, salary, ROUND(AVG(salary) OVER (PARTITION BY department), 2) AS avg_salary
FROM employee
GROUP BY department;
