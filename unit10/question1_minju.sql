-- 모든 사용자의 이동 거리 합산을 구하고, 이동 기록이 없는 경우 0으로 처리하기
SELECT 
    u.name, 
    IFNULL(SUM(r.distance), 0) AS traveled_distance
FROM users u
LEFT JOIN rides r ON u.id = r.user_id
GROUP BY u.id, u.name
ORDER BY traveled_distance DESC, u.name ASC;
