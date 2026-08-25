-- 전송자별 이메일 전송 횟수를 기준으로 중복 없는 고유 순위 조회하기

SELECT 
    from_user,
    COUNT(*) AS total_email_cnt,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS unique_rank
FROM 
    emails
GROUP BY 
    from_user
ORDER BY 
    unique_rank;
