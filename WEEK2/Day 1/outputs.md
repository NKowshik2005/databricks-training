
---

**Query #1**

    
 JOINS SOLUTIONS
   
    
    -- Q1
    SELECT e.emp_name AS employee_name,
           m.emp_name AS manager_name
    FROM employees e
    LEFT JOIN employees m
    ON e.manager_id = m.emp_id;

| employee_name | manager_name |
| ------------- | ------------ |
| Karthik       |              |
| Ajay          | Karthik      |
| Vijay         | Karthik      |
| Vinay         | Ajay         |
| Meena         | Vijay        |
| Veer          |              |
| Keerthi       | Vinay        |
| Priya         | Vinay        |

---
**Query #2**

    -- Q2
    SELECT e.emp_name,
           d.dept_name
    FROM employees e
    LEFT JOIN departments d
    ON e.dept_id = d.dept_id;

| emp_name | dept_name |
| -------- | --------- |
| Karthik  | HR        |
| Ajay     | HR        |
| Vijay    | IT        |
| Vinay    | IT        |
| Meena    | Finance   |
| Veer     | Marketing |
| Keerthi  | Sales     |
| Priya    | Sales     |

---
**Query #3**

    -- Q3
    SELECT e.emp_name,
           m.emp_name AS manager_name
    FROM employees e
    INNER JOIN employees m
    ON e.manager_id = m.emp_id;

| emp_name | manager_name |
| -------- | ------------ |
| Ajay     | Karthik      |
| Vijay    | Karthik      |
| Vinay    | Ajay         |
| Meena    | Vijay        |
| Keerthi  | Vinay        |
| Priya    | Vinay        |

---
**Query #4**

    -- Q4
    SELECT e.emp_name,
           d.dept_name
    FROM employees e
    RIGHT JOIN departments d
    ON e.dept_id = d.dept_id;

| emp_name | dept_name |
| -------- | --------- |
| Karthik  | HR        |
| Ajay     | HR        |
| Vijay    | IT        |
| Vinay    | IT        |
| Meena    | Finance   |
| Veer     | Marketing |
| Keerthi  | Sales     |
| Priya    | Sales     |

---
**Query #5**

    -- Q5
    SELECT emp_name
    FROM employees
    WHERE dept_id IS NULL;

There are no results to be displayed.

---
**Query #6**

    -- Q6
    SELECT e.emp_name,
           p.project_name
    FROM employees e
    LEFT JOIN projects p
    ON e.emp_id = p.emp_id;

| emp_name | project_name |
| -------- | ------------ |
| Karthik  | Project A    |
| Ajay     | Project B    |
| Vijay    | Project C    |
| Vinay    | Project D    |
| Meena    | Project E    |
| Veer     |              |
| Keerthi  |              |
| Priya    |              |

---
**Query #7**

    -- Q7
    SELECT e.emp_name,
           p.project_name
    FROM employees e
    INNER JOIN projects p
    ON e.emp_id = p.emp_id;

| emp_name | project_name |
| -------- | ------------ |
| Karthik  | Project A    |
| Ajay     | Project B    |
| Vijay    | Project C    |
| Vinay    | Project D    |
| Meena    | Project E    |

---
**Query #8**

    -- Q8
    SELECT e.emp_name,
           p.project_name
    FROM employees e
    RIGHT JOIN projects p
    ON e.emp_id = p.emp_id;

| emp_name | project_name |
| -------- | ------------ |
| Karthik  | Project A    |
| Ajay     | Project B    |
| Vijay    | Project C    |
| Vinay    | Project D    |
| Meena    | Project E    |

---
**Query #9**

    -- Q9
    SELECT emp_name,
           NULL AS salary
    FROM employees;

| emp_name | salary |
| -------- | ------ |
| Karthik  |        |
| Ajay     |        |
| Vijay    |        |
| Vinay    |        |
| Meena    |        |
| Veer     |        |
| Keerthi  |        |
| Priya    |        |

---
**Query #10**

    -- Q10
    SELECT e.emp_name,
           d.dept_name
    FROM employees e
    LEFT JOIN departments d
    ON e.dept_id = d.dept_id;

| emp_name | dept_name |
| -------- | --------- |
| Karthik  | HR        |
| Ajay     | HR        |
| Vijay    | IT        |
| Vinay    | IT        |
| Meena    | Finance   |
| Veer     | Marketing |
| Keerthi  | Sales     |
| Priya    | Sales     |

---
**Query #11**

    -- Q11
    SELECT e.emp_name,
           d.dept_name
    FROM employees e
    RIGHT JOIN departments d
    ON e.dept_id = d.dept_id;

| emp_name | dept_name |
| -------- | --------- |
| Karthik  | HR        |
| Ajay     | HR        |
| Vijay    | IT        |
| Vinay    | IT        |
| Meena    | Finance   |
| Veer     | Marketing |
| Keerthi  | Sales     |
| Priya    | Sales     |

---
**Query #12**

    -- Q12
    SELECT emp_name,
           'No Contact Info' AS contact_info
    FROM employees;

| emp_name | contact_info    |
| -------- | --------------- |
| Karthik  | No Contact Info |
| Ajay     | No Contact Info |
| Vijay    | No Contact Info |
| Vinay    | No Contact Info |
| Meena    | No Contact Info |
| Veer     | No Contact Info |
| Keerthi  | No Contact Info |
| Priya    | No Contact Info |

---
**Query #13**

    -- Q13
    SELECT e.emp_name,
           d.dept_name
    FROM employees e
    LEFT JOIN departments d
    ON e.dept_id = d.dept_id
    
    UNION
    
    SELECT e.emp_name,
           d.dept_name
    FROM employees e
    RIGHT JOIN departments d
    ON e.dept_id = d.dept_id;

| emp_name | dept_name |
| -------- | --------- |
| Karthik  | HR        |
| Ajay     | HR        |
| Vijay    | IT        |
| Vinay    | IT        |
| Meena    | Finance   |
| Veer     | Marketing |
| Keerthi  | Sales     |
| Priya    | Sales     |

---
**Query #14**

    -- Q14
    SELECT e.emp_name
    FROM employees e
    LEFT JOIN projects p
    ON e.emp_id = p.emp_id
    WHERE p.project_id IS NULL;

| emp_name |
| -------- |
| Veer     |
| Keerthi  |
| Priya    |

---
**Query #15**

    -- Q15
    SELECT e.emp_name,
           p.project_name
    FROM employees e
    LEFT JOIN projects p
    ON e.emp_id = p.emp_id;

| emp_name | project_name |
| -------- | ------------ |
| Karthik  | Project A    |
| Ajay     | Project B    |
| Vijay    | Project C    |
| Vinay    | Project D    |
| Meena    | Project E    |
| Veer     |              |
| Keerthi  |              |
| Priya    |              |

---
**Query #16**

    -- Q16
    SELECT p.project_name,
           e.emp_name
    FROM projects p
    LEFT JOIN employees e
    ON p.emp_id = e.emp_id;

| project_name | emp_name |
| ------------ | -------- |
| Project A    | Karthik  |
| Project B    | Ajay     |
| Project C    | Vijay    |
| Project D    | Vinay    |
| Project E    | Meena    |

---
**Query #17**

    -- Q17
    SELECT e.emp_name,
           m.emp_name AS manager_name,
           p.project_name
    FROM employees e
    INNER JOIN employees m
    ON e.manager_id = m.emp_id
    INNER JOIN projects p
    ON e.emp_id = p.emp_id;

| emp_name | manager_name | project_name |
| -------- | ------------ | ------------ |
| Ajay     | Karthik      | Project B    |
| Vijay    | Karthik      | Project C    |
| Vinay    | Ajay         | Project D    |
| Meena    | Vijay        | Project E    |

---
**Query #18**

    -- Q18
    SELECT e.emp_name,
           d.dept_name
    FROM employees e
    INNER JOIN departments d
    ON e.dept_id = d.dept_id;

| emp_name | dept_name |
| -------- | --------- |
| Karthik  | HR        |
| Ajay     | HR        |
| Vijay    | IT        |
| Vinay    | IT        |
| Meena    | Finance   |
| Veer     | Marketing |
| Keerthi  | Sales     |
| Priya    | Sales     |

---
**Query #19**

    -- Q19
    SELECT e.emp_name,
           d.dept_name
    FROM employees e
    INNER JOIN departments d
    ON e.dept_id = d.dept_id;

| emp_name | dept_name |
| -------- | --------- |
| Karthik  | HR        |
| Ajay     | HR        |
| Vijay    | IT        |
| Vinay    | IT        |
| Meena    | Finance   |
| Veer     | Marketing |
| Keerthi  | Sales     |
| Priya    | Sales     |

---
**Query #20**

    -- Q20
    SELECT d.dept_name,
           e.emp_name
    FROM departments d
    LEFT JOIN employees e
    ON d.dept_id = e.dept_id;

| dept_name | emp_name |
| --------- | -------- |
| HR        | Karthik  |
| HR        | Ajay     |
| IT        | Vijay    |
| IT        | Vinay    |
| Finance   | Meena    |
| Marketing | Veer     |
| Sales     | Keerthi  |
| Sales     | Priya    |

---
**Query #21**

    -- Q21
    SELECT e.emp_name,
           p.project_name
    FROM employees e
    INNER JOIN projects p
    ON e.emp_id = p.emp_id
    WHERE e.dept_id IS NULL;

There are no results to be displayed.

---
**Query #22**

    -- Q22
    SELECT d.dept_name,
           COUNT(e.emp_id) AS employee_count
    FROM departments d
    LEFT JOIN employees e
    ON d.dept_id = e.dept_id
    GROUP BY d.dept_name;

| dept_name | employee_count |
| --------- | -------------- |
| Finance   | 1              |
| HR        | 2              |
| IT        | 2              |
| Marketing | 1              |
| Sales     | 2              |

---
**Query #23**

    -- Q23
    SELECT e.emp_name,
           m.emp_name AS manager_name
    FROM employees e
    INNER JOIN employees m
    ON e.manager_id = m.emp_id;

| emp_name | manager_name |
| -------- | ------------ |
| Ajay     | Karthik      |
| Vijay    | Karthik      |
| Vinay    | Ajay         |
| Meena    | Vijay        |
| Keerthi  | Vinay        |
| Priya    | Vinay        |

---
**Query #24**

    -- Q24
    SELECT e.emp_name,
           m.emp_name AS manager_name
    FROM employees e
    LEFT JOIN employees m
    ON e.manager_id = m.emp_id;

| emp_name | manager_name |
| -------- | ------------ |
| Karthik  |              |
| Ajay     | Karthik      |
| Vijay    | Karthik      |
| Vinay    | Ajay         |
| Meena    | Vijay        |
| Veer     |              |
| Keerthi  | Vinay        |
| Priya    | Vinay        |

---
**Query #25**

    -- Q25
    SELECT d.dept_name,
           COUNT(e.emp_id) AS employee_count
    FROM departments d
    LEFT JOIN employees e
    ON d.dept_id = e.dept_id
    GROUP BY d.dept_name;

| dept_name | employee_count |
| --------- | -------------- |
| Finance   | 1              |
| HR        | 2              |
| IT        | 2              |
| Marketing | 1              |
| Sales     | 2              |

---
**Query #26**

    -- Q26
    SELECT e.emp_name,
           d.dept_name
    FROM departments d
    LEFT JOIN employees e
    ON d.dept_id = e.dept_id;

| emp_name | dept_name |
| -------- | --------- |
| Karthik  | HR        |
| Ajay     | HR        |
| Vijay    | IT        |
| Vinay    | IT        |
| Meena    | Finance   |
| Veer     | Marketing |
| Keerthi  | Sales     |
| Priya    | Sales     |

---
**Query #27**

    -- Q27
    SELECT emp_name
    FROM employees
    WHERE emp_id NOT IN (
        SELECT emp_id FROM projects
    );

| emp_name |
| -------- |
| Veer     |
| Keerthi  |
| Priya    |

---
**Query #28**

    -- Q28
    SELECT e.emp_name,
           p.project_name
    FROM employees e
    LEFT JOIN projects p
    ON e.emp_id = p.emp_id;

| emp_name | project_name |
| -------- | ------------ |
| Karthik  | Project A    |
| Ajay     | Project B    |
| Vijay    | Project C    |
| Vinay    | Project D    |
| Meena    | Project E    |
| Veer     |              |
| Keerthi  |              |
| Priya    |              |

---
**Query #29**

    -- Q29
    SELECT e.emp_name,
           d.dept_name,
           p.project_name
    FROM employees e
    LEFT JOIN departments d
    ON e.dept_id = d.dept_id
    LEFT JOIN projects p
    ON e.emp_id = p.emp_id;

| emp_name | dept_name | project_name |
| -------- | --------- | ------------ |
| Karthik  | HR        | Project A    |
| Ajay     | HR        | Project B    |
| Vijay    | IT        | Project C    |
| Vinay    | IT        | Project D    |
| Meena    | Finance   | Project E    |
| Veer     | Marketing |              |
| Keerthi  | Sales     |              |
| Priya    | Sales     |              |

---
**Query #30**

    -- Q30
    SELECT e.emp_name,
           d.dept_name
    FROM employees e
    LEFT JOIN departments d
    ON e.dept_id = d.dept_id;

| emp_name | dept_name |
| -------- | --------- |
| Karthik  | HR        |
| Ajay     | HR        |
| Vijay    | IT        |
| Vinay    | IT        |
| Meena    | Finance   |
| Veer     | Marketing |
| Keerthi  | Sales     |
| Priya    | Sales     |

---

[View on DB Fiddle](https://www.db-fiddle.com/)