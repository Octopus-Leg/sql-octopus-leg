/*
좌석(seat_id) 중에서 연속으로 이용 가능한 모든 좌석을 조회하는 SQL 쿼리를 작성합니다.
연속으로 이용할 수 있는 좌석은 2석 이상 연속으로 빈 좌석을 의미합니다.
seat_id 기준으로 정렬합니다.
*/

SELECT
    seat_id
FROM (
        SELECT
            seat_id,
            LAG(free) OVER (ORDER BY seat_id)  AS prev_free,
            free,
            LEAD(free) OVER (ORDER BY seat_id) AS post_free
        FROM seats
) AS s
WHERE (free = 1 AND post_free = 1) OR (prev_free = 1 AND free = 1)
ORDER BY seat_id;

-- 어려워서 책을 참고했습니다.
