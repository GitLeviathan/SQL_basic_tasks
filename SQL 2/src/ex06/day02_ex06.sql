SELECT menu.pizza_name, pizzeria.name AS pizzeria_name FROM person_order
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
join person on person_order.person_id = person.id WHERE person.name in ('Anna','Denis')
ORDER BY 1, 2;