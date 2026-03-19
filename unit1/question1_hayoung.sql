/*
[질문]
각 sale_id에 해당하는 제품 이름(product_name), 판매 연도(year), 판매 가격(price)을 조회하는 SQL 쿼리를 작성합니다.
*/
SELECT
    s.sale_id,
    p.product_name,
    s.year,
    s.price
FROM sales AS s
INNER JOIN product AS p
ON s.product_id = p.product_id;