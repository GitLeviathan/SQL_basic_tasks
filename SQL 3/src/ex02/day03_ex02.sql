SELECT pizza_name, price, name pizzeria_name FROM person_order
RIGHT JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE menu_id IS NULL
ORDER BY pizza_name, price;