/*
판매 가격(price)을 기준으로 가장 많이 판매한 판매자(seller_id)를 조회하는 SQL 쿼리를 작성합니다.
가격이 동일한 경우 모든 판매자를 반환합니다.
*/

SELECT
    seller_id
FROM (
    SELECT
        seller_id,
        RANK() OVER(ORDER BY sum(price) DESC) AS rk
    FROM sales
    GROUP BY seller_id
) AS s
WHERE rk = 1;
