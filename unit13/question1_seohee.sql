/*
각 학생(student_id)이 받은 최고 성적의 과목(course_id)과 그 성적(best_grade)을 조회하는 SQL 쿼리를 작성합니다.
최고 성적을 받은 과목이 여러 개면 course_id가 가장 작은 과목을 조회합니다.
student_id 기준으로 오름차순으로 정렬합니다.
*/

SELECT
    student_id,
    course_id,
    grade AS best_score
FROM (
         SELECT
             student_id,
             course_id,
             grade,
             RANK() OVER (PARTITION BY student_id ORDER BY grade DESC, course_id) AS rk
         FROM examinations
     ) AS e
WHERE rk = 1
ORDER BY student_id;

-- 아직 익숙하지 않은 문법이라서 책을 참고했다.
