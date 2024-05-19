CREATE UNIQUE INDEX idx_menu_unique on menu (pizzeria_id, pizza_name);

SET enable_seqscan = off;
EXPLAIN ANALYZE
SELECT pizzeria_id, pizza_name FROM menu
WHERE pizza_name='cheese pizza' AND pizzeria_id = 2;