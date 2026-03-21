/*
[질문]
각 플레이어(player_id)가 처음 로그인한 장치(first_login_device)를 조회하는 SQL 쿼리를 작성합니다.
*/

SELECT a.player_id, a.device_id AS first_login_device
FROM activity AS a
INNER JOIN (
    SELECT
        player_id,
        MIN(event_date) AS first_login_date
    FROM activity
    GROUP BY player_id
) AS min_a
ON a.player_id = min_a.player_id AND a.event_date = min_a.first_login_date;
