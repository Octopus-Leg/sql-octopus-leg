-- product 테이블의 모든 상품을 구매한 고객 조회
SELECT customer_id
FROM customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = (
  SELECT COUNT(product_id)
  FROM product
);
