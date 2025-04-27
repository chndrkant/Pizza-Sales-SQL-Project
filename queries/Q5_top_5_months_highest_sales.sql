-- Bonus Query: Top 5 Months with Highest Revenue
-- This query identifies the top 5 highest revenue months.

SELECT
  DATE_FORMAT(o.order_date, '%Y-%m') AS year_month,
  SUM(od.quantity * p.price) AS total_revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN pizzas p ON od.pizza_id = p.pizza_id
GROUP BY year_month
ORDER BY total_revenue DESC
LIMIT 5;
