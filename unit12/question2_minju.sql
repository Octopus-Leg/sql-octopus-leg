-- Red라는 회사에 판매하지 못한 영업 사원 조회
SELECT sales_name
FROM sales_person
WHERE sales_id NOT IN (
    SELECT sales_id
    FROM orders
    WHERE com_id IN (
        SELECT com_id
        FROM company
        WHERE com_name = 'Red'
    )
);
