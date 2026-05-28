-- 다중 조건(홀수 ID, 특정 문자 제외)에 따른 직원별 보너스 계산하기
SELECT 
    employee_id,
    CASE 
        WHEN MOD(employee_id, 2) = 1 AND name NOT LIKE 'M%' THEN salary 
        ELSE 0 
    END AS bonus
FROM employees
ORDER BY employee_id;
