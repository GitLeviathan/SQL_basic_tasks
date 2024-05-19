SELECT COALESCE(person.name, '-') as person_name, visits_dates.visit_date, COALESCE(pizzeria.name , '-') as pizzeria_name
FROM(
  SELECT visit_date, person_id, pizzeria_id
  FROM person_visits
  WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03'
) as visits_dates
right JOIN person ON visits_dates.person_id = person.id
full JOIN pizzeria ON visits_dates.pizzeria_id = pizzeria.id
ORDER BY 1, 2, 3;