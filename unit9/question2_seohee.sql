/*
[질문]
각 직원(employee_id)의 보너스(bonus)를 조회하는 SQL 쿼리를 작성합니다.
employee_id를 기준으로 오름차순으로 정렬합니다. 보너스는 다음 규칙에 따라 계산됩니다.
- 직원 ID가 홀수이고 직원 이름(name)이 'M' 문자로 시작하지 않는 경우, 보너스는 소득(salary)의 100%입니다.
- 그 외에 나머지 모든 직원의 보너스는 0입니다.
*/

SELECT
    employee_id,
    CASE WHEN MOD(employee_id, 2) = 1 AND SUBSTR(name, 1, 1) != 'M' THEN salary ELSE 0 END AS bonus
FROM employees
ORDER BY employee_id;
