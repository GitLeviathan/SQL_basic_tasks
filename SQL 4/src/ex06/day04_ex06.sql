CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT DISTINCT pizzeria.name AS pizzeria_name
FROM person_visits
JOIN person ON person_visits.person_id = person.id
JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
JOIN menu ON person_visits.pizzeria_id = menu.pizzeria_id
WHERE person.name LIKE 'Dmitriy'
  AND visit_date = '2022-01-08'
  AND menu.price < 800;