-- 조건에 따른 immediate 주문의 백분율 구하기
SELECT 
    ROUND(SUM(CASE WHEN order_date = pref_delivery_date THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS immediate_percentage
FROM delivery;
