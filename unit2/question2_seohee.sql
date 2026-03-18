-- [문제] 보너스가 1000보다 작은 직원의 이름과 보너스 금액을 출력하시오. (LEFT OUTER JOIN 사용)
-- 테이블: employee, bonus

SELECT
    e.name,
    b.bonus
FROM employee AS e
LEFT OUTER JOIN (
    SELECT
        emp_id,
        bonus
    FROM bonus
    WHERE bonus < 1000
) AS b
ON e.emp_id = b.emp_id;

-- 틀린 코드: 위의 SQL은 보너스가 1000 이상인 사람의 이름도 출력이 된다. LEFT OUTER JOIN으로 employee 테이블의 모든 직원의 이름이 출력돼서 틀린 코드다.

SELECT
    e.name,
    b.bonus
FROM employee AS e
LEFT OUTER JOIN bonus AS b
ON e.emp_id = b.emp_id
WHERE (b.bonus < 1000 OR b.bonus IS NULL);

-- 포인트: where 절은 JOIN이 끝난 뒤에 나온다.
