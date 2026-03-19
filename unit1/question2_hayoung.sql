/*
[질문]
2025년 2월에 100개 이상 주문한 제품 이름(product_name)과 수량(unit)을 조회하는 SQL 쿼리를 작성합니다.
*/
SELECT
    p.product_name,
    SUM(o.unit) AS unit
FROM products p
INNER JOIN orders o ON p.product_id = o.product_id
WHERE o.order_date >= '2025-02-01' AND o.order_date <= '2025-02-28'
GROUP BY p.product_id, p.product_name
HAVING SUM(o.unit) >= 100;