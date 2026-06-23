-- 수입 구간별 계좌 수를 구하고, 하나의 결과 테이블로 합치기
SELECT 
    'Low Salary' AS category,
    COUNT(CASE WHEN income < 20000 THEN 1 END) AS accounts_count
FROM accounts
UNION
SELECT 
    'Average Salary' AS category,
    COUNT(CASE WHEN income >= 20000 AND income <= 50000 THEN 1 END) AS accounts_count
FROM accounts
UNION
SELECT 
    'High Salary' AS category,
    COUNT(CASE WHEN income > 50000 THEN 1 END) AS accounts_count
FROM accounts;
