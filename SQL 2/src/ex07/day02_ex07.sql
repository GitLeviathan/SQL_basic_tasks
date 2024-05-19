SELECT pizzeria.name from person_visits
JOIN person ON person_visits.person_id = person.id
JOIN menu ON person_visits.pizzeria_id = menu.pizzeria_id
JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
where visit_date = '2022-01-08' AND person.name LIKE 'Dmitriy' and menu.price < 800;