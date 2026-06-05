/*
[질문]
각 제품(product_id)의 평균 판매 가격(average_price)을 조회하는 SQL 쿼리를 작성합니다.
평균 판매 가격은 소수점 이하 2자리로 반올림합니다.
*/
SELECT p.product_id, 
    IFNULL(ROUND(SUM(p.price * u.units) / SUM(u.units), 2), 0) AS average_price
FROM prices p
LEFT JOIN units_sold u ON p.product_id = u.product_id AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;