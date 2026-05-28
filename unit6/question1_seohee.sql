/*
[질문]
배우(actor_id)와 감독(director_id)이 최소 3번 이상 협력한 쌍을 조회하는 SQL 쿼리를 작성합니다.
*/

SELECT
    actor_id,
    director_id
FROM actor_director
GROUP BY actor_id, director_id
HAVING COUNT(actor_id) >= 3;
