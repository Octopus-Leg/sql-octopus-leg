-- [문제] 정보가 누락된 직원의 ID를 조회하시오. employee_id를 기준으로 오름차순으로 정렬하시오. (FULL OUTER JOIN 사용)
-- 테이블: employees, salaries

SELECT e.employee_id
FROM employees AS e
LEFT OUTER JOIN salaries AS s
ON e.employee_id = s.employee_id
WHERE s.employee_id IS NULL

UNION

SELECT s.employee_id
FROM salaries AS s
LEFT OUTER JOIN employees AS e
ON s.employee_id = e.employee_id
WHERE e.employee_id IS NULL

ORDER BY employee_id;

-- 포인트: MySQL에서는 FULL OUTER JOIN을 사용할 수 없어서 LEFT OUTER JOIN을 UNION해서 사용한다.
--  또한, WHERE절은 합쳐지기 전 LEFT JOIN 테이블에 적용되고, ORDER BY는 최종 테이블에 적용된다.
