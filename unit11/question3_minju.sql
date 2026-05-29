-- 투표수가 가장 많은 우승자 이름 1명 조회
SELECT 
    c.name
FROM candidate c
JOIN vote v ON c.candidate_id = v.candidate_id
GROUP BY c.candidate_id, c.name
ORDER BY COUNT(v.vote_id) DESC
LIMIT 1;
