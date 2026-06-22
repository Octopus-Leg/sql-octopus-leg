/*
[질문]
직원의 이름(name), 부서(department), 급여(salary)와 함께 해당 부서의 평균 급여(avg_salary)를 조회하는 SQL 쿼리를 작성합니다.
평균 급여는 소수점 이하 2자리로 반올림합니다.
*/
SELECT 
    name, 
    department, 
    salary, 
    ROUND(AVG(salary) OVER(PARTITION BY department), 2) AS avg_salary
FROM employee;
