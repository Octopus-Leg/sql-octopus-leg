/*
[질문]
고객이 원하는 배송 날짜(pref_delivery_date)가 주문 날짜(order_date)와 동일한 경우 immediate라고 하고, 그렇지 않으면 scheduled라고 합니다.
immediate 주문의 백분율(immediate_percentage)을 조회하는 SQL 쿼리를 작성합니다.
백분율은 소수점 이하 2자리로 반올림합니다.
*/

SELECT ROUND(SUM(CASE WHEN pref_delivery_date = order_date THEN 1 ELSE 0 END) / COUNT(*) * 100,
             2) AS immediate_percentage
FROM delivery;
