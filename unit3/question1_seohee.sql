-- [문제] 대회별로 등록한 사용자의 백분율을 조회하시오. 백분율은 소수점 이하 2자리에서 반올림하시오. (CROSS JOIN 사용)
-- 백분율을 기준으로 내림차순으로 정렬하고, 동점이면 대회 아이디를 기준으로 오름차순으로 정렬하시오.
-- 테이블: users, register

SELECT
    r.contest_id,
    ROUND(r.cnt / u.total * 100, 2) as percentage
FROM (
         SELECT
             contest_id,
             COUNT(contest_id) as cnt
         FROM register
         GROUP BY contest_id
     ) AS r,
     (
         SELECT
             COUNT(user_id) AS total
         FROM users
     ) As u
ORDER BY percentage DESC, r.contest_id;

-- 포인트: CROSS JOIN은 CROSS JOIN이라고 따로 명시하지 않고, FROM에서 ,로 연결해서 사용한다.
