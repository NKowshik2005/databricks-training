
QUESTION 1 SOLUTIONS

 Q1: Convert emp_name to proper case
SELECT emp_name,
       CONCAT(UPPER(LEFT(emp_name,1)),
       LOWER(SUBSTRING(emp_name,2))) AS proper_name
FROM employee_payments;

 Q2: Calculate total income
SELECT emp_name,
       base_salary + IFNULL(bonus,0) AS total_income
FROM employee_payments;

 Q3: Round total income
SELECT emp_name,
       ROUND(base_salary + IFNULL(bonus,0),0) AS rounded_income
FROM employee_payments;

 Q4: Extract joining year
SELECT emp_name,
       YEAR(joining_date) AS joining_year
FROM employee_payments;

 Q5: Employee classification
SELECT emp_name,
       joining_date,
       CASE
           WHEN TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) > 7 THEN 'Senior'
           WHEN TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) BETWEEN 4 AND 7 THEN 'Mid'
           ELSE 'Junior'
       END AS employee_level
FROM employee_payments;

QUESTION 2 SOLUTIONS

 Q6: Convert customer name to uppercase
SELECT UPPER(customer_name) AS customer_name
FROM orders_delivery;

 Q7: Calculate delivery days
SELECT order_id,
       DATEDIFF(delivery_date, order_date) AS delivery_days
FROM orders_delivery;

 Q8: Replace NULL delivery date with today
SELECT order_id,
       IFNULL(delivery_date, CURDATE()) AS updated_delivery_date
FROM orders_delivery;

 Q9: Truncate order amount
SELECT order_id,
       TRUNCATE(order_amount,1) AS truncated_amount
FROM orders_delivery;

 Q10: Delivery status classification
SELECT order_id,
       CASE
           WHEN delivery_date IS NULL THEN 'Pending'
           WHEN DATEDIFF(delivery_date, order_date) = 0 THEN 'Same-day'
           WHEN DATEDIFF(delivery_date, order_date) > 3 THEN 'Delayed'
           ELSE 'On-Time'
       END AS delivery_status
FROM orders_delivery;

QUESTION 3 SOLUTIONS

 Q11: Convert customer name to proper case
SELECT cust_name,
       CONCAT(UPPER(LEFT(cust_name,1)),
       LOWER(SUBSTRING(cust_name,2))) AS proper_name
FROM customer_spending;

 Q12: Extract month name
SELECT cust_name,
       MONTHNAME(purchase_date) AS purchase_month
FROM customer_spending;

 Q13: Round purchase amount
SELECT cust_name,
       ROUND(purchase_amount,0) AS rounded_amount
FROM customer_spending;

 Q14: Absolute purchase amount
SELECT cust_name,
       ABS(purchase_amount) AS absolute_amount
FROM customer_spending;

 Q15 : Spending classification
SELECT cust_name,
       CASE
           WHEN purchase_amount > 15000 THEN 'High Spender'
           WHEN purchase_amount BETWEEN 8000 AND 15000 THEN 'Medium Spender'
           ELSE 'Low Spender'
       END AS spending_category
FROM customer_spending;

QUESTION 4 SOLUTIONS

 Q16: Extract email domain
SELECT user_email,
       SUBSTRING_INDEX(user_email,'@',-1) AS email_domain
FROM subscriptions;

 Q17: Calculate subscription duration in months
SELECT user_email,
       TIMESTAMPDIFF(MONTH,start_date,end_date) AS duration_months
FROM subscriptions;

 Q18: Format subscription fee
SELECT user_email,
       FORMAT(subscription_fee,2) AS formatted_fee
FROM subscriptions;

 Q19: Remaining days from today
SELECT user_email,
       DATEDIFF(end_date,CURDATE()) AS remaining_days
FROM subscriptions;

 Q20: Subscription status classification
SELECT user_email,
       CASE
           WHEN end_date >= CURDATE() THEN 'Active'
           WHEN DATEDIFF(end_date,CURDATE()) BETWEEN -30 AND -1 THEN 'Expiring Soon'
           ELSE 'Expired'
       END AS subscription_status
FROM subscriptions;