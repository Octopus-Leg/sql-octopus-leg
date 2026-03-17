-- 평균 품질 점수 및 낮은 평점 비율 조회
SELECT input, ROUND(AVG(rating / position), 2) AS quality, ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS poor_rating_percentage
FROM model
GROUP BY input;
