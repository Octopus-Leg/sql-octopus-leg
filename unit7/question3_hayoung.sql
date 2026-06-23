/*
[질문]
제품이 판매된 첫해에 대한 제품 ID(product_id), 연도(first_year), 수량(quantity), 가격(price)을 조회하는 SQL 쿼리를 작성합니다.
*/
SELECT product_id, year AS first_year, quantity, price
FROM sales
WHERE (product_id, year) IN (
    SELECT product_id, MIN(year)
    FROM sales
    GROUP BY product_id
);
