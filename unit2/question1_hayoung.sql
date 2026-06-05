/*
[질문]
person 테이블에 있는 사람의 이름(first_name), 성(last_name), 도시(city), 주(state)를 조회하는 SQL 쿼리를 작성합니다.
address 테이블에 person_id의 주소가 없으면 해당 주소는 NULL로 표시합니다.
*/
SELECT p.first_name, p.last_name, a.city, a.state
FROM person p
LEFT JOIN address a ON p.person_id = a.person_id;