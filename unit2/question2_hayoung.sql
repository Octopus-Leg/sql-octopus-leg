/*
[질문]
보너스가 1000보다 작은 직원의 이름(name)과 보너스 금액(bonus)을 조회하는 SQL 쿼리를 작성합니다.
보너스가 없으면 NULL로 표시합니다.
*/
SELECT e.name, b.bonus
FROM employee e
LEFT JOIN bonus b ON e.emp_id = b.emp_id
WHERE b.bonus < 1000 OR b.bonus IS NULL;