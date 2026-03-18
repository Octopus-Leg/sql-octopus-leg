-- [문제] 각 제품의 평균 판매 가격을 조회하는 SQL 쿼리를 작성하시오. 평균 판매 가격은 소수점 이하 2자리로 반올림하시오. (LEFT OUTER JOIN 사용)
-- 테이블: prices, units_sold

SELECT
    p.product_id,
    COALESCE(ROUND(SUM(p.price * u.units) / SUM(u.units), 2),0) AS average_price
FROM prices AS p
LEFT OUTER JOIN units_sold AS u
    ON p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date and p.end_date
GROUP BY p.product_id;

-- 포인트: LEFT OUTER JOIN은 왼쪽 행의 개수를 유지한다는 뜻이 아니고, 매칭된 개수만큼 추가돼서 보여준다. 이 부분에서 조금 헤맸다.
-- 소수점 반올림 함수 ROUND(), 버림 함수 TRUNCATE(), 올림 함수 CEIL()
