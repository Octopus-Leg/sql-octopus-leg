/*
[질문]
단일 숫자는 my_numbers 테이블에 한 번만 나타나는 숫자입니다.
가장 큰 단일 숫자(max_num)를 조회하는 SQL 쿼리를 작성합니다.
단일 숫자가 없으면 NULL을 반환합니다.
*/

SELECT
    MAX(num)
FROM my_numbers
GROUP BY num
HAVING COUNT(*) = 1;

-- 위의 코드는 틀린 코드다. SELECT MAX(num)은 SELECT num과 같은 결과가 나온다.

SELECT
    MAX(num) AS max_num
FROM (
     SELECT
         num
     FROM my_numbers
     GROUP BY num
     HAVING COUNT(*) = 1
) AS a;
