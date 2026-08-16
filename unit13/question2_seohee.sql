/*
각 프로젝트(project_id)에서 경력이 가장 긴 직원(longest_employee_id)을 조회하는 SQL 쿼리를 작성합니다.
동일한 경력이 여러 명 있는 경우 최대 경력을 가진 직원을 모두 조회합니다.
*/

SELECT
    project_id,
    employee_id AS longest_employee_id
FROM (
    SELECT
        p.project_id,
        p.employee_id,
        RANK() OVER (PARTITION BY p.project_id ORDER BY e.experience_years DESC) AS rk
    FROM project AS p
    LEFT JOIN employee AS e
    ON p.employee_id = e.employee_id
) AS a
WHERE rk = 1;

-- RANK()는 공동 순위가 있음.
