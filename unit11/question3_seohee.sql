/*
우승자 이름(name)을 조회하는 SQL 쿼리를 작성합니다. 동률이 없다고 가정합니다.
즉 우승자는 최대 한 명입니다.
*/

SELECT
    c.name
FROM candidate AS c
INNER JOIN (
    SELECT
        candidate_id,
        COUNT(*) AS vote_count
    FROM vote
    GROUP BY candidate_id
) AS v
ON c.candidate_id = v.candidate_id
ORDER BY vote_count DESC
LIMIT 1;
