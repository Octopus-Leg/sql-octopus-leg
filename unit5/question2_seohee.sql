/*
[질문]
각 입력값(input)에 대해 quality와 poor_rating_percentage를 조회하는 SQL 쿼리를 작성합니다.
quality는 rating을 position으로 나눈 값(rating ÷ position)의 평균입니다.
poor_rating_percentage는 3 미만 rating의 백분율입니다.
결과는 소수점 이하 2자리로 반올림합니다.
*/
-- 테이블: model

SELECT
    input,
    ROUND(AVG(rating/position), 2) AS quality,
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS poor_rating_percentage
FROM model
GROUP By input;

-- 포인트: CASE WHEN에 조건을 명시하고 THEN에 결과를 명시해야 하고, END로 끝난다. 또한, COUNT(input)은 NULL인 행을 제외해서 세고, COUNT(*)은 NULL을 포함해서 센다.
-- 쿼리의 실행 순서는 FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY 이므로 별칭 사용에서 실행 순서를 주의해야 한다.