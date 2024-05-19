WITH visits_count AS (
  SELECT pizzeria.name pizzeria_name,
  COUNT ( CASE WHEN person.gender = 'male' THEN 1 END) male_visits,
  COUNT ( CASE WHEN person.gender = 'female' THEN 1 END) female_visits
  FROM person_order 
  JOIN person ON person_order.person_id = person.id
  JOIN menu ON menu.id = person_order.menu_id
  JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
  GROUP BY pizzeria_name
)
SELECT pizzeria_name FROM visits_count WHERE male_visits = 0
UNION
SELECT pizzeria_name FROM visits_count WHERE female_visits = 0
ORDER BY 1;