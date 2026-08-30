/*
사용자(user_id)의 2024년 중 마지막 로그인(last_stamp)을 조회하는 SQL 쿼리를 작성합니다.
2024년에 로그인하지 않은 사용자는 포함하지 않습니다.
*/

SELECT
    user_id,
    MAX(time_stamp) AS last_stamp
FROM (
         SELECT
             user_id,
             time_stamp
         FROM logins
         WHERE YEAR(time_stamp) = 2024
) as l
GROUP BY user_id;


-- WHERE YEAR(time_stamp) = 2024 처럼 컬럼에 함수를 씌우면 데이터베이스가 인덱스를 타지 못하고 풀 스캔을 해버려서
-- WHERE time_stamp >= '2024-01-01 00:00:00' AND time_stamp < '2025-01-01 00:00:00'을 권장한다고 합니다.
