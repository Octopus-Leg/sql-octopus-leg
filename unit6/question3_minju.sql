-- 각 event_type 평균 occurrences를 초과하는 이벤트가 2개 이상인 business_id 조회
SELECT e.business_id
FROM events AS e
INNER JOIN (
  SELECT event_type, AVG(occurrences) AS avg_occ
  FROM events
  GROUP BY event_type
) AS avge ON e.event_type = avge.event_type
WHERE e.occurrences > avge.avg_occ
GROUP BY e.business_id
HAVING COUNT(e.business_id) >= 2;
