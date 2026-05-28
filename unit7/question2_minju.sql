-- player_id별 첫 번째 로그인 기기 조회
SELECT a.player_id, a.device_id AS first_login_device
FROM activity AS a
INNER JOIN (
  SELECT player_id, MIN(event_date) AS first_login_date
  FROM activity
  GROUP BY player_id
) AS aa ON a.player_id = aa.player_id AND a.event_date = aa.first_login_date;
