-- Q4: Revenue by Day of the Week
-- This query calculates total revenue generated on each weekday.

SELECT
  DAYNAME(o.order_date) AS sale_day,
  SUM(od.quantity * p.price) AS total_revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN pizzas p ON od.pizza_id = p.pizza_id
GROUP BY sale_day
ORDER BY total_revenue DESC;
