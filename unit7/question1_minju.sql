-- player_id별 첫 번째 로그인 날짜 조회
SELECT player_id, MIN(event_date) AS first_login_date
FROM activity
GROUP BY player_id;
