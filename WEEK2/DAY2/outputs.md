
---

**Query #1**

    
 NULL FUNCTIONS SOLUTIONS
    
    -- Q1
    SELECT *
    FROM Employees
    WHERE salary IS NULL;

| emp_id | name  | salary | bonus | manager_id |
| ------ | ----- | ------ | ----- | ---------- |
| 2      | John  |        | 5000  | 102        |
| 4      | David |        |       | 103        |
| 6      | Kiran |        |       |            |
| 8      | Neha  |        | 2000  |            |

---
**Query #2**

    -- Q2
    SELECT *
    FROM Orders
    WHERE discount IS NOT NULL;

| order_id | customer_name | amount | discount | coupon_code |
| -------- | ------------- | ------ | -------- | ----------- |
| 102      | John          |        | 50       |             |
| 105      | Priya         | 1500   | 100      |             |
| 108      | Neha          |        | 200      | DISC15      |

---
**Query #3**

    -- Q3
    SELECT *
    FROM Products
    WHERE category IS NULL;

| product_id | product_name | price | category | stock |
| ---------- | ------------ | ----- | -------- | ----- |
| 3          | Tablet       | 30000 |          | 5     |
| 4          | Headphones   |       |          |       |
| 7          | Mouse        | 500   |          |       |

---
**Query #4**

    -- Q4
    SELECT COUNT(*) AS null_manager_count
    FROM Employees
    WHERE manager_id IS NULL;

| null_manager_count |
| ------------------ |
| 3                  |

---
**Query #5**

    -- Q5
    SELECT name,
           IFNULL(salary,0) AS updated_salary
    FROM Employees;

| name  | updated_salary |
| ----- | -------------- |
| Amit  | 50000          |
| John  | 0              |
| Sara  | 60000          |
| David | 0              |
| Priya | 45000          |
| Kiran | 0              |
| Ravi  | 70000          |
| Neha  | 0              |

---
**Query #6**

    -- Q6
    SELECT name,
           IFNULL(bonus,1000) AS updated_bonus
    FROM Employees;

| name  | updated_bonus |
| ----- | ------------- |
| Amit  | 1000          |
| John  | 5000          |
| Sara  | 1000          |
| David | 1000          |
| Priya | 3000          |
| Kiran | 1000          |
| Ravi  | 7000          |
| Neha  | 2000          |

---
**Query #7**

    -- Q7
    SELECT customer_name,
           IFNULL(amount,500) AS updated_amount
    FROM Orders;

| customer_name | updated_amount |
| ------------- | -------------- |
| Amit          | 1000           |
| John          | 500            |
| Sara          | 2000           |
| David         | 500            |
| Priya         | 1500           |
| Kiran         | 500            |
| Ravi          | 3000           |
| Neha          | 500            |

---
**Query #8**

    -- Q8
    SELECT product_name,
           IFNULL(stock,0) AS updated_stock
    FROM Products;

| product_name | updated_stock |
| ------------ | ------------- |
| Laptop       | 10            |
| Phone        | 0             |
| Tablet       | 5             |
| Headphones   | 0             |
| Monitor      | 0             |
| Keyboard     | 15            |
| Mouse        | 0             |
| Printer      | 3             |

---
**Query #9**

    -- Q9
    SELECT name,
           COALESCE(salary,bonus) AS employee_earnings
    FROM Employees;

| name  | employee_earnings |
| ----- | ----------------- |
| Amit  | 50000             |
| John  | 5000              |
| Sara  | 60000             |
| David |                   |
| Priya | 45000             |
| Kiran |                   |
| Ravi  | 70000             |
| Neha  | 2000              |

---
**Query #10**

    -- Q10
    SELECT name,
           COALESCE(salary,bonus,0) AS first_available_value
    FROM Employees;

| name  | first_available_value |
| ----- | --------------------- |
| Amit  | 50000                 |
| John  | 5000                  |
| Sara  | 60000                 |
| David | 0                     |
| Priya | 45000                 |
| Kiran | 0                     |
| Ravi  | 70000                 |
| Neha  | 2000                  |

---
**Query #11**

    -- Q11
    SELECT product_name,
           COALESCE(price,1000) AS updated_price
    FROM Products;

| product_name | updated_price |
| ------------ | ------------- |
| Laptop       | 50000         |
| Phone        | 1000          |
| Tablet       | 30000         |
| Headphones   | 1000          |
| Monitor      | 20000         |
| Keyboard     | 1000          |
| Mouse        | 500           |
| Printer      | 1000          |

---
**Query #12**

    -- Q12
    SELECT customer_name,
           COALESCE(amount,discount,0) AS payment_value
    FROM Orders;

| customer_name | payment_value |
| ------------- | ------------- |
| Amit          | 1000          |
| John          | 50            |
| Sara          | 2000          |
| David         | 0             |
| Priya         | 1500          |
| Kiran         | 0             |
| Ravi          | 3000          |
| Neha          | 200           |

---
**Query #13**

    -- Q13
    SELECT name,
           NULLIF(salary,0) AS null_salary
    FROM Employees;

| name  | null_salary |
| ----- | ----------- |
| Amit  | 50000       |
| John  |             |
| Sara  | 60000       |
| David |             |
| Priya | 45000       |
| Kiran |             |
| Ravi  | 70000       |
| Neha  |             |

---
**Query #14**

    -- Q14
    SELECT customer_name,
           NULLIF(discount,0) AS null_discount
    FROM Orders;

| customer_name | null_discount |
| ------------- | ------------- |
| Amit          |               |
| John          | 50            |
| Sara          |               |
| David         |               |
| Priya         | 100           |
| Kiran         |               |
| Ravi          |               |
| Neha          | 200           |

---
**Query #15**

    -- Q15
    SELECT order_id,
           amount / NULLIF(discount,0) AS safe_division
    FROM Orders;

| order_id | safe_division |
| -------- | ------------- |
| 101      |               |
| 102      |               |
| 103      |               |
| 104      |               |
| 105      | 15.0          |
| 106      |               |
| 107      |               |
| 108      |               |

---
**Query #16**

    -- Q16
    SELECT customer_name,
           NULLIF(coupon_code,'DISC10') AS updated_coupon
    FROM Orders;

| customer_name | updated_coupon |
| ------------- | -------------- |
| Amit          |                |
| John          |                |
| Sara          | DISC20         |
| David         |                |
| Priya         |                |
| Kiran         | DISC5          |
| Ravi          |                |
| Neha          | DISC15         |

---
**Query #17**

    -- Q17
    SELECT name,
           IFNULL(salary,0) + IFNULL(bonus,0) AS total_earnings
    FROM Employees;

| name  | total_earnings |
| ----- | -------------- |
| Amit  | 50000          |
| John  | 5000           |
| Sara  | 60000          |
| David | 0              |
| Priya | 48000          |
| Kiran | 0              |
| Ravi  | 77000          |
| Neha  | 2000           |

---
**Query #18**

    -- Q18
    SELECT *
    FROM Employees
    WHERE salary IS NULL
    AND bonus IS NULL;

| emp_id | name  | salary | bonus | manager_id |
| ------ | ----- | ------ | ----- | ---------- |
| 4      | David |        |       | 103        |
| 6      | Kiran |        |       |            |

---
**Query #19**

    -- Q19
    SELECT *
    FROM Products
    WHERE price IS NULL
    AND category IS NOT NULL;

| product_id | product_name | price | category    | stock |
| ---------- | ------------ | ----- | ----------- | ----- |
| 2          | Phone        |       | Electronics |       |
| 6          | Keyboard     |       | Accessories | 15    |
| 8          | Printer      |       | Electronics | 3     |

---
**Query #20**

    -- Q20
    SELECT *
    FROM Orders
    WHERE amount IS NULL
    AND discount IS NULL;

| order_id | customer_name | amount | discount | coupon_code |
| -------- | ------------- | ------ | -------- | ----------- |
| 104      | David         |        |          |             |
| 106      | Kiran         |        |          | DISC5       |

---

[View on DB Fiddle](https://www.db-fiddle.com/)