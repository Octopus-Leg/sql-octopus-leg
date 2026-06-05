/*
[질문]
각 학생(student_id, student_name)이 각 시험(subject_name)에 응시한 횟수(attended_exams)를 조회하는 SQL 쿼리를 작성합니다.
student_id와 subject_name을 기준으로 오름차순으로 정렬합니다.
*/

SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.subject_name) AS attended_exams
FROM students s
CROSS JOIN subjects sub
LEFT JOIN examinations e ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id ASC, sub.subject_name ASC;