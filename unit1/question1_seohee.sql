-- [문제] 각 sale_id에 해당하는 제품 이름, 판매 연도, 판매 가격을 출력하시오. (INNER JOIN 사용)
-- 테이블: sales, product

SELECT product.product_name, sales.year, sales.price
FROM sales
INNER JOIN product
ON sales.product_id = product.product_id;