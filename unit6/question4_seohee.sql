/*
[질문]
product 테이블의 모든 제품(product_id)을 구매한 고객 ID(customer_id)를 조회하는 SQL 쿼리를 작성합니다.
*/

SELECT customer_id
FROM customer
GROUP BY customer_id
HAVING count(DISTINCT product_id) = (
    SELECT
        COUNT(*)
    FROM product
);

-- 서브쿼리까지는 혼자 작성했지만 그 이후에 HAVING 절 안에 서브쿼리를 써도 되는지 몰랐어서 책을 참고했다.
