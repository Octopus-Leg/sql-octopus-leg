/*
[질문]
직원의 이름(name), 부서(department), 급여(salary)와 함께 해당 부서의 평균 급여(avg_salary)를 조회하는 SQL 쿼리를 작성합니다.
평균 급여는 소수점 이하 2자리로 반올림합니다.
*/
-- 테이블: employee

SELECT
    e.name,
    e.department,
    e.salary,
    s.avg
FROM employee AS e
LEFT OUTER JOIN (
    SELECT department,
           ROUND(AVG(salary), 2) AS avg
    FROM employee
    GROUP BY department
) AS s
ON e.department = s.department;

-- 포인트: 책에서는 AVG(salary) OVER (PARTITION BY department) 라는 윈도우 함수를 사용했는데, 추후 공부할 예정이다.
