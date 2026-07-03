/*
[질문]
각 소득 카테고리(category)의 은행 계좌 수(accounts_count)를 조회하는 SQL 쿼리를 작성합니다.
결과에 세 가지 카테고리가 모두 포함되어야 합니다. 카테고리에 계좌(account_id)가 없으면 0을 보고합니다. 소득 카테고리는 다음과 같습니다.
- 'Low Salary': 소득(income)이 $20000 미만입니다.
- 'Average Salary': 소득이 $[20000, 50000] 사이입니다.
- 'High Salary': 소득이 $50000보다 큽니다.
*/
SELECT 'Low Salary' AS category, COUNT(*) AS accounts_count FROM accounts WHERE income < 20000
UNION ALL
SELECT 'Average Salary', COUNT(*) FROM accounts WHERE income BETWEEN 20000 AND 50000
UNION ALL
SELECT 'High Salary', COUNT(*) FROM accounts WHERE income > 50000;
