**Schema (PostgreSQL v18)**

    
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

    SELECT 
        employee_name,
        salary,
        ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
    FROM employees;

| employee_name | salary   | row_num |
| ------------- | -------- | ------- |
| Diana Prince  | 95000.00 | 1       |
| Charlie Brown | 90000.00 | 2       |
| George Miller | 85000.00 | 3       |
| Hannah Lee    | 82000.00 | 4       |
| Alice Johnson | 70000.00 | 5       |
| Bob Smith     | 65000.00 | 6       |
| Ethan Hunt    | 60000.00 | 7       |
| Fiona Green   | 58000.00 | 8       |

---
**Query #2**

    SELECT 
        employee_name,
        salary,
        RANK() OVER(ORDER BY salary DESC) AS salary_rank
    FROM employees;

| employee_name | salary   | salary_rank |
| ------------- | -------- | ----------- |
| Diana Prince  | 95000.00 | 1           |
| Charlie Brown | 90000.00 | 2           |
| George Miller | 85000.00 | 3           |
| Hannah Lee    | 82000.00 | 4           |
| Alice Johnson | 70000.00 | 5           |
| Bob Smith     | 65000.00 | 6           |
| Ethan Hunt    | 60000.00 | 7           |
| Fiona Green   | 58000.00 | 8           |

---
**Query #3**

    SELECT 
        employee_name,
        salary,
        DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rank
    FROM employees;

| employee_name | salary   | dense_rank |
| ------------- | -------- | ---------- |
| Diana Prince  | 95000.00 | 1          |
| Charlie Brown | 90000.00 | 2          |
| George Miller | 85000.00 | 3          |
| Hannah Lee    | 82000.00 | 4          |
| Alice Johnson | 70000.00 | 5          |
| Bob Smith     | 65000.00 | 6          |
| Ethan Hunt    | 60000.00 | 7          |
| Fiona Green   | 58000.00 | 8          |

---
**Query #4**

    SELECT *
    FROM (
        SELECT 
            employee_name,
            salary,
            ROW_NUMBER() OVER(ORDER BY salary DESC) AS rn
        FROM employees
    ) t
    WHERE rn <= 3;

| employee_name | salary   | rn  |
| ------------- | -------- | --- |
| Diana Prince  | 95000.00 | 1   |
| Charlie Brown | 90000.00 | 2   |
| George Miller | 85000.00 | 3   |

---
**Query #5**

    SELECT 
        employee_name,
        department,
        salary,
        RANK() OVER(
            PARTITION BY department
            ORDER BY salary DESC
        ) AS dept_rank
    FROM employees;

| employee_name | department | salary   | dept_rank |
| ------------- | ---------- | -------- | --------- |
| George Miller | Finance    | 85000.00 | 1         |
| Hannah Lee    | Finance    | 82000.00 | 2         |
| Ethan Hunt    | HR         | 60000.00 | 1         |
| Fiona Green   | HR         | 58000.00 | 2         |
| Diana Prince  | IT         | 95000.00 | 1         |
| Charlie Brown | IT         | 90000.00 | 2         |
| Alice Johnson | Sales      | 70000.00 | 1         |
| Bob Smith     | Sales      | 65000.00 | 2         |

---
**Query #6**

    SELECT 
        employee_name,
        department,
        salary,
        MAX(salary) OVER(
            PARTITION BY department
        ) AS department_max_salary
    FROM employees;

| employee_name | department | salary   | department_max_salary |
| ------------- | ---------- | -------- | --------------------- |
| George Miller | Finance    | 85000.00 | 85000.00              |
| Hannah Lee    | Finance    | 82000.00 | 85000.00              |
| Ethan Hunt    | HR         | 60000.00 | 60000.00              |
| Fiona Green   | HR         | 58000.00 | 60000.00              |
| Charlie Brown | IT         | 90000.00 | 95000.00              |
| Diana Prince  | IT         | 95000.00 | 95000.00              |
| Alice Johnson | Sales      | 70000.00 | 70000.00              |
| Bob Smith     | Sales      | 65000.00 | 70000.00              |

---
**Query #7**

    SELECT 
        order_id,
        order_date,
        total_amount,
        SUM(total_amount) OVER(
            ORDER BY order_date
        ) AS running_total
    FROM orders;

| order_id | order_date | total_amount | running_total |
| -------- | ---------- | ------------ | ------------- |
| 101      | 2024-01-10 | 500.00       | 500.00        |
| 102      | 2024-01-11 | 700.00       | 1200.00       |
| 103      | 2024-01-15 | 1200.00      | 2400.00       |
| 104      | 2024-01-18 | 300.00       | 2700.00       |
| 105      | 2024-01-20 | 900.00       | 3600.00       |
| 106      | 2024-01-25 | 1500.00      | 5100.00       |
| 107      | 2024-02-01 | 650.00       | 5750.00       |
| 108      | 2024-02-05 | 1100.00      | 6850.00       |
| 109      | 2024-02-10 | 400.00       | 7250.00       |
| 110      | 2024-02-15 | 950.00       | 8200.00       |
| 111      | 2024-02-20 | 2000.00      | 10200.00      |
| 112      | 2024-02-25 | 750.00       | 10950.00      |

---
**Query #8**

    SELECT 
        employee_id,
        order_date,
        total_amount,
        SUM(total_amount) OVER(
            PARTITION BY employee_id
            ORDER BY order_date
        ) AS cumulative_sales
    FROM orders;

| employee_id | order_date | total_amount | cumulative_sales |
| ----------- | ---------- | ------------ | ---------------- |
| 1           | 2024-01-10 | 500.00       | 500.00           |
| 1           | 2024-01-15 | 1200.00      | 1700.00          |
| 1           | 2024-02-01 | 650.00       | 2350.00          |
| 1           | 2024-02-20 | 2000.00      | 4350.00          |
| 2           | 2024-01-11 | 700.00       | 700.00           |
| 2           | 2024-01-25 | 1500.00      | 2200.00          |
| 2           | 2024-02-15 | 950.00       | 3150.00          |
| 3           | 2024-01-18 | 300.00       | 300.00           |
| 3           | 2024-02-05 | 1100.00      | 1400.00          |
| 4           | 2024-01-20 | 900.00       | 900.00           |
| 4           | 2024-02-10 | 400.00       | 1300.00          |
| 4           | 2024-02-25 | 750.00       | 2050.00          |

---
**Query #9**

    SELECT 
        customer_id,
        order_date,
        total_amount,
        LAG(total_amount) OVER(
            PARTITION BY customer_id
            ORDER BY order_date
        ) AS previous_order
    FROM orders;

| customer_id | order_date | total_amount | previous_order |
| ----------- | ---------- | ------------ | -------------- |
| 1           | 2024-01-10 | 500.00       |                |
| 1           | 2024-01-15 | 1200.00      | 500.00         |
| 1           | 2024-02-05 | 1100.00      | 1200.00        |
| 1           | 2024-02-25 | 750.00       | 1100.00        |
| 2           | 2024-01-11 | 700.00       |                |
| 2           | 2024-02-01 | 650.00       | 700.00         |
| 3           | 2024-01-18 | 300.00       |                |
| 3           | 2024-02-10 | 400.00       | 300.00         |
| 4           | 2024-01-20 | 900.00       |                |
| 4           | 2024-02-15 | 950.00       | 900.00         |
| 5           | 2024-01-25 | 1500.00      |                |
| 5           | 2024-02-20 | 2000.00      | 1500.00        |

---
**Query #10**

    SELECT 
        customer_id,
        order_date,
        total_amount,
        LEAD(total_amount) OVER(
            PARTITION BY customer_id
            ORDER BY order_date
        ) AS next_order
    FROM orders;

| customer_id | order_date | total_amount | next_order |
| ----------- | ---------- | ------------ | ---------- |
| 1           | 2024-01-10 | 500.00       | 1200.00    |
| 1           | 2024-01-15 | 1200.00      | 1100.00    |
| 1           | 2024-02-05 | 1100.00      | 750.00     |
| 1           | 2024-02-25 | 750.00       |            |
| 2           | 2024-01-11 | 700.00       | 650.00     |
| 2           | 2024-02-01 | 650.00       |            |
| 3           | 2024-01-18 | 300.00       | 400.00     |
| 3           | 2024-02-10 | 400.00       |            |
| 4           | 2024-01-20 | 900.00       | 950.00     |
| 4           | 2024-02-15 | 950.00       |            |
| 5           | 2024-01-25 | 1500.00      | 2000.00    |
| 5           | 2024-02-20 | 2000.00      |            |

---
**Query #11**

    SELECT 
        customer_id,
        order_date,
        total_amount,
        total_amount - LAG(total_amount) OVER(
            PARTITION BY customer_id
            ORDER BY order_date
        ) AS difference
    FROM orders;

| customer_id | order_date | total_amount | difference |
| ----------- | ---------- | ------------ | ---------- |
| 1           | 2024-01-10 | 500.00       |            |
| 1           | 2024-01-15 | 1200.00      | 700.00     |
| 1           | 2024-02-05 | 1100.00      | -100.00    |
| 1           | 2024-02-25 | 750.00       | -350.00    |
| 2           | 2024-01-11 | 700.00       |            |
| 2           | 2024-02-01 | 650.00       | -50.00     |
| 3           | 2024-01-18 | 300.00       |            |
| 3           | 2024-02-10 | 400.00       | 100.00     |
| 4           | 2024-01-20 | 900.00       |            |
| 4           | 2024-02-15 | 950.00       | 50.00      |
| 5           | 2024-01-25 | 1500.00      |            |
| 5           | 2024-02-20 | 2000.00      | 500.00     |

---
**Query #12**

    SELECT 
        order_id,
        order_date,
        total_amount,
        AVG(total_amount) OVER(
            ORDER BY order_date
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ) AS moving_average
    FROM orders;

| order_id | order_date | total_amount | moving_average        |
| -------- | ---------- | ------------ | --------------------- |
| 101      | 2024-01-10 | 500.00       | 500.0000000000000000  |
| 102      | 2024-01-11 | 700.00       | 600.0000000000000000  |
| 103      | 2024-01-15 | 1200.00      | 800.0000000000000000  |
| 104      | 2024-01-18 | 300.00       | 733.3333333333333333  |
| 105      | 2024-01-20 | 900.00       | 800.0000000000000000  |
| 106      | 2024-01-25 | 1500.00      | 900.0000000000000000  |
| 107      | 2024-02-01 | 650.00       | 1016.6666666666666667 |
| 108      | 2024-02-05 | 1100.00      | 1083.3333333333333333 |
| 109      | 2024-02-10 | 400.00       | 716.6666666666666667  |
| 110      | 2024-02-15 | 950.00       | 816.6666666666666667  |
| 111      | 2024-02-20 | 2000.00      | 1116.6666666666666667 |
| 112      | 2024-02-25 | 750.00       | 1233.3333333333333333 |

---
**Query #13**

    SELECT 
        employee_name,
        salary,
        NTILE(4) OVER(ORDER BY salary DESC) AS quartile
    FROM employees;

| employee_name | salary   | quartile |
| ------------- | -------- | -------- |
| Diana Prince  | 95000.00 | 1        |
| Charlie Brown | 90000.00 | 1        |
| George Miller | 85000.00 | 2        |
| Hannah Lee    | 82000.00 | 2        |
| Alice Johnson | 70000.00 | 3        |
| Bob Smith     | 65000.00 | 3        |
| Ethan Hunt    | 60000.00 | 4        |
| Fiona Green   | 58000.00 | 4        |

---
**Query #14**

    SELECT *
    FROM (
        SELECT 
            customer_id,
            order_id,
            order_date,
            ROW_NUMBER() OVER(
                PARTITION BY customer_id
                ORDER BY order_date
            ) AS rn
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
        SELECT 
            customer_id,
            order_id,
            order_date,
            ROW_NUMBER() OVER(
                PARTITION BY customer_id
                ORDER BY order_date DESC
            ) AS rn
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

    SELECT 
        employee_name,
        department,
        salary,
        AVG(salary) OVER(
            PARTITION BY department
        ) AS department_avg_salary
    FROM employees;

| employee_name | department | salary   | department_avg_salary |
| ------------- | ---------- | -------- | --------------------- |
| George Miller | Finance    | 85000.00 | 83500.000000000000    |
| Hannah Lee    | Finance    | 82000.00 | 83500.000000000000    |
| Ethan Hunt    | HR         | 60000.00 | 59000.000000000000    |
| Fiona Green   | HR         | 58000.00 | 59000.000000000000    |
| Charlie Brown | IT         | 90000.00 | 92500.000000000000    |
| Diana Prince  | IT         | 95000.00 | 92500.000000000000    |
| Alice Johnson | Sales      | 70000.00 | 67500.000000000000    |
| Bob Smith     | Sales      | 65000.00 | 67500.000000000000    |

---
**Query #17**

    SELECT *
    FROM (
        SELECT 
            employee_name,
            department,
            salary,
            AVG(salary) OVER(
                PARTITION BY department
            ) AS avg_salary
        FROM employees
    ) t
    WHERE salary > avg_salary;

| employee_name | department | salary   | avg_salary         |
| ------------- | ---------- | -------- | ------------------ |
| George Miller | Finance    | 85000.00 | 83500.000000000000 |
| Ethan Hunt    | HR         | 60000.00 | 59000.000000000000 |
| Diana Prince  | IT         | 95000.00 | 92500.000000000000 |
| Alice Johnson | Sales      | 70000.00 | 67500.000000000000 |

---
**Query #18**

    SELECT 
        employee_name,
        department,
        salary,
        SUM(salary) OVER(
            PARTITION BY department
        ) AS department_payroll
    FROM employees;

| employee_name | department | salary   | department_payroll |
| ------------- | ---------- | -------- | ------------------ |
| George Miller | Finance    | 85000.00 | 167000.00          |
| Hannah Lee    | Finance    | 82000.00 | 167000.00          |
| Ethan Hunt    | HR         | 60000.00 | 118000.00          |
| Fiona Green   | HR         | 58000.00 | 118000.00          |
| Charlie Brown | IT         | 90000.00 | 185000.00          |
| Diana Prince  | IT         | 95000.00 | 185000.00          |
| Alice Johnson | Sales      | 70000.00 | 135000.00          |
| Bob Smith     | Sales      | 65000.00 | 135000.00          |

---
**Query #19**

    SELECT 
        employee_name,
        department,
        salary,
        ROUND(
            salary * 100.0 /
            SUM(salary) OVER(PARTITION BY department),
            2
        ) AS contribution_percentage
    FROM employees;

| employee_name | department | salary   | contribution_percentage |
| ------------- | ---------- | -------- | ----------------------- |
| George Miller | Finance    | 85000.00 | 50.90                   |
| Hannah Lee    | Finance    | 82000.00 | 49.10                   |
| Ethan Hunt    | HR         | 60000.00 | 50.85                   |
| Fiona Green   | HR         | 58000.00 | 49.15                   |
| Charlie Brown | IT         | 90000.00 | 48.65                   |
| Diana Prince  | IT         | 95000.00 | 51.35                   |
| Alice Johnson | Sales      | 70000.00 | 51.85                   |
| Bob Smith     | Sales      | 65000.00 | 48.15                   |

---
**Query #20**

    SELECT 
        employee_name,
        department,
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
        SELECT 
            employee_id,
            SUM(total_amount) AS total_sales
        FROM orders
        GROUP BY employee_id
    )
    SELECT * FROM employee_sales;

| employee_id | total_sales |
| ----------- | ----------- |
| 3           | 1400.00     |
| 4           | 2050.00     |
| 2           | 3150.00     |
| 1           | 4350.00     |

---
**Query #22**

    WITH employee_sales AS (
        SELECT 
            employee_id,
            SUM(total_amount) AS total_sales
        FROM orders
        GROUP BY employee_id
    )
    SELECT *
    FROM employee_sales
    WHERE total_sales >
    (
        SELECT AVG(total_sales)
        FROM employee_sales
    );

| employee_id | total_sales |
| ----------- | ----------- |
| 2           | 3150.00     |
| 1           | 4350.00     |

---
**Query #23**

    WITH employee_sales AS (
        SELECT 
            employee_id,
            SUM(total_amount) AS total_sales
        FROM orders
        GROUP BY employee_id
    )
    SELECT *
    FROM employee_sales
    WHERE total_sales >
    (
        SELECT AVG(total_sales)
        FROM employee_sales
    );

| employee_id | total_sales |
| ----------- | ----------- |
| 2           | 3150.00     |
| 1           | 4350.00     |

---
**Query #24**

    WITH customer_spending AS (
        SELECT 
            customer_id,
            SUM(total_amount) AS total_spent
        FROM orders
        GROUP BY customer_id
    ),
    customer_rank AS (
        SELECT *,
               RANK() OVER(ORDER BY total_spent DESC) AS ranking
        FROM customer_spending
    )
    SELECT * FROM customer_rank;

| customer_id | total_spent | ranking |
| ----------- | ----------- | ------- |
| 1           | 3550.00     | 1       |
| 5           | 3500.00     | 2       |
| 4           | 1850.00     | 3       |
| 2           | 1350.00     | 4       |
| 3           | 700.00      | 5       |

---
**Query #25**

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
**Query #26**

    WITH RECURSIVE employee_hierarchy AS (
        SELECT 
            employee_id,
            employee_name,
            manager_id
        FROM employees
        WHERE manager_id IS NULL
    
        UNION ALL
    
        SELECT 
            e.employee_id,
            e.employee_name,
            e.manager_id
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
**Query #27**

    WITH avg_orders AS (
        SELECT AVG(total_amount) AS avg_amount
        FROM orders
    )
    SELECT *
    FROM orders
    WHERE total_amount >
    (
        SELECT avg_amount
        FROM avg_orders
    );

| order_id | customer_id | employee_id | order_date | total_amount |
| -------- | ----------- | ----------- | ---------- | ------------ |
| 103      | 1           | 1           | 2024-01-15 | 1200.00      |
| 106      | 5           | 2           | 2024-01-25 | 1500.00      |
| 108      | 1           | 3           | 2024-02-05 | 1100.00      |
| 110      | 4           | 2           | 2024-02-15 | 950.00       |
| 111      | 5           | 1           | 2024-02-20 | 2000.00      |

---
**Query #28**

    WITH customer_totals AS (
        SELECT 
            customer_id,
            SUM(total_amount) AS total_spending
        FROM orders
        GROUP BY customer_id
    )
    SELECT *,
           RANK() OVER(
               ORDER BY total_spending DESC
           ) AS customer_rank
    FROM customer_totals;

| customer_id | total_spending | customer_rank |
| ----------- | -------------- | ------------- |
| 1           | 3550.00        | 1             |
| 5           | 3500.00        | 2             |
| 4           | 1850.00        | 3             |
| 2           | 1350.00        | 4             |
| 3           | 700.00         | 5             |

---
**Query #29**

    SELECT *
    FROM (
        SELECT 
            employee_name,
            department,
            salary,
            DENSE_RANK() OVER(
                PARTITION BY department
                ORDER BY salary DESC
            ) AS rnk
        FROM employees
    ) t
    WHERE rnk = 2;

| employee_name | department | salary   | rnk |
| ------------- | ---------- | -------- | --- |
| Hannah Lee    | Finance    | 82000.00 | 2   |
| Fiona Green   | HR         | 58000.00 | 2   |
| Charlie Brown | IT         | 90000.00 | 2   |
| Bob Smith     | Sales      | 65000.00 | 2   |

---
**Query #30**

    SELECT 
        employee_name,
        department,
        salary,
        MAX(salary) OVER(
            PARTITION BY department
        ) - salary AS difference
    FROM employees;

| employee_name | department | salary   | difference |
| ------------- | ---------- | -------- | ---------- |
| George Miller | Finance    | 85000.00 | 0.00       |
| Hannah Lee    | Finance    | 82000.00 | 3000.00    |
| Ethan Hunt    | HR         | 60000.00 | 0.00       |
| Fiona Green   | HR         | 58000.00 | 2000.00    |
| Charlie Brown | IT         | 90000.00 | 5000.00    |
| Diana Prince  | IT         | 95000.00 | 0.00       |
| Alice Johnson | Sales      | 70000.00 | 0.00       |
| Bob Smith     | Sales      | 65000.00 | 5000.00    |

---
**Query #31**

    WITH employee_sales AS (
        SELECT 
            e.employee_id,
            e.employee_name,
            e.department,
            SUM(o.total_amount) AS total_sales
        FROM employees e
        LEFT JOIN orders o
        ON e.employee_id = o.employee_id
        GROUP BY 
            e.employee_id,
            e.employee_name,
            e.department
    ),
    ranked_employees AS (
        SELECT *,
               RANK() OVER(
                   PARTITION BY department
                   ORDER BY total_sales DESC
               ) AS dept_rank
        FROM employee_sales
    )
    SELECT *
    FROM ranked_employees
    WHERE dept_rank = 1;

| employee_id | employee_name | department | total_sales | dept_rank |
| ----------- | ------------- | ---------- | ----------- | --------- |
| 8           | Hannah Lee    | Finance    |             | 1         |
| 7           | George Miller | Finance    |             | 1         |
| 5           | Ethan Hunt    | HR         |             | 1         |
| 6           | Fiona Green   | HR         |             | 1         |
| 4           | Diana Prince  | IT         | 2050.00     | 1         |
| 1           | Alice Johnson | Sales      | 4350.00     | 1         |

---

[View on DB Fiddle](https://www.db-fiddle.com/)