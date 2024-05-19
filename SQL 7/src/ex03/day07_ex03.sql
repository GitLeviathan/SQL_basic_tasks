SELECT name, COUNT(*) AS total_count
FROM (
    SELECT pizzeria.name
    FROM person_order
    JOIN menu ON menu.id = person_order.menu_id
    JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
    UNION ALL
    SELECT pizzeria.name
    FROM person_visits
    JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
) AS combined_data
GROUP BY name
ORDER BY total_count DESC, name;