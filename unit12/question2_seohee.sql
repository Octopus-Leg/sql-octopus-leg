/*
Red라는 회사(com_name)에 판매하지 못한 영업 사원(sales_name)을 조회하는 SQL 쿼리를 작성합니다.
*/

SELECT
    sales_name
FROM sales_person
WHERE sales_id NOT IN (
    SELECT
        sales_id
    FROM orders AS o
    INNER JOIN company AS c
    ON o.com_id = c.com_id
    WHERE c.com_name = 'RED'
);
