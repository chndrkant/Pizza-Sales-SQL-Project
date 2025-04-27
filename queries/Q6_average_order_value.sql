-- Q6: Average Order Value Over Time
-- This query calculates average order value month by month.

SELECT
  sub.year_month,
  ROUND(AVG(sub.total_order_value), 2) AS avg_order_value
FROM (
  SELECT
    o.order_id,
    DATE_FORMAT(o.order_date, '%Y-%m') AS year_month,
    SUM(od.quantity * p.price) AS total_order_value
  FROM orders o
  JOIN order_details od ON o.order_id = od.order_id
  JOIN pizzas p ON od.pizza_id = p.pizza_id
  GROUP BY o.order_id, year_month
) AS sub
GROUP BY sub.year_month
ORDER BY sub.year_month;
