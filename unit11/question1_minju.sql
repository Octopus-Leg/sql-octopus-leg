-- 수익 기준 내림차순으로 상위 3개 회사 조회
SELECT 
    company_name, 
    profit
FROM forbes_global
ORDER BY profit DESC
LIMIT 3;
