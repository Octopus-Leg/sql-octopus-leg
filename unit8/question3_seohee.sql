/*
[질문]
각 플레이어(player_id)와 날짜(event_date)별로 해당 날짜까지 플레이어가 플레이한 게임 총수(games_played_so_far)를 조회하는 SQL 쿼리를 작성합니다.
즉, 해당 날짜까지 플레이어가 플레이한 게임의 총합을 계산합니다.
*/

SELECT
    player_id,
    event_date,
    SUM(games_played) OVER(PARTITION BY player_id ORDER BY event_date) AS games_played_so_far
FROM activity;
