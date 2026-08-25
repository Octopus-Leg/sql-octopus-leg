-- 총판매 가격이 가장 높은 판매자의 ID 조회하기 (동점인 경우 모두 포함)

WITH RankedSellers AS (
    SELECT 
        seller_id,
        RANK() OVER (ORDER BY SUM(price) DESC) AS sales_rank
    FROM 
        sales
    GROUP BY 
        seller_id
)
SELECT 
    seller_id
FROM 
    RankedSellers
WHERE 
    sales_rank = 1;
