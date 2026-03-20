-- 딱 1번만 등장한 숫자 중 최댓값 조회 (없으면 NULL 반환)
SELECT MAX(num) AS max_num
FROM (
  SELECT num
  FROM my_numbers
  GROUP BY num
  HAVING COUNT(num) = 1
) AS a;
