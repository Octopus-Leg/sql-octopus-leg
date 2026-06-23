/*
[질문]
product 테이블의 모든 제품(product_id)을 구매한 고객 ID(customer_id)를 조회하는 SQL 쿼리를 작성합니다.
*/
SELECT customer_id
FROM customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = (SELECT COUNT(*) FROM product);
