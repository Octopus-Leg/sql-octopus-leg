/*
연속된 두 학생(student)마다 좌석(seat_id)을 바꾸는 SQL 쿼리를 작성합니다.
전체 학생 수가 홀수면 마지막 학생은 자리를 바꾸지 않습니다.
seat_id를 기준으로 오름차순으로 정렬합니다.
*/

SELECT
    seat_id,
    CASE
        WHEN even_odd = 1 AND post_student IS NOT NULL THEN post_student
        WHEN even_odd = 1 AND post_student IS NULL THEN student
        WHEN even_odd = 0 AND prev_student IS NOT NULL THEN prev_student
    END AS student
FROM (
         SELECT
             seat_id,
             MOD(seat_id, 2) AS even_odd,
             LAG(student) OVER (ORDER BY seat_id) AS prev_student,
             student,
             LEAD(student) OVER (ORDER BY seat_id) AS post_student
         FROM seat
) AS ss
ORDER BY seat_id;

-- 와우...어렵다..
