# SQL Queries – Phase 2

---

## Exercise 1 – Total Order Amount for Each Customer

SELECT
    c.customer_id,
    c.name,
    SUM(o.order_amount) AS total_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

---

## Exercise 2 – Top 3 Customers by Total Spend

SELECT
    c.customer_id,
    c.name,
    SUM(o.order_amount) AS total_spend
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spend DESC
LIMIT 3;

---

## Exercise 3 – Customers with No Orders

SELECT *
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

---

## Exercise 4 – City-wise Total Revenue

SELECT
    c.city,
    SUM(o.order_amount) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.city;

---

## Exercise 5 – Average Order Amount per Customer

SELECT
    customer_id,
    AVG(order_amount) AS average_order
FROM orders
GROUP BY customer_id;

---

## Exercise 6 – Customers with More Than One Order

SELECT
    customer_id,
    COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;

---

## Exercise 7 – Sort Customers by Total Spend

SELECT
    c.customer_id,
    c.name,
    SUM(o.order_amount) AS total_spend
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spend DESC; 
