-- Q9: Customer Demand by Pizza Category
-- This query analyzes customer demand across different pizza categories.

SELECT
  pt.category,
  SUM(od.quantity) AS total_quantity_sold
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
ORDER BY total_quantity_sold DESC;
