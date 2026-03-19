-- 학생별 과목별 시험 응시 횟수 조회
SELECT a.student_id, a.student_name, a.subject_name, COUNT(e.subject_name) AS attended_exams
FROM (
    SELECT student_id, student_name, subject_name
    FROM students, subjects
) AS a
LEFT OUTER JOIN examinations AS e ON a.student_id = e.student_id AND a.subject_name = e.subject_name
GROUP BY a.student_id, a.student_name, a.subject_name
ORDER BY a.student_id, a.subject_name;
