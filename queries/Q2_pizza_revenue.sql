-- Q2: Top 5 Revenue-Generating Pizzas
-- This query identifies pizzas that generated the highest revenue.

SELECT
  od.pizza_id,
  pt.name AS pizza_name,
  SUM(od.quantity * p.price) AS total_revenue
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY od.pizza_id, pt.name
ORDER BY total_revenue DESC
LIMIT 5;
