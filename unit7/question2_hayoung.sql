/*
[질문]
각 플레이어(player_id)가 처음 로그인한 장치(first_login_device)를 조회하는 SQL 쿼리를 작성합니다.
*/
SELECT player_id, device_id AS first_login_device
FROM activity
WHERE (player_id, event_date) IN (
    SELECT player_id, MIN(event_date)
    FROM activity
    GROUP BY player_id
);
