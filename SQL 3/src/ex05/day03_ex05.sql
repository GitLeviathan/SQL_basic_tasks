WITH order_pizzeria AS (
  SELECT DISTINCT pizzeria.name FROM person_order
  JOIN person ON person_order.person_id = person.id
  JOIN menu ON person_order.menu_id =  menu.id
  JOIN pizzeria on menu.pizzeria_id = pizzeria.id
  where person.name LIKE 'Andrey'
),
visit_pizzeria AS (
  SELECT DISTINCT pizzeria.name FROM person_visits
  JOIN person ON person_visits.person_id = person.id
  JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
  where person.name LIKE 'Andrey'
)
SELECT NAME pizzeria_name FROM visit_pizzeria
EXCEPT
SELECT * FROM order_pizzeria
ORDER BY pizzeria_name;