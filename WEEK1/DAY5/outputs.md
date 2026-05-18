
---

**Query #1**
 
     STR DATA NUM SOLUTIONS
    
    -- Q1 : Convert emp_name to proper case
    SELECT emp_name,
           CONCAT(UPPER(LEFT(emp_name,1)),
           LOWER(SUBSTRING(emp_name,2))) AS proper_name
    FROM employee_payments;

| emp_name | proper_name |
| -------- | ----------- |
| karthik  | Karthik     |
| veena    | Veena       |
| ravi     | Ravi        |
| anil     | Anil        |
| suresh   | Suresh      |

---
**Query #2**

    -- Q2 : Calculate total income
    SELECT emp_name,
           base_salary + IFNULL(bonus,0) AS total_income
    FROM employee_payments;

| emp_name | total_income |
| -------- | ------------ |
| karthik  | 80001.25     |
| veena    | 69000.65     |
| ravi     | 91001.65     |
| anil     | 70000.1      |
| suresh   | 63000.85     |

---
**Query #3**

    -- Q3 : Round total income
    SELECT emp_name,
           ROUND(base_salary + IFNULL(bonus,0),0) AS rounded_income
    FROM employee_payments;

| emp_name | rounded_income |
| -------- | -------------- |
| karthik  | 80001          |
| veena    | 69001          |
| ravi     | 91002          |
| anil     | 70000          |
| suresh   | 63001          |

---
**Query #4**

    -- Q4 : Extract joining year
    SELECT emp_name,
           YEAR(joining_date) AS joining_year
    FROM employee_payments;

| emp_name | joining_year |
| -------- | ------------ |
| karthik  | 2019         |
| veena    | 2021         |
| ravi     | 2016         |
| anil     | 2020         |
| suresh   | 2022         |

---
**Query #5**

    -- Q5 : Employee classification
    SELECT emp_name,
           joining_date,
           CASE
               WHEN TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) > 7 THEN 'Senior'
               WHEN TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) BETWEEN 4 AND 7 THEN 'Mid'
               ELSE 'Junior'
           END AS employee_level
    FROM employee_payments;

| emp_name | joining_date | employee_level |
| -------- | ------------ | -------------- |
| karthik  | 2019-03-15   | Mid            |
| veena    | 2021-06-20   | Mid            |
| ravi     | 2016-01-10   | Senior         |
| anil     | 2020-09-01   | Mid            |
| suresh   | 2022-11-25   | Junior         |

---
**Query #6**

    -- =====================================
    -- QUESTION 2 SOLUTIONS
    -- =====================================
    
    -- Q6 : Convert customer name to uppercase
    SELECT UPPER(customer_name) AS customer_name
    FROM orders_delivery;

| customer_name |
| ------------- |
| RAJESH        |
| MEENA         |
| ARUN          |
| POOJA         |

---
**Query #7**

    -- Q7 : Calculate delivery days
    SELECT order_id,
           DATEDIFF(delivery_date, order_date) AS delivery_days
    FROM orders_delivery;

| order_id | delivery_days |
| -------- | ------------- |
| 101      | 4             |
| 102      | 0             |
| 103      | 5             |
| 104      |               |

---
**Query #8**

    -- Q8 : Replace NULL delivery date with today
    SELECT order_id,
           IFNULL(delivery_date, CURDATE()) AS updated_delivery_date
    FROM orders_delivery;

| order_id | updated_delivery_date |
| -------- | --------------------- |
| 101      | 2025-01-05            |
| 102      | 2025-01-10            |
| 103      | 2025-01-20            |
| 104      | 2026-05-17            |

---
**Query #9**

    -- Q9 : Truncate order amount
    SELECT order_id,
           TRUNCATE(order_amount,1) AS truncated_amount
    FROM orders_delivery;

| order_id | truncated_amount |
| -------- | ---------------- |
| 101      | 12500.7          |
| 102      | 8400.4           |
| 103      | 15600.9          |
| 104      | 9200.1           |

---
**Query #10**

    -- Q10 : Delivery status classification
    SELECT order_id,
           CASE
               WHEN delivery_date IS NULL THEN 'Pending'
               WHEN DATEDIFF(delivery_date, order_date) = 0 THEN 'Same-day'
               WHEN DATEDIFF(delivery_date, order_date) > 3 THEN 'Delayed'
               ELSE 'On-Time'
           END AS delivery_status
    FROM orders_delivery;

| order_id | delivery_status |
| -------- | --------------- |
| 101      | Delayed         |
| 102      | Same-day        |
| 103      | Delayed         |
| 104      | Pending         |

---
**Query #11**

    -- =====================================
    -- QUESTION 3 SOLUTIONS
    -- =====================================
    
    -- Q11 : Convert customer name to proper case
    SELECT cust_name,
           CONCAT(UPPER(LEFT(cust_name,1)),
           LOWER(SUBSTRING(cust_name,2))) AS proper_name
    FROM customer_spending;

| cust_name | proper_name |
| --------- | ----------- |
| amit      | Amit        |
| neha      | Neha        |
| rohit     | Rohit       |
| kavya     | Kavya       |

---
**Query #12**

    -- Q12 : Extract month name
    SELECT cust_name,
           MONTHNAME(purchase_date) AS purchase_month
    FROM customer_spending;

| cust_name | purchase_month |
| --------- | -------------- |
| amit      | December       |
| neha      | December       |
| rohit     | November       |
| kavya     | October        |

---
**Query #13**

    -- Q13 : Round purchase amount
    SELECT cust_name,
           ROUND(purchase_amount,0) AS rounded_amount
    FROM customer_spending;

| cust_name | rounded_amount |
| --------- | -------------- |
| amit      | 12001          |
| neha      | 8500           |
| rohit     | 15501          |
| kavya     | 6000           |

---
**Query #14**

    -- Q14 : Absolute purchase amount
    SELECT cust_name,
           ABS(purchase_amount) AS absolute_amount
    FROM customer_spending;

| cust_name | absolute_amount |
| --------- | --------------- |
| amit      | 12000.75        |
| neha      | 8500.4          |
| rohit     | 15500.9         |
| kavya     | 6000.1          |

---
**Query #15**

    -- Q15 : Spending classification
    SELECT cust_name,
           CASE
               WHEN purchase_amount > 15000 THEN 'High Spender'
               WHEN purchase_amount BETWEEN 8000 AND 15000 THEN 'Medium Spender'
               ELSE 'Low Spender'
           END AS spending_category
    FROM customer_spending;

| cust_name | spending_category |
| --------- | ----------------- |
| amit      | Medium Spender    |
| neha      | Medium Spender    |
| rohit     | High Spender      |
| kavya     | Low Spender       |

---
**Query #16**

    -- =====================================
    -- QUESTION 4 SOLUTIONS
    -- =====================================
    
    -- Q16 : Extract email domain
    SELECT user_email,
           SUBSTRING_INDEX(user_email,'@',-1) AS email_domain
    FROM subscriptions;

| user_email        | email_domain |
| ----------------- | ------------ |
| karthik@gmail.com | gmail.com    |
| veena@yahoo.com   | yahoo.com    |
| ravi@hotmail.com  | hotmail.com  |

---
**Query #17**

    -- Q17 : Calculate subscription duration in months
    SELECT user_email,
           TIMESTAMPDIFF(MONTH,start_date,end_date) AS duration_months
    FROM subscriptions;

| user_email        | duration_months |
| ----------------- | --------------- |
| karthik@gmail.com | 12              |
| veena@yahoo.com   | 6               |
| ravi@hotmail.com  | 12              |

---
**Query #18**

    -- Q18 : Format subscription fee
    SELECT user_email,
           FORMAT(subscription_fee,2) AS formatted_fee
    FROM subscriptions;

| user_email        | formatted_fee |
| ----------------- | ------------- |
| karthik@gmail.com | 12,000.50     |
| veena@yahoo.com   | 8,500.75      |
| ravi@hotmail.com  | 15,000.90     |

---
**Query #19**

    -- Q19 : Remaining days from today
    SELECT user_email,
           DATEDIFF(end_date,CURDATE()) AS remaining_days
    FROM subscriptions;

| user_email        | remaining_days |
| ----------------- | -------------- |
| karthik@gmail.com | -501           |
| veena@yahoo.com   | -518           |
| ravi@hotmail.com  | -807           |

---
**Query #20**

    -- Q20 : Subscription status classification
    SELECT user_email,
           CASE
               WHEN end_date >= CURDATE() THEN 'Active'
               WHEN DATEDIFF(end_date,CURDATE()) BETWEEN -30 AND -1 THEN 'Expiring Soon'
               ELSE 'Expired'
           END AS subscription_status
    FROM subscriptions;

| user_email        | subscription_status |
| ----------------- | ------------------- |
| karthik@gmail.com | Expired             |
| veena@yahoo.com   | Expired             |
| ravi@hotmail.com  | Expired             |

---

[View on DB Fiddle](https://www.db-fiddle.com/)