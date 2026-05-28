-- 플레이어별 날짜 순서에 따른 누적 게임 플레이 횟수 구하기
SELECT 
    player_id,
    event_date,
    SUM(games_played) OVER (PARTITION BY player_id ORDER BY event_date) AS games_played_so_far
FROM activity;
