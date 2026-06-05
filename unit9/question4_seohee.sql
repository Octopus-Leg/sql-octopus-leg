/*
[질문]
각 소득 카테고리(category)의 은행 계좌 수(accounts_count)를 조회하는 SQL 쿼리를 작성합니다.
결과에 세 가지 카테고리가 모두 포함되어야 합니다. 카테고리에 계좌(account_id)가 없으면 0을 보고합니다. 소득 카테고리는 다음과 같습니다.
- 'Low Salary': 소득(income)이 $20000 미만입니다.
- 'Average Salary': 소득이 $[20000, 50000] 사이입니다.
- 'High Salary': 소득이 $50000보다 큽니다.
*/

SELECT
    'Low Salary' AS category,
    SUM(CASE WHEN income < 20000 THEN 1 ELSE 0 END) AS accounts_count
FROM accounts

UNION

SELECT
    'Average Salary' AS category,
    SUM(CASE WHEN income >= 20000 AND income <= 50000 THEN 1 ELSE 0 END)
FROM accounts

UNION

SELECT
    'High Salary' AS category,
    SUM(CASE WHEN income > 50000 THEN 1 ELSE 0 END)
FROM accounts;

-- 실수로 두 번째랑, 세 번째 SELECT문에 AS accounts_count를 제외하고 작성했는데 문제가 없었다.
-- UNION 문법 상 첫번째 SELECT 기준으로 별칭을 상속받고, 데이터 타입과 컬럼의 개수만 맞으면 그대로 합쳐진다는게 신기했다.
