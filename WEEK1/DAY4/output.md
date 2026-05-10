**Schema (MySQL v8)**

    
    -- SQL Window Functions and CTE Assignment
    -- Compatible with PostgreSQL
    
    DROP TABLE IF EXISTS orders;
    DROP TABLE IF EXISTS customers;
    DROP TABLE IF EXISTS employees;
    
    CREATE TABLE employees (
        employee_id INT PRIMARY KEY,
        employee_name VARCHAR(100),
        department VARCHAR(100),
        manager_id INT NULL,
        salary DECIMAL(10,2),
        hire_date DATE
    );
    
    CREATE TABLE customers (
        customer_id INT PRIMARY KEY,
        customer_name VARCHAR(100),
        city VARCHAR(100)
    );
    
    CREATE TABLE orders (
        order_id INT PRIMARY KEY,
        customer_id INT,
        employee_id INT,
        order_date DATE,
        total_amount DECIMAL(10,2),
        FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
        FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
    );
    
    -- Insert Employees
    INSERT INTO employees VALUES
    (1, 'Alice Johnson', 'Sales', NULL, 70000, '2020-01-15'),
    (2, 'Bob Smith', 'Sales', 1, 65000, '2021-03-20'),
    (3, 'Charlie Brown', 'IT', NULL, 90000, '2019-07-01'),
    (4, 'Diana Prince', 'IT', 3, 95000, '2018-11-11'),
    (5, 'Ethan Hunt', 'HR', NULL, 60000, '2022-02-10'),
    (6, 'Fiona Green', 'HR', 5, 58000, '2023-05-12'),
    (7, 'George Miller', 'Finance', NULL, 85000, '2017-09-18'),
    (8, 'Hannah Lee', 'Finance', 7, 82000, '2021-08-30');
    
    -- Insert Customers
    INSERT INTO customers VALUES
    (1, 'Acme Corp', 'New York'),
    (2, 'Tech Solutions', 'Chicago'),
    (3, 'Global Retail', 'Dallas'),
    (4, 'Blue Sky Ltd', 'Seattle'),
    (5, 'NextGen Systems', 'Boston');
    
    -- Insert Orders
    INSERT INTO orders VALUES
    (101, 1, 1, '2024-01-10', 500),
    (102, 2, 2, '2024-01-11', 700),
    (103, 1, 1, '2024-01-15', 1200),
    (104, 3, 3, '2024-01-18', 300),
    (105, 4, 4, '2024-01-20', 900),
    (106, 5, 2, '2024-01-25', 1500),
    (107, 2, 1, '2024-02-01', 650),
    (108, 1, 3, '2024-02-05', 1100),
    (109, 3, 4, '2024-02-10', 400),
    (110, 4, 2, '2024-02-15', 950),
    (111, 5, 1, '2024-02-20', 2000),
    (112, 1, 4, '2024-02-25', 750);
    
    -- Notes:
    -- Multiple departments for PARTITION BY exercises.
    -- Salary variations for ranking exercises.
    -- Multiple customer orders for LAG/LEAD analysis.
    -- Manager hierarchy included for recursive CTE practice.

---

**Query #1**

    SELECT employee_name, salary,
    ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
    FROM employees;

| employee_name | salary  | row_num |
| ------------- | ------- | ------- |
| Diana Prince  | 95000.0 | 1       |
| Charlie Brown | 90000.0 | 2       |
| George Miller | 85000.0 | 3       |
| Hannah Lee    | 82000.0 | 4       |
| Alice Johnson | 70000.0 | 5       |
| Bob Smith     | 65000.0 | 6       |
| Ethan Hunt    | 60000.0 | 7       |
| Fiona Green   | 58000.0 | 8       |

---
**Query #2**

    SELECT employee_name, salary,
    RANK() OVER(ORDER BY salary DESC) AS salary_rank
    FROM employees;

| employee_name | salary  | salary_rank |
| ------------- | ------- | ----------- |
| Diana Prince  | 95000.0 | 1           |
| Charlie Brown | 90000.0 | 2           |
| George Miller | 85000.0 | 3           |
| Hannah Lee    | 82000.0 | 4           |
| Alice Johnson | 70000.0 | 5           |
| Bob Smith     | 65000.0 | 6           |
| Ethan Hunt    | 60000.0 | 7           |
| Fiona Green   | 58000.0 | 8           |

---
**Query #3**

    SELECT employee_name, salary,
    DENSE_RANK() OVER(ORDER BY salary DESC) AS salary_dense_rank
    FROM employees;

| employee_name | salary  | salary_dense_rank |
| ------------- | ------- | ----------------- |
| Diana Prince  | 95000.0 | 1                 |
| Charlie Brown | 90000.0 | 2                 |
| George Miller | 85000.0 | 3                 |
| Hannah Lee    | 82000.0 | 4                 |
| Alice Johnson | 70000.0 | 5                 |
| Bob Smith     | 65000.0 | 6                 |
| Ethan Hunt    | 60000.0 | 7                 |
| Fiona Green   | 58000.0 | 8                 |

---
**Query #4**

    SELECT *
    FROM (
        SELECT employee_name, salary,
        ROW_NUMBER() OVER(ORDER BY salary DESC) AS rn
        FROM employees
    ) t
    WHERE rn <= 3;

| employee_name | salary  | rn  |
| ------------- | ------- | --- |
| Diana Prince  | 95000.0 | 1   |
| Charlie Brown | 90000.0 | 2   |
| George Miller | 85000.0 | 3   |

---
**Query #5**

    SELECT employee_name, department, salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_rank
    FROM employees;

| employee_name | department | salary  | dept_rank |
| ------------- | ---------- | ------- | --------- |
| George Miller | Finance    | 85000.0 | 1         |
| Hannah Lee    | Finance    | 82000.0 | 2         |
| Ethan Hunt    | HR         | 60000.0 | 1         |
| Fiona Green   | HR         | 58000.0 | 2         |
| Diana Prince  | IT         | 95000.0 | 1         |
| Charlie Brown | IT         | 90000.0 | 2         |
| Alice Johnson | Sales      | 70000.0 | 1         |
| Bob Smith     | Sales      | 65000.0 | 2         |

---
**Query #6**

    SELECT employee_name, department, salary,
    MAX(salary) OVER(PARTITION BY department) AS highest_salary
    FROM employees;

| employee_name | department | salary  | highest_salary |
| ------------- | ---------- | ------- | -------------- |
| George Miller | Finance    | 85000.0 | 85000.0        |
| Hannah Lee    | Finance    | 82000.0 | 85000.0        |
| Ethan Hunt    | HR         | 60000.0 | 60000.0        |
| Fiona Green   | HR         | 58000.0 | 60000.0        |
| Charlie Brown | IT         | 90000.0 | 95000.0        |
| Diana Prince  | IT         | 95000.0 | 95000.0        |
| Alice Johnson | Sales      | 70000.0 | 70000.0        |
| Bob Smith     | Sales      | 65000.0 | 70000.0        |

---
**Query #7**

    SELECT order_id, order_date, total_amount,
    SUM(total_amount) OVER(ORDER BY order_date) AS running_total
    FROM orders;

| order_id | order_date | total_amount | running_total |
| -------- | ---------- | ------------ | ------------- |
| 101      | 2024-01-10 | 500.0        | 500.0         |
| 102      | 2024-01-11 | 700.0        | 1200.0        |
| 103      | 2024-01-15 | 1200.0       | 2400.0        |
| 104      | 2024-01-18 | 300.0        | 2700.0        |
| 105      | 2024-01-20 | 900.0        | 3600.0        |
| 106      | 2024-01-25 | 1500.0       | 5100.0        |
| 107      | 2024-02-01 | 650.0        | 5750.0        |
| 108      | 2024-02-05 | 1100.0       | 6850.0        |
| 109      | 2024-02-10 | 400.0        | 7250.0        |
| 110      | 2024-02-15 | 950.0        | 8200.0        |
| 111      | 2024-02-20 | 2000.0       | 10200.0       |
| 112      | 2024-02-25 | 750.0        | 10950.0       |

---
**Query #8**

    SELECT employee_id, order_date, total_amount,
    SUM(total_amount) OVER(PARTITION BY employee_id ORDER BY order_date) AS cumulative_sales
    FROM orders;

| employee_id | order_date | total_amount | cumulative_sales |
| ----------- | ---------- | ------------ | ---------------- |
| 1           | 2024-01-10 | 500.0        | 500.0            |
| 1           | 2024-01-15 | 1200.0       | 1700.0           |
| 1           | 2024-02-01 | 650.0        | 2350.0           |
| 1           | 2024-02-20 | 2000.0       | 4350.0           |
| 2           | 2024-01-11 | 700.0        | 700.0            |
| 2           | 2024-01-25 | 1500.0       | 2200.0           |
| 2           | 2024-02-15 | 950.0        | 3150.0           |
| 3           | 2024-01-18 | 300.0        | 300.0            |
| 3           | 2024-02-05 | 1100.0       | 1400.0           |
| 4           | 2024-01-20 | 900.0        | 900.0            |
| 4           | 2024-02-10 | 400.0        | 1300.0           |
| 4           | 2024-02-25 | 750.0        | 2050.0           |

---
**Query #9**

    SELECT customer_id, order_date, total_amount,
    LAG(total_amount) OVER(PARTITION BY customer_id ORDER BY order_date) AS previous_order
    FROM orders;

| customer_id | order_date | total_amount | previous_order |
| ----------- | ---------- | ------------ | -------------- |
| 1           | 2024-01-10 | 500.0        |                |
| 1           | 2024-01-15 | 1200.0       | 500.0          |
| 1           | 2024-02-05 | 1100.0       | 1200.0         |
| 1           | 2024-02-25 | 750.0        | 1100.0         |
| 2           | 2024-01-11 | 700.0        |                |
| 2           | 2024-02-01 | 650.0        | 700.0          |
| 3           | 2024-01-18 | 300.0        |                |
| 3           | 2024-02-10 | 400.0        | 300.0          |
| 4           | 2024-01-20 | 900.0        |                |
| 4           | 2024-02-15 | 950.0        | 900.0          |
| 5           | 2024-01-25 | 1500.0       |                |
| 5           | 2024-02-20 | 2000.0       | 1500.0         |

---
**Query #10**

    SELECT customer_id, order_date, total_amount,
    LEAD(total_amount) OVER(PARTITION BY customer_id ORDER BY order_date) AS next_order
    FROM orders;

| customer_id | order_date | total_amount | next_order |
| ----------- | ---------- | ------------ | ---------- |
| 1           | 2024-01-10 | 500.0        | 1200.0     |
| 1           | 2024-01-15 | 1200.0       | 1100.0     |
| 1           | 2024-02-05 | 1100.0       | 750.0      |
| 1           | 2024-02-25 | 750.0        |            |
| 2           | 2024-01-11 | 700.0        | 650.0      |
| 2           | 2024-02-01 | 650.0        |            |
| 3           | 2024-01-18 | 300.0        | 400.0      |
| 3           | 2024-02-10 | 400.0        |            |
| 4           | 2024-01-20 | 900.0        | 950.0      |
| 4           | 2024-02-15 | 950.0        |            |
| 5           | 2024-01-25 | 1500.0       | 2000.0     |
| 5           | 2024-02-20 | 2000.0       |            |

---
**Query #11**

    SELECT customer_id, order_date, total_amount,
    total_amount - LAG(total_amount) OVER(PARTITION BY customer_id ORDER BY order_date) AS difference_amount
    FROM orders;

| customer_id | order_date | total_amount | difference_amount |
| ----------- | ---------- | ------------ | ----------------- |
| 1           | 2024-01-10 | 500.0        |                   |
| 1           | 2024-01-15 | 1200.0       | 700.0             |
| 1           | 2024-02-05 | 1100.0       | -100.0            |
| 1           | 2024-02-25 | 750.0        | -350.0            |
| 2           | 2024-01-11 | 700.0        |                   |
| 2           | 2024-02-01 | 650.0        | -50.0             |
| 3           | 2024-01-18 | 300.0        |                   |
| 3           | 2024-02-10 | 400.0        | 100.0             |
| 4           | 2024-01-20 | 900.0        |                   |
| 4           | 2024-02-15 | 950.0        | 50.0              |
| 5           | 2024-01-25 | 1500.0       |                   |
| 5           | 2024-02-20 | 2000.0       | 500.0             |

---
**Query #12**

    SELECT order_id, order_date, total_amount,
    AVG(total_amount) OVER(
    ORDER BY order_date
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_average
    FROM orders;

| order_id | order_date | total_amount | moving_average |
| -------- | ---------- | ------------ | -------------- |
| 101      | 2024-01-10 | 500.0        | 500.0          |
| 102      | 2024-01-11 | 700.0        | 600.0          |
| 103      | 2024-01-15 | 1200.0       | 800.0          |
| 104      | 2024-01-18 | 300.0        | 733.333333     |
| 105      | 2024-01-20 | 900.0        | 800.0          |
| 106      | 2024-01-25 | 1500.0       | 900.0          |
| 107      | 2024-02-01 | 650.0        | 1016.666667    |
| 108      | 2024-02-05 | 1100.0       | 1083.333333    |
| 109      | 2024-02-10 | 400.0        | 716.666667     |
| 110      | 2024-02-15 | 950.0        | 816.666667     |
| 111      | 2024-02-20 | 2000.0       | 1116.666667    |
| 112      | 2024-02-25 | 750.0        | 1233.333333    |

---
**Query #13**

    SELECT employee_name, salary,
    NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
    FROM employees;

| employee_name | salary  | salary_quartile |
| ------------- | ------- | --------------- |
| Diana Prince  | 95000.0 | 1               |
| Charlie Brown | 90000.0 | 1               |
| George Miller | 85000.0 | 2               |
| Hannah Lee    | 82000.0 | 2               |
| Alice Johnson | 70000.0 | 3               |
| Bob Smith     | 65000.0 | 3               |
| Ethan Hunt    | 60000.0 | 4               |
| Fiona Green   | 58000.0 | 4               |

---
**Query #14**

    SELECT *
    FROM (
        SELECT customer_id, order_id, order_date,
        ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date) AS rn
        FROM orders
    ) t
    WHERE rn = 1;

| customer_id | order_id | order_date | rn  |
| ----------- | -------- | ---------- | --- |
| 1           | 101      | 2024-01-10 | 1   |
| 2           | 102      | 2024-01-11 | 1   |
| 3           | 104      | 2024-01-18 | 1   |
| 4           | 105      | 2024-01-20 | 1   |
| 5           | 106      | 2024-01-25 | 1   |

---
**Query #15**

    SELECT *
    FROM (
        SELECT customer_id, order_id, order_date,
        ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date DESC) AS rn
        FROM orders
    ) t
    WHERE rn = 1;

| customer_id | order_id | order_date | rn  |
| ----------- | -------- | ---------- | --- |
| 1           | 112      | 2024-02-25 | 1   |
| 2           | 107      | 2024-02-01 | 1   |
| 3           | 109      | 2024-02-10 | 1   |
| 4           | 110      | 2024-02-15 | 1   |
| 5           | 111      | 2024-02-20 | 1   |

---
**Query #16**

    SELECT employee_name, department, salary,
    AVG(salary) OVER(PARTITION BY department) AS dept_avg_salary
    FROM employees;

| employee_name | department | salary  | dept_avg_salary |
| ------------- | ---------- | ------- | --------------- |
| George Miller | Finance    | 85000.0 | 83500.0         |
| Hannah Lee    | Finance    | 82000.0 | 83500.0         |
| Ethan Hunt    | HR         | 60000.0 | 59000.0         |
| Fiona Green   | HR         | 58000.0 | 59000.0         |
| Charlie Brown | IT         | 90000.0 | 92500.0         |
| Diana Prince  | IT         | 95000.0 | 92500.0         |
| Alice Johnson | Sales      | 70000.0 | 67500.0         |
| Bob Smith     | Sales      | 65000.0 | 67500.0         |

---
**Query #17**

    SELECT *
    FROM (
        SELECT employee_name, department, salary,
        AVG(salary) OVER(PARTITION BY department) AS dept_avg
        FROM employees
    ) t
    WHERE salary > dept_avg;

| employee_name | department | salary  | dept_avg |
| ------------- | ---------- | ------- | -------- |
| George Miller | Finance    | 85000.0 | 83500.0  |
| Ethan Hunt    | HR         | 60000.0 | 59000.0  |
| Diana Prince  | IT         | 95000.0 | 92500.0  |
| Alice Johnson | Sales      | 70000.0 | 67500.0  |

---
**Query #18**

    SELECT employee_name, department, salary,
    SUM(salary) OVER(PARTITION BY department) AS department_payroll
    FROM employees;

| employee_name | department | salary  | department_payroll |
| ------------- | ---------- | ------- | ------------------ |
| George Miller | Finance    | 85000.0 | 167000.0           |
| Hannah Lee    | Finance    | 82000.0 | 167000.0           |
| Ethan Hunt    | HR         | 60000.0 | 118000.0           |
| Fiona Green   | HR         | 58000.0 | 118000.0           |
| Charlie Brown | IT         | 90000.0 | 185000.0           |
| Diana Prince  | IT         | 95000.0 | 185000.0           |
| Alice Johnson | Sales      | 70000.0 | 135000.0           |
| Bob Smith     | Sales      | 65000.0 | 135000.0           |

---
**Query #19**

    SELECT employee_name, department, salary,
    ROUND(
    salary * 100.0 /
    SUM(salary) OVER(PARTITION BY department), 2
    ) AS salary_percentage
    FROM employees;

| employee_name | department | salary  | salary_percentage |
| ------------- | ---------- | ------- | ----------------- |
| George Miller | Finance    | 85000.0 | 50.9              |
| Hannah Lee    | Finance    | 82000.0 | 49.1              |
| Ethan Hunt    | HR         | 60000.0 | 50.85             |
| Fiona Green   | HR         | 58000.0 | 49.15             |
| Charlie Brown | IT         | 90000.0 | 48.65             |
| Diana Prince  | IT         | 95000.0 | 51.35             |
| Alice Johnson | Sales      | 70000.0 | 51.85             |
| Bob Smith     | Sales      | 65000.0 | 48.15             |

---
**Query #20**

    SELECT employee_name, department,
    COUNT(*) OVER() AS total_employees
    FROM employees;

| employee_name | department | total_employees |
| ------------- | ---------- | --------------- |
| Alice Johnson | Sales      | 8               |
| Bob Smith     | Sales      | 8               |
| Charlie Brown | IT         | 8               |
| Diana Prince  | IT         | 8               |
| Ethan Hunt    | HR         | 8               |
| Fiona Green   | HR         | 8               |
| George Miller | Finance    | 8               |
| Hannah Lee    | Finance    | 8               |

---
**Query #21**

    WITH employee_sales AS (
        SELECT employee_id,
        SUM(total_amount) AS total_sales
        FROM orders
        GROUP BY employee_id
    )
    SELECT * FROM employee_sales;

| employee_id | total_sales |
| ----------- | ----------- |
| 1           | 4350.0      |
| 2           | 3150.0      |
| 3           | 1400.0      |
| 4           | 2050.0      |

---
**Query #22**

    WITH employee_sales AS (
        SELECT employee_id,
        SUM(total_amount) AS total_sales
        FROM orders
        GROUP BY employee_id
    ),
    company_avg AS (
        SELECT AVG(total_sales) AS avg_sales
        FROM employee_sales
    )
    SELECT es.*
    FROM employee_sales es, company_avg ca
    WHERE es.total_sales > ca.avg_sales;

| employee_id | total_sales |
| ----------- | ----------- |
| 1           | 4350.0      |
| 2           | 3150.0      |

---
**Query #23**

    WITH customer_spending AS (
        SELECT customer_id,
        SUM(total_amount) AS total_spending
        FROM orders
        GROUP BY customer_id
    ),
    customer_rankings AS (
        SELECT customer_id, total_spending,
        RANK() OVER(ORDER BY total_spending DESC) AS customer_rank
        FROM customer_spending
    )
    SELECT * FROM customer_rankings;

| customer_id | total_spending | customer_rank |
| ----------- | -------------- | ------------- |
| 1           | 3550.0         | 1             |
| 5           | 3500.0         | 2             |
| 4           | 1850.0         | 3             |
| 2           | 1350.0         | 4             |
| 3           | 700.0          | 5             |

---
**Query #24**

    WITH RECURSIVE numbers AS (
        SELECT 1 AS num
        UNION ALL
        SELECT num + 1
        FROM numbers
        WHERE num < 10
    )
    SELECT * FROM numbers;

| num |
| --- |
| 1   |
| 2   |
| 3   |
| 4   |
| 5   |
| 6   |
| 7   |
| 8   |
| 9   |
| 10  |

---
**Query #25**

    WITH RECURSIVE employee_hierarchy AS (
        SELECT employee_id, employee_name, manager_id
        FROM employees
        WHERE manager_id IS NULL
    
        UNION ALL
    
        SELECT e.employee_id, e.employee_name, e.manager_id
        FROM employees e
        JOIN employee_hierarchy eh
        ON e.manager_id = eh.employee_id
    )
    SELECT * FROM employee_hierarchy;

| employee_id | employee_name | manager_id |
| ----------- | ------------- | ---------- |
| 1           | Alice Johnson |            |
| 3           | Charlie Brown |            |
| 5           | Ethan Hunt    |            |
| 7           | George Miller |            |
| 2           | Bob Smith     | 1          |
| 4           | Diana Prince  | 3          |
| 6           | Fiona Green   | 5          |
| 8           | Hannah Lee    | 7          |

---
**Query #26**

    WITH avg_orders AS (
        SELECT AVG(total_amount) AS avg_amount
        FROM orders
    )
    SELECT *
    FROM orders, avg_orders
    WHERE total_amount > avg_amount;

| order_id | customer_id | employee_id | order_date | total_amount | avg_amount |
| -------- | ----------- | ----------- | ---------- | ------------ | ---------- |
| 103      | 1           | 1           | 2024-01-15 | 1200.0       | 912.5      |
| 106      | 5           | 2           | 2024-01-25 | 1500.0       | 912.5      |
| 108      | 1           | 3           | 2024-02-05 | 1100.0       | 912.5      |
| 110      | 4           | 2           | 2024-02-15 | 950.0        | 912.5      |
| 111      | 5           | 1           | 2024-02-20 | 2000.0       | 912.5      |

---
**Query #27**

    WITH customer_spending AS (
        SELECT customer_id,
        SUM(total_amount) AS total_spending
        FROM orders
        GROUP BY customer_id
    )
    SELECT customer_id, total_spending,
    RANK() OVER(ORDER BY total_spending DESC) AS customer_rank
    FROM customer_spending;

| customer_id | total_spending | customer_rank |
| ----------- | -------------- | ------------- |
| 1           | 3550.0         | 1             |
| 5           | 3500.0         | 2             |
| 4           | 1850.0         | 3             |
| 2           | 1350.0         | 4             |
| 3           | 700.0          | 5             |

---
**Query #28**

    SELECT *
    FROM (
        SELECT employee_name, department, salary,
        DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank
        FROM employees
    ) t
    WHERE dept_salary_rank = 2;

| employee_name | department | salary  | dept_salary_rank |
| ------------- | ---------- | ------- | ---------------- |
| Hannah Lee    | Finance    | 82000.0 | 2                |
| Fiona Green   | HR         | 58000.0 | 2                |
| Charlie Brown | IT         | 90000.0 | 2                |
| Bob Smith     | Sales      | 65000.0 | 2                |

---
**Query #29**

    SELECT employee_name, department, salary,
    MAX(salary) OVER(PARTITION BY department) - salary AS salary_difference
    FROM employees;

| employee_name | department | salary  | salary_difference |
| ------------- | ---------- | ------- | ----------------- |
| George Miller | Finance    | 85000.0 | 0.0               |
| Hannah Lee    | Finance    | 82000.0 | 3000.0            |
| Ethan Hunt    | HR         | 60000.0 | 0.0               |
| Fiona Green   | HR         | 58000.0 | 2000.0            |
| Charlie Brown | IT         | 90000.0 | 5000.0            |
| Diana Prince  | IT         | 95000.0 | 0.0               |
| Alice Johnson | Sales      | 70000.0 | 0.0               |
| Bob Smith     | Sales      | 65000.0 | 5000.0            |

---
**Query #30**

    WITH employee_sales AS (
        SELECT e.employee_id,
        e.employee_name,
        e.department,
        SUM(o.total_amount) AS total_sales
        FROM employees e
        LEFT JOIN orders o
        ON e.employee_id = o.employee_id
        GROUP BY e.employee_id, e.employee_name, e.department
    ),
    ranked_employees AS (
        SELECT *,
        RANK() OVER(PARTITION BY department ORDER BY total_sales DESC) AS dept_rank
        FROM employee_sales
    )
    SELECT *
    FROM ranked_employees
    WHERE dept_rank = 1;

| employee_id | employee_name | department | total_sales | dept_rank |
| ----------- | ------------- | ---------- | ----------- | --------- |
| 7           | George Miller | Finance    |             | 1         |
| 8           | Hannah Lee    | Finance    |             | 1         |
| 5           | Ethan Hunt    | HR         |             | 1         |
| 6           | Fiona Green   | HR         |             | 1         |
| 4           | Diana Prince  | IT         | 2050.0      | 1         |
| 1           | Alice Johnson | Sales      | 4350.0      | 1         |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/mBKNh2eDAs1B4FxPkeQVYS/0)