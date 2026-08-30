/*
[질문]
전송자(from_user), 전송한 이메일의 총개수(total_email_cnt), 순위(unique_rank)를 조회하는 SQL 쿼리를 작성합니다.
여러 전송자가 동일한 수의 이메일을 보낸 경우에도 고유한 순위를 반환합니다.
unique_rank 기준으로 정렬합니다.
*/
SELECT
    from_user,
    COUNT(*) AS total_email_cnt,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC, from_user ASC) AS unique_rank
FROM emails
GROUP BY from_user
ORDER BY unique_rank;
