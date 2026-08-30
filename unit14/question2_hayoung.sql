/*
[질문]
두 번째로 높은 급여(second_highest_salary)를 조회하는 SQL 쿼리를 작성합니다.
두 번째로 높은 급여가 없으면 NULL을 반환합니다.
*/
SELECT MAX(salary) AS second_highest_salary
FROM (
    SELECT
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS ranking
    FROM employee
) AS ranked_salaries
WHERE ranking = 2;
