-- 출전 선수가 가장 많은 올림픽 대회 1개 조회
SELECT 
    game, 
    COUNT(athlete_id) AS athletes_count
FROM olympics_athletes
GROUP BY game
ORDER BY athletes_count DESC
LIMIT 1;
