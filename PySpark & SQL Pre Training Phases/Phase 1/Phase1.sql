# SQL Queries – Phase 1

---

## Display Entire Table

SELECT *
FROM employees;

---

## Select Single Column

SELECT
    name
FROM employees;

---

## Select Multiple Columns

SELECT
    name,
    department,
    salary
FROM employees;

---

## Using col()

SELECT
    name,
    city,
    experience
FROM employees;

---

## Add Computed Column

SELECT
    *,
    salary + 5000 AS salary_after_bonus
FROM employees;

---

## Add Constant Column

SELECT
    *,
    'India' AS country
FROM employees;

---

## Alias Columns

SELECT
    name AS employee_name,
    salary AS monthly_salary
FROM employees;

---

## Rename Column

SELECT
    employee_id,
    name,
    age,
    department AS dept,
    salary,
    city,
    experience,
    status
FROM employees;

---

## Drop Salary Column

SELECT
    employee_id,
    name,
    age,
    department,
    city,
    experience,
    status
FROM employees;

---

## Drop Salary and Status Columns

SELECT
    employee_id,
    name,
    age,
    department,
    city,
    experience
FROM employees;

---

# Filtering Data

---

## Salary Greater Than 70000

SELECT *
FROM employees
WHERE salary > 70000;

---

## Age Greater Than 30

SELECT *
FROM employees
WHERE age > 30;

---

## AND Condition

SELECT *
FROM employees
WHERE salary > 70000
  AND department = 'Finance';

---

## OR Condition

SELECT *
FROM employees
WHERE department = 'HR'
   OR department = 'Research';

---

## NOT Condition

SELECT *
FROM employees
WHERE NOT status = 'Inactive';

---

## NULL Values (Age)

SELECT *
FROM employees
WHERE age IS NULL;

---

## NOT NULL Values (Department)

SELECT *
FROM employees
WHERE department IS NOT NULL;
