/*
[질문]
각 사용자(name)가 이동한 거리(traveled_distance)를 조회하는 SQL 쿼리를 작성합니다.
traveled_distance를 기준으로 내림차순으로 정렬하고, 두 명 이상의 사용자가 동일한 거리를 이동한 경우 name을 기준으로 오름차순으로 정렬합니다.
*/

SELECT
    u.name,
    IFNULL(SUM(r.distance),0) AS traveled_distance
FROM users AS u
LEFT OUTER JOIN rides AS r
ON u.id = r.user_id
GROUP BY u.id, u.name
ORDER BY traveled_distance DESC, name;

-- IFNULL 문법 IFNULL(표현, 대체값)
-- GROUP BY에 u.id만 썼었는데 ORDER BY에서 name으로 정렬하기 때문에 u.name도 적어야 한다고 함.
