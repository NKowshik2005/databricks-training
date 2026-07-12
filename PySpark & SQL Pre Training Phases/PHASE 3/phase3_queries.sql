# Exercise 1 – Daily Sales

SELECT
    order_date,
    SUM(order_amount) AS daily_sales
FROM sales
GROUP BY order_date;

---

# Exercise 2 – City-wise Revenue

SELECT
    c.city,
    SUM(s.order_amount) AS city_revenue
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
GROUP BY c.city;

---

# Exercise 3 – Repeat Customers (>2 Orders)

SELECT
    customer_id,
    COUNT(*) AS orders
FROM sales
GROUP BY customer_id
HAVING COUNT(*) > 2;

---

# Exercise 4 – Highest Spending Customer in Each City

SELECT
    city,
    MAX(total_spend) AS highest_spend
FROM reporting
GROUP BY city;

---

# Exercise 5 – Final Reporting Table

SELECT
    c.customer_id,
    c.name,
    c.city,
    SUM(s.order_amount) AS total_spend,
    COUNT(s.order_id) AS order_count
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
GROUP BY
    c.customer_id,
    c.name,
    c.city;
