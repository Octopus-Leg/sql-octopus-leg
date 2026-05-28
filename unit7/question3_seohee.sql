/*
[질문]
제품이 판매된 첫해에 대한 제품 ID(product_id), 연도(first_year), 수량(quantity), 가격(price)을 조회하는 SQL 쿼리를 작성합니다.
*/

SELECT
    s.product_id,
    min_s.first_year,
    s.quantity,
    s.price
FROM sales AS s
INNER JOIN (
    SELECT
        product_id,
        MIN(year) AS first_year
    FROM sales
    GROUP BY product_id
) as min_s
ON s.product_id = min_s.product_id AND s.year = min_s.first_year;
