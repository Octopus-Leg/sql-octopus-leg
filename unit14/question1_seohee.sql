/*
점수(score)의 순위(rank)를 조회하는 SQL 쿼리를 작성합니다.
score 기준으로 내림차순으로 정렬합니다.
순위 규칙은 아래와 같습니다.
- 가장 높은 점수부터 가장 낮은 점수까지 순위를 매깁니다.
- 두 점수가 동점이면 두 점수 모두 동일한 순위를 가집니다.
- 동점 이후 다음 순위는 다음 연속 정숫값이어야 합니다. 즉, 순위 사이에 구멍이 없어야 합니다.
*/

SELECT
    score,
    DENSE_RANK() OVER (ORDER BY score DESC) AS `rank`
FROM scores
ORDER BY score DESC;
