-- 대회별 등록 사용자 백분율 조회
SELECT contest_id, ROUND(registered_users / total_users * 100, 2) AS percentage
FROM (
    SELECT contest_id, COUNT(user_id) AS registered_users
    FROM register
    GROUP BY contest_id
) AS a,
(
    SELECT COUNT(user_id) AS total_users
    FROM users
) AS b
ORDER BY percentage DESC, contest_id;
