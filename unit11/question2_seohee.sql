/*
가장 많은 선수가 출전한 올림픽(game)과 선수 수(athletes_count)를 조회하는 SQL 쿼리를 작성합니다.
*/

SELECT
    game,
    COUNT(*) AS athletes_count
FROM olympics_athletes
GROUP BY game
ORDER BY athletes_count DESC
LIMIT 1;
