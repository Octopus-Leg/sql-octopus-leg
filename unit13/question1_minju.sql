-- 각 학생별 최고 성적 과목 조회
SELECT 
    student_id, 
    course_id, 
    grade AS best_grade
FROM (
    SELECT 
        student_id,
        course_id,
        grade,
        RANK() OVER (PARTITION BY student_id ORDER BY grade DESC, course_id ASC) AS rnk
    FROM examinations
) AS ranked_exams
WHERE rnk = 1
ORDER BY student_id ASC;
