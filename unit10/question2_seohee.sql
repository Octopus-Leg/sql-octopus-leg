/*
[질문]
각 사용자(buyer_id)의 가입 날짜(join_date)와 함께 2025년에 구매한 주문 수(orders_in_2025)를 조회하는 SQL 쿼리를 작성합니다.
*/

SELECT
    u.user_id AS buyer_id,
    u.join_date,
    COUNT(CASE WHEN DATE_FORMAT(o.order_date, '%Y') = 2025 THEN 1 END) AS orders_in_2025
FROM users AS u
LEFT OUTER JOIN orders AS o
ON u.user_id = o.buyer_id
GROUP BY u.user_id, u.join_date;

-- IFNULL을 안 사용하고 풀었다. COUNT()는 NULL은 카운트 안하고 값이 없으면 0을 반환함.
