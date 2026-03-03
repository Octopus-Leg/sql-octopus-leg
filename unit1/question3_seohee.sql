-- [문제] 관리자 보다 높은 급여를 받는 직원 이름을 출력하시오. (SELF JOIN, INNER JOIN 사용)
-- 테이블: employee

SELECT e1.name
FROM employee AS e1
INNER JOIN employee AS e2
ON e1.manager_id = e2.emp_id
WHERE e1.salary > e2.salary;

-- 피드백: 가독성을 위해 직원 테이블은 e, 관리자 테이블은 m으로 별칭을 정하는 것이 더 명확할 것 같다.
