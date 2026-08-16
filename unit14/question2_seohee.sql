SELECT
    MAX(salary) AS second_highest_salary
FROM (
    SELECT
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
    FROM employee
 ) as A
WHERE rnk = 2;

-- 두 번째로 높은 급여가 없으면 NULL
-- DENSE_RANK()를 WHERE 절에 쓸 수가 없는데 두 번째 높은 급여를 어떻게 추려내지?
-- 그룹에 행이 0개면 → COUNT(*)는 0, 나머지(MAX, MIN, SUM, AVG)는 전부 NULL
-- 아래는 AI가 알려준 다른 정답이다.

SELECT (
    SELECT salary
    FROM (
        SELECT
            salary,
            DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
        FROM employee
    ) AS A
    WHERE rnk = 2
    LIMIT 1
) AS second_highest_salary;
