SELECT person.name FROM person_order
join person on person_order.person_id = person.id
JOIN menu on person_order.menu_id = menu.id
where gender like 'female' and menu.pizza_name in ('pepperoni pizza', 'cheese pizza')
GROUP by person.name
HAVING COUNT(person_order.id) = 2
order by 1;