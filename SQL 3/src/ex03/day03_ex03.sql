WITH visits_count AS (
  SELECT pizzeria.name AS pizzeria_name,
  COUNT(CASE WHEN person.gender = 'male' THEN 1 END) AS male_visits,
  COUNT(CASE WHEN person.gender = 'female' THEN 1 END) AS female_visits
  FROM person_visits 
  JOIN person ON person_visits.person_id = person.id
  JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
  GROUP BY pizzeria_name
)
SELECT pizzeria_name FROM visits_count
WHERE male_visits > female_visits OR female_visits > male_visits
ORDER BY pizzeria_name;