
JOINS SOLUTIONS


-- Q1
SELECT e.emp_name AS employee_name,
       m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;

-- Q2
SELECT e.emp_name,
       d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- Q3
SELECT e.emp_name,
       m.emp_name AS manager_name
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id;

-- Q4
SELECT e.emp_name,
       d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- Q5
SELECT emp_name
FROM employees
WHERE dept_id IS NULL;

-- Q6
SELECT e.emp_name,
       p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

-- Q7
SELECT e.emp_name,
       p.project_name
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id;

-- Q8
SELECT e.emp_name,
       p.project_name
FROM employees e
RIGHT JOIN projects p
ON e.emp_id = p.emp_id;

-- Q9
SELECT emp_name,
       NULL AS salary
FROM employees;

-- Q10
SELECT e.emp_name,
       d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- Q11
SELECT e.emp_name,
       d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- Q12
SELECT emp_name,
       'No Contact Info' AS contact_info
FROM employees;

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

-- Q14
SELECT e.emp_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id
WHERE p.project_id IS NULL;

-- Q15
SELECT e.emp_name,
       p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

-- Q16
SELECT p.project_name,
       e.emp_name
FROM projects p
LEFT JOIN employees e
ON p.emp_id = e.emp_id;

-- Q17
SELECT e.emp_name,
       m.emp_name AS manager_name,
       p.project_name
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id
INNER JOIN projects p
ON e.emp_id = p.emp_id;

-- Q18
SELECT e.emp_name,
       d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- Q19
SELECT e.emp_name,
       d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- Q20
SELECT d.dept_name,
       e.emp_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;

-- Q21
SELECT e.emp_name,
       p.project_name
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id
WHERE e.dept_id IS NULL;

-- Q22
SELECT d.dept_name,
       COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- Q23
SELECT e.emp_name,
       m.emp_name AS manager_name
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id;

-- Q24
SELECT e.emp_name,
       m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;

-- Q25
SELECT d.dept_name,
       COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- Q26
SELECT e.emp_name,
       d.dept_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;

-- Q27
SELECT emp_name
FROM employees
WHERE emp_id NOT IN (
    SELECT emp_id FROM projects
);

-- Q28
SELECT e.emp_name,
       p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

-- Q29
SELECT e.emp_name,
       d.dept_name,
       p.project_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

-- Q30
SELECT e.emp_name,
       d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;