
 NUMBER MANIPULATION FUNCTIONS SOLUTIONS

-- Q1
SELECT ABS(-100) AS absolute_value;

-- Q2
SELECT emp_name,
       ROUND(base_salary,0) AS rounded_salary
FROM employee_salary;

-- Q3
SELECT emp_name,
       ROUND(base_salary,2) AS rounded_salary
FROM employee_salary;

-- Q4
SELECT emp_name,
       CEIL(base_salary) AS ceil_salary
FROM employee_salary;

-- Q5
SELECT emp_name,
       FLOOR(base_salary) AS floor_salary
FROM employee_salary;

-- Q6
SELECT emp_name,
       TRUNCATE(base_salary,1) AS truncated_salary
FROM employee_salary;

-- Q7
SELECT emp_name,
       MOD(experience_years,2) AS mod_result
FROM employee_salary;

-- Q8
SELECT POWER(2,3) AS power_result;

-- Q9
SELECT POW(5,2) AS pow_result;

-- Q10
SELECT SQRT(64) AS square_root;

-- Q11
SELECT emp_name,
       SIGN(base_salary) AS sign_value
FROM employee_salary;

-- Q12
SELECT RAND() AS random_value;

-- Q13
SELECT emp_name,
       FORMAT(base_salary,2) AS formatted_salary
FROM employee_salary;

-- Q14
SELECT emp_name,
       GREATEST(base_salary,IFNULL(bonus,0)) AS greatest_value
FROM employee_salary;

-- Q15
SELECT emp_name,
       LEAST(base_salary,IFNULL(bonus,0)) AS least_value
FROM employee_salary;

-- Q16
SELECT emp_name,
       ROUND(base_salary + IFNULL(bonus,0),0) AS total_salary
FROM employee_salary;

-- Q17
SELECT emp_name,
       ROUND(base_salary - ((base_salary * tax_percent)/100),2) AS salary_after_tax
FROM employee_salary;

-- Q18
SELECT emp_name,
       CEIL(IFNULL(bonus,0)) AS ceil_bonus
FROM employee_salary;

-- Q19
SELECT emp_name,
       FLOOR(IFNULL(bonus,0)) AS floor_bonus
FROM employee_salary;

-- Q20
SELECT emp_name,
       ROUND(base_salary * POWER(1.10, experience_years),2) AS projected_salary
FROM employee_salary;