/*
[질문]
각 사용자(buyer_id)의 가입 날짜(join_date)와 함께 2025년에 구매한 주문 수(orders_in_2025)를 조회하는 SQL 쿼리를 작성합니다.
*/
SELECT 
    u.user_id AS buyer_id, 
    u.join_date, 
    COUNT(o.order_id) AS orders_in_2025
FROM users u
LEFT JOIN orders o ON u.user_id = o.buyer_id AND YEAR(o.order_date) = 2025
GROUP BY u.user_id, u.join_date;
