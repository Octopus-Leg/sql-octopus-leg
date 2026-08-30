/*
월(month)별, 국가(country)별로
거래 건수(trans_count), 거래량(trans_amount), 승인된 거래 건수(approved_count), 승인된 거래량(approved_amount)을 조회하는 SQL 쿼리를 작성합니다.
*/

SELECT
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(*) AS trans_count,
    SUM(amount) AS trans_amount,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_amount
FROM transactions
GROUP BY DATE_FORMAT(trans_date, '%Y-%m'), country;

