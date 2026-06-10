**Schema (MySQL v9)**

    CREATE TABLE Employees (
        emp_id INT,
        emp_name VARCHAR(50),
        department VARCHAR(50),
        salary INT,
        city VARCHAR(50),
        experience INT
    );
    
    INSERT INTO Employees VALUES
    (101, 'Rahul', 'IT', 75000, 'Hyderabad', 5),
    (102, 'Anjali', 'HR', 45000, 'Chennai', 3),
    (103, 'Kiran', 'IT', 82000, 'Bangalore', 6),
    (104, 'Sneha', 'Finance', 67000, 'Hyderabad', 4),
    (105, 'Aman', 'HR', 39000, 'Pune', 2),
    (106, 'Ravi', 'Finance', 91000, 'Mumbai', 8),
    (107, 'Divya', 'IT', 55000, 'Chennai', 3),
    (108, 'Meena', 'Sales', 48000, 'Bangalore', 2),
    (109, 'Arjun', 'Sales', 61000, 'Hyderabad', 5),
    (110, 'Pooja', 'IT', 73000, 'Mumbai', 4),
    (111, 'Vikas', 'HR', 52000, 'Pune', 3),
    (112, 'Nisha', 'Finance', 88000, 'Bangalore', 7),
    (113, 'Tarun', 'Sales', 46000, 'Chennai', 2),
    (114, 'Kavya', 'IT', 97000, 'Hyderabad', 9),
    (115, 'Manoj', 'Finance', 58000, 'Mumbai', 4);

---

**Query #1**

    SELECT * 
    FROM Employees;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 105    | Aman     | HR         | 39000  | Pune      | 2          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 111    | Vikas    | HR         | 52000  | Pune      | 3          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #2**

    SELECT emp_name, salary
    FROM Employees;

| emp_name | salary |
| -------- | ------ |
| Rahul    | 75000  |
| Anjali   | 45000  |
| Kiran    | 82000  |
| Sneha    | 67000  |
| Aman     | 39000  |
| Ravi     | 91000  |
| Divya    | 55000  |
| Meena    | 48000  |
| Arjun    | 61000  |
| Pooja    | 73000  |
| Vikas    | 52000  |
| Nisha    | 88000  |
| Tarun    | 46000  |
| Kavya    | 97000  |
| Manoj    | 58000  |

---
**Query #3**

    SELECT emp_name, department
    FROM Employees;

| emp_name | department |
| -------- | ---------- |
| Rahul    | IT         |
| Anjali   | HR         |
| Kiran    | IT         |
| Sneha    | Finance    |
| Aman     | HR         |
| Ravi     | Finance    |
| Divya    | IT         |
| Meena    | Sales      |
| Arjun    | Sales      |
| Pooja    | IT         |
| Vikas    | HR         |
| Nisha    | Finance    |
| Tarun    | Sales      |
| Kavya    | IT         |
| Manoj    | Finance    |

---
**Query #4**

    SELECT *
    FROM Employees
    WHERE department = 'IT';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #5**

    SELECT emp_name, experience
    FROM Employees;

| emp_name | experience |
| -------- | ---------- |
| Rahul    | 5          |
| Anjali   | 3          |
| Kiran    | 6          |
| Sneha    | 4          |
| Aman     | 2          |
| Ravi     | 8          |
| Divya    | 3          |
| Meena    | 2          |
| Arjun    | 5          |
| Pooja    | 4          |
| Vikas    | 3          |
| Nisha    | 7          |
| Tarun    | 2          |
| Kavya    | 9          |
| Manoj    | 4          |

---
**Query #6**

    SELECT *
    FROM Employees
    WHERE salary > 70000;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #7**

    SELECT *
    FROM Employees
    WHERE city = 'Hyderabad';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #8**

    SELECT *
    FROM Employees
    WHERE experience < 4;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |
| 105    | Aman     | HR         | 39000  | Pune      | 2          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 111    | Vikas    | HR         | 52000  | Pune      | 3          |
| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |

---
**Query #9**

    SELECT *
    FROM Employees
    WHERE department = 'finance';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #10**

    SELECT *
    FROM Employees
    WHERE salary = 52000;

| emp_id | emp_name | department | salary | city | experience |
| ------ | -------- | ---------- | ------ | ---- | ---------- |
| 111    | Vikas    | HR         | 52000  | Pune | 3          |

---
**Query #11**

    SELECT department, SUM(salary) AS total_salary
    FROM Employees
    GROUP BY department;

| department | total_salary |
| ---------- | ------------ |
| IT         | 382000       |
| HR         | 136000       |
| Finance    | 304000       |
| Sales      | 155000       |

---
**Query #12**

    SELECT department, AVG(salary) AS average_salary
    FROM Employees
    GROUP BY department;

| department | average_salary |
| ---------- | -------------- |
| IT         | 76400.0        |
| HR         | 45333.3333     |
| Finance    | 76000.0        |
| Sales      | 51666.6667     |

---
**Query #13**

    SELECT city, COUNT(*) AS employee_count
    FROM Employees
    GROUP BY city;

| city      | employee_count |
| --------- | -------------- |
| Hyderabad | 4              |
| Chennai   | 3              |
| Bangalore | 3              |
| Pune      | 2              |
| Mumbai    | 3              |

---
**Query #14**

    SELECT department, MAX(salary) AS maximum_salary
    FROM Employees
    GROUP BY department;

| department | maximum_salary |
| ---------- | -------------- |
| IT         | 97000          |
| HR         | 52000          |
| Finance    | 91000          |
| Sales      | 61000          |

---
**Query #15**

    SELECT department, MIN(experience) AS minimum_experience
    FROM Employees
    GROUP BY department;

| department | minimum_experience |
| ---------- | ------------------ |
| IT         | 3                  |
| HR         | 2                  |
| Finance    | 4                  |
| Sales      | 2                  |

---
**Query #16**

    SELECT department, COUNT(*) AS employee_count
    FROM Employees
    GROUP BY department
    HAVING COUNT(*) > 3;

| department | employee_count |
| ---------- | -------------- |
| IT         | 5              |
| Finance    | 4              |

---
**Query #17**

    SELECT department, AVG(salary) AS average_salary
    FROM Employees
    GROUP BY department
    HAVING AVG(salary) > 60000;

| department | average_salary |
| ---------- | -------------- |
| IT         | 76400.0        |
| Finance    | 76000.0        |

---
**Query #18**

    SELECT city, COUNT(*) AS employee_count
    FROM Employees
    GROUP BY city
    HAVING COUNT(*) > 2;

| city      | employee_count |
| --------- | -------------- |
| Hyderabad | 4              |
| Chennai   | 3              |
| Bangalore | 3              |
| Mumbai    | 3              |

---
**Query #19**

    SELECT department, SUM(salary) AS total_salary
    FROM Employees
    GROUP BY department
    HAVING SUM(salary) > 200000;

| department | total_salary |
| ---------- | ------------ |
| IT         | 382000       |
| Finance    | 304000       |

---
**Query #20**

    SELECT department, MAX(salary) AS maximum_salary
    FROM Employees
    GROUP BY department
    HAVING MAX(salary) > 90000;

| department | maximum_salary |
| ---------- | -------------- |
| IT         | 97000          |
| Finance    | 91000          |

---
**Query #21**

    SELECT *
    FROM Employees
    ORDER BY salary DESC
    LIMIT 5;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |

---
**Query #22**

    SELECT *
    FROM Employees
    ORDER BY experience DESC
    LIMIT 3;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

---
**Query #23**

    SELECT *
    FROM Employees
    WHERE department = 'Finance'
    ORDER BY salary DESC
    LIMIT 2;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

---
**Query #24**

    SELECT *
    FROM Employees
    WHERE city = 'Hyderabad'
    LIMIT 4;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #25**

    SELECT *
    FROM Employees
    ORDER BY salary DESC
    LIMIT 1;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #26**

    SELECT DISTINCT department
    FROM Employees;

| department |
| ---------- |
| IT         |
| HR         |
| Finance    |
| Sales      |

---
**Query #27**

    SELECT DISTINCT city
    FROM Employees;

| city      |
| --------- |
| Hyderabad |
| Chennai   |
| Bangalore |
| Pune      |
| Mumbai    |

---
**Query #28**

    SELECT DISTINCT salary
    FROM Employees;

| salary |
| ------ |
| 75000  |
| 45000  |
| 82000  |
| 67000  |
| 39000  |
| 91000  |
| 55000  |
| 48000  |
| 61000  |
| 73000  |
| 52000  |
| 88000  |
| 46000  |
| 97000  |
| 58000  |

---
**Query #29**

    SELECT DISTINCT department, city
    FROM Employees;

| department | city      |
| ---------- | --------- |
| IT         | Hyderabad |
| HR         | Chennai   |
| IT         | Bangalore |
| Finance    | Hyderabad |
| HR         | Pune      |
| Finance    | Mumbai    |
| IT         | Chennai   |
| Sales      | Bangalore |
| Sales      | Hyderabad |
| IT         | Mumbai    |
| Finance    | Bangalore |
| Sales      | Chennai   |

---
**Query #30**

    SELECT DISTINCT experience
    FROM Employees;

| experience |
| ---------- |
| 5          |
| 3          |
| 6          |
| 4          |
| 2          |
| 8          |
| 7          |
| 9          |

---
**Query #31**

    SELECT *
    FROM Employees
    WHERE salary >= 80000;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #32**

    SELECT *
    FROM Employees
    WHERE experience <= 3;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |
| 105    | Aman     | HR         | 39000  | Pune      | 2          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 111    | Vikas    | HR         | 52000  | Pune      | 3          |
| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |

---
**Query #33**

    SELECT *
    FROM Employees
    WHERE salary <> 45000;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 105    | Aman     | HR         | 39000  | Pune      | 2          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 111    | Vikas    | HR         | 52000  | Pune      | 3          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #34**

    SELECT *
    FROM Employees
    WHERE salary < 50000;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |
| 105    | Aman     | HR         | 39000  | Pune      | 2          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |

---
**Query #35**

    SELECT *
    FROM Employees
    WHERE experience > 5;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #36**

    SELECT *
    FROM Employees
    WHERE department = 'IT'
    AND salary > 70000;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #37**

    SELECT *
    FROM Employees
    WHERE city = 'Hyderabad'
    OR city = 'Bangalore';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #38**

    SELECT *
    FROM Employees
    WHERE department = 'HR'
    AND experience < 3;

| emp_id | emp_name | department | salary | city | experience |
| ------ | -------- | ---------- | ------ | ---- | ---------- |
| 105    | Aman     | HR         | 39000  | Pune | 2          |

---
**Query #39**

    SELECT *
    FROM Employees
    WHERE salary > 60000
    OR experience > 6;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #40**

    SELECT *
    FROM Employees
    WHERE department != 'Sales';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 105    | Aman     | HR         | 39000  | Pune      | 2          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 111    | Vikas    | HR         | 52000  | Pune      | 3          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #41**

    SELECT *
    FROM Employees
    WHERE city IN ('Hyderabad', 'Mumbai');

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #42**

    SELECT *
    FROM Employees
    WHERE department IN ('IT', 'Finance');

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #43**

    SELECT *
    FROM Employees
    WHERE city NOT IN ('Chennai', 'Pune');

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #44**

    SELECT *
    FROM Employees
    WHERE salary IN (45000, 75000, 91000);

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

---
**Query #45**

    SELECT *
    FROM Employees
    WHERE department NOT IN ('HR', 'Sales');

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #46**

    SELECT *
    FROM Employees
    WHERE salary BETWEEN 50000 AND 80000;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 111    | Vikas    | HR         | 52000  | Pune      | 3          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #47**

    SELECT *
    FROM Employees
    WHERE experience BETWEEN 3 AND 6;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 111    | Vikas    | HR         | 52000  | Pune      | 3          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #48**

    SELECT *
    FROM Employees
    WHERE emp_id BETWEEN 105 AND 112;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 105    | Aman     | HR         | 39000  | Pune      | 2          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 111    | Vikas    | HR         | 52000  | Pune      | 3          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

---
**Query #49**

    SELECT *
    FROM Employees
    WHERE salary NOT BETWEEN 40000 AND 60000;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 105    | Aman     | HR         | 39000  | Pune      | 2          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #50**

    SELECT *
    FROM Employees
    WHERE experience BETWEEN 2 AND 4;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 105    | Aman     | HR         | 39000  | Pune      | 2          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 111    | Vikas    | HR         | 52000  | Pune      | 3          |
| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #51**

    SELECT *
    FROM Employees
    WHERE emp_name LIKE 'R%';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

---
**Query #52**

    SELECT *
    FROM Employees
    WHERE emp_name LIKE '%a';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #53**

    SELECT *
    FROM Employees
    WHERE emp_name LIKE '%v%';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 111    | Vikas    | HR         | 52000  | Pune      | 3          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #54**

    SELECT *
    FROM Employees
    WHERE city LIKE 'B%';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

---
**Query #55**

    SELECT *
    FROM Employees
    WHERE department LIKE '%s';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |

---

[View on DB Fiddle](https://www.db-fiddle.com/)