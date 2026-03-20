-- actor_id와 director_id 조합으로 3회 이상 협업한 쌍 조회
SELECT   actor_id, director_id
FROM     actor_director
GROUP BY actor_id, director_id
HAVING   COUNT(work_id) >= 3;
