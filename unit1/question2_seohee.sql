-- [문제] 2025년 2월에 100개 이상 주문한 제품 이름과 수량을 출력하시오. (INNER JOIN 사용)
-- 테이블: products, orders

SELECT p.product_name, o.unit
FROM products AS p
INNER JOIN (
    SELECT product_id, SUM(unit) AS unit
    FROM orders
    WHERE DATE_FORMAT(order_date, '%Y-%m') = '2025-02'
    GROUP BY product_id
    HAVING SUM(unit) >= 100
) AS o ON p.product_id = o.product_id;
