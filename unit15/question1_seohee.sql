SELECT
    seller_id
FROM (
    SELECT
        seller_id,
        RANK() OVER(ORDER BY sum(price) DESC) AS rk
    FROM sales
    GROUP BY seller_id
) AS s
WHERE rk = 1;
