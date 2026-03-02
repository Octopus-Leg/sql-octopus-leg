-- sale_id에 해당하는 제품 이름, 판매 연도, 판매 가격 조회
SELECT s.sale_id, p.product_name, s.year, s.price
FROM sales s
INNER JOIN product p
    ON s.product_id = p.product_id
