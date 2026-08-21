/*
[질문]
ID가 2인 고객(referee_id)이 추천하지 않은 고객(customer_id)의 이름(name)을 조회하는 SQL 쿼리를 작성합니다.
*/
SELECT name
FROM customer
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM customer
    WHERE referee_id = 2
);
