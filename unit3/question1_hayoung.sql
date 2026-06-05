/*
[질문]
대회(contest_id)별로 등록한 사용자(user_id)의 백분율(percentage)을 조회하는 SQL 쿼리를 작성합니다.
백분율은 소수점 이하 2자리로 반올림합니다.
백분율을 기준으로 내림차순으로 정렬하고, 동점이면 contest_id를 기준으로 오름차순으로 정렬합니다.
*/

SELECT contest_id,
    ROUND(COUNT(user_id) * 100 / (SELECT COUNT(*) FROM users), 2) AS percentage
FROM register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;