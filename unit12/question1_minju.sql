-- ID가 2인 고객이 추천하지 않은 고객의 이름 조회하기
SELECT name
FROM customer
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM customer
    WHERE referee_id = 2
);
