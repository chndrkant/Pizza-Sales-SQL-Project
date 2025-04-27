-- Q7: Revenue by Season
-- This query distributes total revenue across Winter, Spring, Summer, and Fall.

SELECT
  CASE
    WHEN MONTH(o.order_date) IN (12,1,2) THEN 'Winter'
    WHEN MONTH(o.order_date) IN (3,4,5) THEN 'Spring'
    WHEN MONTH(o.order_date) IN (6,7,8) THEN 'Summer'
    ELSE 'Fall'
  END AS season,
  SUM(od.quantity * p.price) AS total_revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN pizzas p ON od.pizza_id = p.pizza_id
GROUP BY season
ORDER BY total_revenue DESC;
