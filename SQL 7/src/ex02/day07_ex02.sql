WITH top_person_order AS (
	SELECT pizzeria.name, count(*), 'order' action_type
	FROM person_order
	JOIN menu on menu.id = person_order.menu_id
	JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
	GROUP BY 1
	ORDER BY 2 DESC
	LIMIT 3
),
top_person_visits AS (
	SELECT pizzeria.name, count(*), 'visit' action_type
	FROM person_visits
	JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
	GROUP BY 1
	ORDER BY 2 DESC
	LIMIT 3
)
SELECT * FROM top_person_order
UNION
SELECT * FROM top_person_visits
ORDER BY action_type, count DESC;