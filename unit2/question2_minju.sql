-- employee 테이블의 직원 중 보너스가 1000보다 작거나, bonus 테이블에 존재하지 않는 직원의 이름(name)과 보너스(bonus) 조회
SELECT e.name, b.bonus
FROM employee e
LEFT OUTER JOIN bonus b ON e.emp_id = b.emp_id
WHERE b.bonus < 1000 OR b.bonus IS NULL;
