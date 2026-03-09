-- [문제] person 테이블에 있는 사람의 이름, 성, 도시, 주를 출력하시오. (LEFT OUTER JOIN 사용)
-- 테이블: person, address

SELECT first_name, last_name, address.city, address.state
FROM person
LEFT OUTER JOIN address
ON person.person_id = address.person_id;

-- 포인트: LEFT OUTER JOIN 했을 때 오른쪽 테이블에 일치하는 행이 없다면 NULL로 조회됨.
