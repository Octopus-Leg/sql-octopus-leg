-- 거래 없이 방문한 사용자의 ID와 이러한 유형의 방문 횟수 조회
-- visit_id가 PK이므로 결과는 같지만, COUNT(visit_id) 보다는 COUNT(*)이 더 권장된다고 함.
SELECT customer_id, COUNT(visit_id) AS no_trans_count
FROM visits
WHERE visit_id NOT IN (
    SELECT visit_id
    FROM transactions
)
GROUP BY customer_id;
