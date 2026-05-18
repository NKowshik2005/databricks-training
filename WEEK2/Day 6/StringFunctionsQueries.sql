
STRING FUNCTIONS SOLUTIONS

-- Q1
SELECT full_name,
       LENGTH(full_name) AS name_length
FROM employees;

-- Q2
SELECT department,
       UPPER(department) AS upper_department
FROM employees;

-- Q3
SELECT city,
       LOWER(city) AS lower_city
FROM employees;

-- Q4
SELECT full_name,
       TRIM(full_name) AS trimmed_name
FROM employees;

-- Q5
SELECT CONCAT(full_name, ' - ', department) AS employee_details
FROM employees;

-- Q6
SELECT CONCAT_WS(' | ', emp_id, full_name, city) AS employee_info
FROM employees;

-- Q7
SELECT email,
       SUBSTRING(email, 1, 7) AS extracted_email
FROM employees;

-- Q8
SELECT full_name,
       LEFT(full_name, 4) AS first_four_chars
FROM employees;

-- Q9
SELECT city,
       RIGHT(city, 3) AS last_three_chars
FROM employees;

-- Q10
SELECT email,
       INSTR(email, '@') AS at_position
FROM employees;

-- Q11
SELECT email,
       LOCATE('.', email) AS dot_position
FROM employees;

-- Q12
SELECT department,
       REPLACE(department, 'Data', 'Big Data') AS updated_department
FROM employees;

-- Q13
SELECT full_name,
       REVERSE(full_name) AS reversed_name
FROM employees;

-- Q14
SELECT emp_id,
       LPAD(emp_id, 5, '0') AS padded_emp_id
FROM employees;

-- Q15
SELECT city,
       RPAD(city, 15, '*') AS padded_city
FROM employees;

-- Q16
SELECT city,
       TRIM(REPLACE(city, ' ', '')) AS cleaned_city
FROM employees;

-- Q17
SELECT full_name,
       IFNULL(remarks, 'No remarks') AS remarks_status
FROM employees;

-- Q18
SELECT full_name,
       COALESCE(remarks, 'N/A') AS remarks_value
FROM employees;

-- Q19
SELECT FIND_IN_SET('Analytics', 'Data,Analytics,AI') AS analytics_position;

-- Q20
SELECT CONCAT('Employee: ', TRIM(full_name),
              ', Department: ', department,
              ', City: ', TRIM(city)) AS employee_summary
FROM employees;