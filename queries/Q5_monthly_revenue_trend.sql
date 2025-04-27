-- Q5: Monthly Sales Trend
-- This query shows revenue trend over each month.

SELECT
  DATE_FORMAT(o.order_date, '%Y-%m') AS year_month,
  SUM(od.quantity * p.price) AS total_revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN pizzas p ON od.pizza_id = p.pizza_id
GROUP BY year_month
ORDER BY year_month;
