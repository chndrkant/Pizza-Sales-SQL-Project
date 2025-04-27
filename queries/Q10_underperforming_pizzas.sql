-- Q10: Identify Underperforming Pizzas
-- This query lists the bottom 10 pizzas by quantity sold.

SELECT
  od.pizza_id,
  pt.name AS pizza_name,
  SUM(od.quantity) AS total_quantity_sold
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY od.pizza_id, pt.name
ORDER BY total_quantity_sold ASC
LIMIT 10;
