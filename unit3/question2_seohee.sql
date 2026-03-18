-- [문제] 각 학생이 각 시험에 응시한 횟수를 조회하시오. student_id, subject_name을 기준으로 오름차순으로 정렬하시오. (CROSS JOIN 사용)
-- 테이블: students, subjects, examinations

SELECT
    st.student_id,
    student_name,
    sub.subject_name,
    COUNT(st.student_id) AS attended_exams
FROM students AS st
CROSS JOIN subjects AS sub
LEFT OUTER JOIN examinations AS e
ON st.student_id = e.student_id
    AND sub.subject_name = e.subject_name
GROUP BY student_id, student_name, subject_name
ORDER BY student_id, subject_name;

-- 틀린 코드: 위의 코드는 students table은 LEFT OUTER JOIN 상 왼쪽 테이블이라서 이미 student_id는 존재하기 떄문에 COUNT(st.student_id)가 1로 시작한다.

SELECT
    st.student_id,
    student_name,
    sub.subject_name,
    COUNT(e.student_id) AS attended_exams
FROM students AS st
CROSS JOIN subjects AS sub
LEFT OUTER JOIN examinations AS e
ON st.student_id = e.student_id
    AND sub.subject_name = e.subject_name
GROUP BY student_id, student_name, subject_name
ORDER BY student_id, subject_name;

-- 포인트: FROM에 테이블 a, b 뒤에 바로 LEFT OUTER JOIN이 오면 오류가 나서 CROSS JOIN이라고 명시해줘야 한다.
