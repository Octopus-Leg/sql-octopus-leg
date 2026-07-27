/*
거래 없이 방문한 사용자의 ID(customer_id)와 이러한 유형의 방문 횟수(no_trans_count)를 조회하는 SQL 쿼리를 작성합니다.
*/

SELECT
    customer_id,
    COUNT(*) AS no_trans_count
FROM visits
WHERE visit_id NOT IN (
    SELECT
        visit_id
    FROM transactions
)
GROUP BY customer_id;
