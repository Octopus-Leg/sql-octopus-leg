-- 동점자 발생 시 순위 건너뜀 없이 점수 내림차순으로 순위 조회하기

SELECT 
    score, DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
FROM 
    scores;
