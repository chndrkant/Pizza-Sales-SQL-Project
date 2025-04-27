-- Q8: Customer Preference by Pizza Size
-- This query identifies which pizza size is most popular among customers.

SELECT
  p.size,
  SUM(od.quantity) AS total_quantity_sold
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
GROUP BY p.size
ORDER BY total_quantity_sold DESC;
