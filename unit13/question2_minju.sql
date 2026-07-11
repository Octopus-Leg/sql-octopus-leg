-- 각 프로젝트별로 경력이 가장 긴 직원 조회
SELECT 
    project_id, 
    employee_id AS longest_employee_id
FROM (
    SELECT 
        p.project_id,
        p.employee_id,
        RANK() OVER (PARTITION BY p.project_id ORDER BY e.experience_years DESC) AS rnk
    FROM project p
    INNER JOIN employee e ON p.employee_id = e.employee_id
) AS project_experience
WHERE rnk = 1;
