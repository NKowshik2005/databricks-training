 NULL FUNCTIONS SOLUTIONS

-- Q1
SELECT *
FROM Employees
WHERE salary IS NULL;

-- Q2
SELECT *
FROM Orders
WHERE discount IS NOT NULL;

-- Q3
SELECT *
FROM Products
WHERE category IS NULL;

-- Q4
SELECT COUNT(*) AS null_manager_count
FROM Employees
WHERE manager_id IS NULL;

-- Q5
SELECT name,
       IFNULL(salary,0) AS updated_salary
FROM Employees;

-- Q6
SELECT name,
       IFNULL(bonus,1000) AS updated_bonus
FROM Employees;

-- Q7
SELECT customer_name,
       IFNULL(amount,500) AS updated_amount
FROM Orders;

-- Q8
SELECT product_name,
       IFNULL(stock,0) AS updated_stock
FROM Products;

-- Q9
SELECT name,
       COALESCE(salary,bonus) AS employee_earnings
FROM Employees;

-- Q10
SELECT name,
       COALESCE(salary,bonus,0) AS first_available_value
FROM Employees;

-- Q11
SELECT product_name,
       COALESCE(price,1000) AS updated_price
FROM Products;

-- Q12
SELECT customer_name,
       COALESCE(amount,discount,0) AS payment_value
FROM Orders;

-- Q13
SELECT name,
       NULLIF(salary,0) AS null_salary
FROM Employees;

-- Q14
SELECT customer_name,
       NULLIF(discount,0) AS null_discount
FROM Orders;

-- Q15
SELECT order_id,
       amount / NULLIF(discount,0) AS safe_division
FROM Orders;

-- Q16
SELECT customer_name,
       NULLIF(coupon_code,'DISC10') AS updated_coupon
FROM Orders;

-- Q17
SELECT name,
       IFNULL(salary,0) + IFNULL(bonus,0) AS total_earnings
FROM Employees;

-- Q18
SELECT *
FROM Employees
WHERE salary IS NULL
AND bonus IS NULL;

-- Q19
SELECT *
FROM Products
WHERE price IS NULL
AND category IS NOT NULL;

-- Q20
SELECT *
FROM Orders
WHERE amount IS NULL
AND discount IS NULL;