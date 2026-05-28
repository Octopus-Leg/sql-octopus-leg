/*
가장 수익이 높은 회사(company_name) 3개와 그 수익(profit)을 조회하는 SQL 쿼리를 작성합니다.
profit을 기준으로 내림차순으로 정렬합니다.
*/

SELECT
    company_name,
    profit
FROM forbes_global
ORDER BY profit DESC
LIMIT 3;
