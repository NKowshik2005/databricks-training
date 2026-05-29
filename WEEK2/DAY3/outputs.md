
---

**Query #1**

    
 NUMBER MANIPULATION FUNCTIONS SOLUTIONS
    
    
    -- Q1
    SELECT ABS(-100) AS absolute_value;

| absolute_value |
| -------------- |
| 100            |

---
**Query #2**

    -- Q2
    SELECT emp_name,
           ROUND(base_salary,0) AS rounded_salary
    FROM employee_salary;

| emp_name | rounded_salary |
| -------- | -------------- |
| Karthik  | 75001          |
| Veena    | 65000          |
| Ravi     | 85001          |
| Anil     | 70000          |
| Suresh   | 60001          |

---
**Query #3**

    -- Q3
    SELECT emp_name,
           ROUND(base_salary,2) AS rounded_salary
    FROM employee_salary;

| emp_name | rounded_salary |
| -------- | -------------- |
| Karthik  | 75000.75       |
| Veena    | 65000.4        |
| Ravi     | 85000.9        |
| Anil     | 70000.1        |
| Suresh   | 60000.55       |

---
**Query #4**

    -- Q4
    SELECT emp_name,
           CEIL(base_salary) AS ceil_salary
    FROM employee_salary;

| emp_name | ceil_salary |
| -------- | ----------- |
| Karthik  | 75001       |
| Veena    | 65001       |
| Ravi     | 85001       |
| Anil     | 70001       |
| Suresh   | 60001       |

---
**Query #5**

    -- Q5
    SELECT emp_name,
           FLOOR(base_salary) AS floor_salary
    FROM employee_salary;

| emp_name | floor_salary |
| -------- | ------------ |
| Karthik  | 75000        |
| Veena    | 65000        |
| Ravi     | 85000        |
| Anil     | 70000        |
| Suresh   | 60000        |

---
**Query #6**

    -- Q6
    SELECT emp_name,
           TRUNCATE(base_salary,1) AS truncated_salary
    FROM employee_salary;

| emp_name | truncated_salary |
| -------- | ---------------- |
| Karthik  | 75000.7          |
| Veena    | 65000.4          |
| Ravi     | 85000.9          |
| Anil     | 70000.1          |
| Suresh   | 60000.5          |

---
**Query #7**

    -- Q7
    SELECT emp_name,
           MOD(experience_years,2) AS mod_result
    FROM employee_salary;

| emp_name | mod_result |
| -------- | ---------- |
| Karthik  | 0          |
| Veena    | 0          |
| Ravi     | 0          |
| Anil     | 1          |
| Suresh   | 1          |

---
**Query #8**

    -- Q8
    SELECT POWER(2,3) AS power_result;

| power_result |
| ------------ |
| 8            |

---
**Query #9**

    -- Q9
    SELECT POW(5,2) AS pow_result;

| pow_result |
| ---------- |
| 25         |

---
**Query #10**

    -- Q10
    SELECT SQRT(64) AS square_root;

| square_root |
| ----------- |
| 8           |

---
**Query #11**

    -- Q11
    SELECT emp_name,
           SIGN(base_salary) AS sign_value
    FROM employee_salary;

| emp_name | sign_value |
| -------- | ---------- |
| Karthik  | 1          |
| Veena    | 1          |
| Ravi     | 1          |
| Anil     | 1          |
| Suresh   | 1          |

---
**Query #12**

    -- Q12
    SELECT RAND() AS random_value;

| random_value        |
| ------------------- |
| 0.42998957115224523 |

---
**Query #13**

    -- Q13
    SELECT emp_name,
           FORMAT(base_salary,2) AS formatted_salary
    FROM employee_salary;

| emp_name | formatted_salary |
| -------- | ---------------- |
| Karthik  | 75,000.75        |
| Veena    | 65,000.40        |
| Ravi     | 85,000.90        |
| Anil     | 70,000.10        |
| Suresh   | 60,000.55        |

---
**Query #14**

    -- Q14
    SELECT emp_name,
           GREATEST(base_salary,IFNULL(bonus,0)) AS greatest_value
    FROM employee_salary;

| emp_name | greatest_value |
| -------- | -------------- |
| Karthik  | 75000.75       |
| Veena    | 65000.4        |
| Ravi     | 85000.9        |
| Anil     | 70000.1        |
| Suresh   | 60000.55       |

---
**Query #15**

    -- Q15
    SELECT emp_name,
           LEAST(base_salary,IFNULL(bonus,0)) AS least_value
    FROM employee_salary;

| emp_name | least_value |
| -------- | ----------- |
| Karthik  | 5000.5      |
| Veena    | 4000.25     |
| Ravi     | 6000.75     |
| Anil     | 0.0         |
| Suresh   | 3000.3      |

---
**Query #16**

    -- Q16
    SELECT emp_name,
           ROUND(base_salary + IFNULL(bonus,0),0) AS total_salary
    FROM employee_salary;

| emp_name | total_salary |
| -------- | ------------ |
| Karthik  | 80001        |
| Veena    | 69001        |
| Ravi     | 91002        |
| Anil     | 70000        |
| Suresh   | 63001        |

---
**Query #17**

    -- Q17
    SELECT emp_name,
           ROUND(base_salary - ((base_salary * tax_percent)/100),2) AS salary_after_tax
    FROM employee_salary;

| emp_name | salary_after_tax |
| -------- | ---------------- |
| Karthik  | 67500.68         |
| Veena    | 59475.37         |
| Ravi     | 74800.79         |
| Anil     | 63700.09         |
| Suresh   | 55500.51         |

---
**Query #18**

    -- Q18
    SELECT emp_name,
           CEIL(IFNULL(bonus,0)) AS ceil_bonus
    FROM employee_salary;

| emp_name | ceil_bonus |
| -------- | ---------- |
| Karthik  | 5001       |
| Veena    | 4001       |
| Ravi     | 6001       |
| Anil     | 0          |
| Suresh   | 3001       |

---
**Query #19**

    -- Q19
    SELECT emp_name,
           FLOOR(IFNULL(bonus,0)) AS floor_bonus
    FROM employee_salary;

| emp_name | floor_bonus |
| -------- | ----------- |
| Karthik  | 5000        |
| Veena    | 4000        |
| Ravi     | 6000        |
| Anil     | 0           |
| Suresh   | 3000        |

---
**Query #20**

    -- Q20
    SELECT emp_name,
           ROUND(base_salary * POWER(1.10, experience_years),2) AS projected_salary
    FROM employee_salary;

| emp_name | projected_salary |
| -------- | ---------------- |
| Karthik  | 132868.4         |
| Veena    | 95167.09         |
| Ravi     | 182206.98        |
| Anil     | 112735.86        |
| Suresh   | 79860.73         |

---

[View on DB Fiddle](https://www.db-fiddle.com/)