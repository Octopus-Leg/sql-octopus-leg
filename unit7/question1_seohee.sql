/*
[질문]
각 플레이어(player_id)의 첫 번째 로그인 날짜(first_login_date)를 조회하는 SQL 쿼리를 작성합니다.
*/

SELECT
    player_id,
    MIN(event_date) AS first_login_date
FROM activity
GROUP BY player_id;
