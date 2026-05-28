-- product_id별 첫 판매 연도와 수량, 가격 조회
SELECT s.product_id, s.year, s.quantity, s.price
FROM sales AS s
INNER JOIN (
  SELECT product_id, MIN(year) AS min_year
  FROM sales
  GROUP BY product_id
) AS ss ON s.product_id = ss.product_id AND s.year = ss.min_year;
