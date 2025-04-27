-- Q1: Top 5 Best-Selling Pizzas
-- This query identifies the top 5 pizzas sold based on total quantity.

SELECT
  od.pizza_id,
  pt.name AS pizza_name,
  SUM(od.quantity) AS total_quantity_sold
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY od.pizza_id, pt.name
ORDER BY total_quantity_sold DESC
LIMIT 5;
