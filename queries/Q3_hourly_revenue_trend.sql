-- Q3: Hourly Revenue Trend
-- This query shows revenue distribution across different hours of the day.

SELECT
  HOUR(o.order_time) AS sale_hour,
  SUM(od.quantity * p.price) AS total_revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN pizzas p ON od.pizza_id = p.pizza_id
GROUP BY sale_hour
ORDER BY sale_hour ASC;
