--  person 테이블의 모든 사람에 대해 이름(first_name), 성(last_name), 도시(city), 주(state) 조회
SELECT p.first_name, p.last_name, a.city, a.state
FROM person p
LEFT OUTER JOIN address a ON p.person_id = a.person_id;
