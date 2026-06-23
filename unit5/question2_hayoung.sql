/*
[질문]
각 입력값(input)에 대해 quality와 poor_rating_percentage를 조회하는 SQL 쿼리를 작성합니다.
quality는 rating을 position으로 나눈 값(rating ÷ position)의 평균입니다.
poor_rating_percentage는 3 미만 rating의 백분율입니다.
결과는 소수점 이하 2자리로 반올림합니다.
*/
SELECT 
    input, 
    ROUND(AVG(rating * 1.0 / position), 2) AS quality,
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS poor_rating_percentage
FROM model
GROUP BY input;
