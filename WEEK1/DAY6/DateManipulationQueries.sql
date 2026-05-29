DATE MANIPULATION SOLUTIONS

 Q1
SELECT CURDATE() AS todays_date;

 Q2
SELECT CURTIME() AS current_clock_time;

 Q3
SELECT NOW() AS current_datetime;

 Q4
SELECT order_id,
       YEAR(order_date) AS order_year
FROM orders;

 Q5
SELECT order_id,
       MONTH(order_date) AS order_month
FROM orders;

 Q6
SELECT order_id,
       DAY(order_date) AS order_day
FROM orders;

 Q7
SELECT order_id,
       EXTRACT(YEAR FROM order_date) AS extracted_year
FROM orders;

 Q8
SELECT order_id,
       MONTHNAME(order_date) AS month_name
FROM orders;

 Q9
SELECT order_id,
       DAYNAME(order_date) AS day_name
FROM orders;

 Q10
SELECT order_id,
       WEEKDAY(order_date) AS weekday_value
FROM orders;

 Q11
SELECT order_id,
       DAYOFWEEK(order_date) AS dayofweek_value
FROM orders;

 Q12
SELECT order_id,
       order_date
FROM orders
WHERE DAYNAME(order_date) IN ('Saturday', 'Sunday');

 Q13
SELECT order_id,
       order_date
FROM orders
WHERE DAYOFWEEK(order_date) BETWEEN 2 AND 6;

 Q14
SELECT order_id,
       order_date,
       DATE_ADD(order_date, INTERVAL 5 DAY) AS added_date
FROM orders;

 Q15
SELECT order_id,
       order_date,
       DATE_SUB(order_date, INTERVAL 3 DAY) AS subtracted_date
FROM orders;

 Q16
SELECT order_id,
       DATE_ADD(order_date, INTERVAL 1 MONTH) AS next_month_date
FROM orders;

 Q17
SELECT order_id,
       DATEDIFF(delivery_date, order_date) AS delivery_days
FROM orders;

 Q18
SELECT order_id,
       TIMESTAMPDIFF(MONTH, order_date, delivery_date) AS months_difference
FROM orders;

 Q19
SELECT order_id,
       LAST_DAY(order_date) AS last_day
FROM orders;

 Q20
SELECT order_id,
       DATE_SUB(order_date, INTERVAL DAY(order_date)-1 DAY) AS first_day
FROM orders;

 Q21
SELECT order_id,
       DATE_FORMAT(order_date, '%d-%m-%Y') AS formatted_date
FROM orders;

 Q22
SELECT STR_TO_DATE('15-01-2024', '%d-%m-%Y') AS converted_date;

 Q23
SELECT order_id,
       DATE_FORMAT(order_timestamp, '%d-%m-%Y %H:%i:%s') AS formatted_timestamp
FROM orders;

 Q24
SELECT *
FROM orders
WHERE MONTH(order_date) = 1;

 Q25
SELECT order_id,
       order_date,
       CASE
           WHEN MONTH(order_date) >= 4
           THEN CONCAT(YEAR(order_date), '-', YEAR(order_date)+1)
           ELSE CONCAT(YEAR(order_date)-1, '-', YEAR(order_date))
       END AS financial_year
FROM orders;

 Q26
SELECT *
FROM orders
WHERE order_date >= CURDATE() - INTERVAL 7 DAY;

 Q27
SELECT *
FROM orders
WHERE DATE(order_timestamp) = CURDATE();