 WINDOW FUNCTIONS SOLUTIONS

-- Q1
SELECT emp_name,
       salary,
       ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
FROM employees;

-- Q2
SELECT emp_name,
       department,
       salary,
       ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS row_num
FROM employees;

-- Q3
SELECT emp_name,
       join_date,
       ROW_NUMBER() OVER(ORDER BY join_date DESC) AS row_num
FROM employees;

-- Q4
SELECT emp_name,
       department,
       join_date,
       ROW_NUMBER() OVER(PARTITION BY department ORDER BY join_date ASC) AS row_num
FROM employees;

-- Q5
SELECT order_id,
       order_date,
       ROW_NUMBER() OVER(ORDER BY order_date) AS row_num
FROM orders;

-- Q6
SELECT order_id,
       city,
       amount,
       ROW_NUMBER() OVER(PARTITION BY city ORDER BY amount DESC) AS row_num
FROM orders;

-- Q7
SELECT emp_name,
       salary,
       ROW_NUMBER() OVER(ORDER BY salary ASC) AS row_num
FROM employees;

-- Q8
SELECT emp_name,
       department,
       ROW_NUMBER() OVER(PARTITION BY department ORDER BY emp_name) AS row_num
FROM employees;

-- Q9
SELECT emp_name,
       salary,
       RANK() OVER(ORDER BY salary DESC) AS rank_num
FROM employees;

-- Q10
SELECT emp_name,
       department,
       salary,
       RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_num
FROM employees;

-- Q11
SELECT emp_name,
       join_date,
       RANK() OVER(ORDER BY join_date DESC) AS rank_num
FROM employees;

-- Q12
SELECT order_id,
       amount,
       RANK() OVER(ORDER BY amount DESC) AS rank_num
FROM orders;

-- Q13
SELECT order_id,
       city,
       amount,
       RANK() OVER(PARTITION BY city ORDER BY amount DESC) AS rank_num
FROM orders;

-- Q14
SELECT emp_name,
       department,
       salary,
       RANK() OVER(PARTITION BY department ORDER BY salary ASC) AS rank_num
FROM employees;

-- Q15
SELECT emp_name,
       RANK() OVER(ORDER BY emp_name) AS rank_num
FROM employees;

-- Q16
SELECT order_id,
       city,
       order_date,
       RANK() OVER(PARTITION BY city ORDER BY order_date) AS rank_num
FROM orders;

-- Q17
SELECT emp_name,
       salary,
       DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rank_num
FROM employees;

-- Q18
SELECT emp_name,
       department,
       salary,
       DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dense_rank_num
FROM employees;

-- Q19
SELECT emp_name,
       join_date,
       DENSE_RANK() OVER(ORDER BY join_date DESC) AS dense_rank_num
FROM employees;

-- Q20
SELECT order_id,
       amount,
       DENSE_RANK() OVER(ORDER BY amount DESC) AS dense_rank_num
FROM orders;

-- Q21
SELECT order_id,
       city,
       amount,
       DENSE_RANK() OVER(PARTITION BY city ORDER BY amount DESC) AS dense_rank_num
FROM orders;

-- Q22
SELECT emp_name,
       salary,
       DENSE_RANK() OVER(ORDER BY salary ASC) AS dense_rank_num
FROM employees;

-- Q23
SELECT emp_name,
       department,
       join_date,
       DENSE_RANK() OVER(PARTITION BY department ORDER BY join_date ASC) AS dense_rank_num
FROM employees;

-- Q24
SELECT order_id,
       order_date,
       DENSE_RANK() OVER(ORDER BY order_date) AS dense_rank_num
FROM orders;