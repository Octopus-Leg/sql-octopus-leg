-- 모든 사용자의 가입일과 2025년 한정 구매 횟수 조회
SELECT
    u.user_id AS buyer_id, 
    u.join_date, 
    COUNT(o.order_id) AS orders_in_2025
FROM users u
LEFT JOIN orders o ON u.user_id = o.buyer_id AND YEAR(o.order_date) = 2025
GROUP BY u.user_id, u.join_date;
