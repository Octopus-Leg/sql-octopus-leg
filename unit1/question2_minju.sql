-- 2025년 2월에 100개 이상 주문한 제품명과 수량 조회
SELECT p.product_name, SUM(o.unit) AS unit
FROM products p
INNER JOIN orders o
    ON p.product_id = o.product_id
WHERE YEAR(o.order_date) = 2025
    AND MONTH(o.order_date) = 2
GROUP BY p.product_id, p.product_name
HAVING SUM(o.unit) >= 100
