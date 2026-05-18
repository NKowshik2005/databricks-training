Result

**Query #1**

    -- Q1
    SELECT emp_name,
           salary,
           ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
    FROM employees;

| emp_name | salary | row_num |
| -------- | ------ | ------- |
| Sneha    | 72000  | 1       |
| Arjun    | 72000  | 2       |
| Ravi     | 65000  | 3       |
| Kiran    | 65000  | 4       |
| Priya    | 55000  | 5       |
| Amit     | 50000  | 6       |
| Vikas    | 50000  | 7       |
| Neha     | 48000  | 8       |

---
**Query #2**

    -- Q2
    SELECT emp_name,
           department,
           salary,
           ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS row_num
    FROM employees;

| emp_name | department | salary | row_num |
| -------- | ---------- | ------ | ------- |
| Sneha    | Finance    | 72000  | 1       |
| Arjun    | Finance    | 72000  | 2       |
| Priya    | HR         | 55000  | 1       |
| Amit     | HR         | 50000  | 2       |
| Vikas    | HR         | 50000  | 3       |
| Ravi     | IT         | 65000  | 1       |
| Kiran    | IT         | 65000  | 2       |
| Neha     | IT         | 48000  | 3       |

---
**Query #3**

    -- Q3
    SELECT emp_name,
           join_date,
           ROW_NUMBER() OVER(ORDER BY join_date DESC) AS row_num
    FROM employees;

| emp_name | join_date  | row_num |
| -------- | ---------- | ------- |
| Neha     | 2023-02-14 | 1       |
| Kiran    | 2022-07-18 | 2       |
| Priya    | 2021-09-01 | 3       |
| Amit     | 2021-01-10 | 4       |
| Vikas    | 2020-12-20 | 5       |
| Ravi     | 2020-06-15 | 6       |
| Sneha    | 2019-03-12 | 7       |
| Arjun    | 2018-11-25 | 8       |

---
**Query #4**

    -- Q4
    SELECT emp_name,
           department,
           join_date,
           ROW_NUMBER() OVER(PARTITION BY department ORDER BY join_date ASC) AS row_num
    FROM employees;

| emp_name | department | join_date  | row_num |
| -------- | ---------- | ---------- | ------- |
| Arjun    | Finance    | 2018-11-25 | 1       |
| Sneha    | Finance    | 2019-03-12 | 2       |
| Vikas    | HR         | 2020-12-20 | 1       |
| Amit     | HR         | 2021-01-10 | 2       |
| Priya    | HR         | 2021-09-01 | 3       |
| Ravi     | IT         | 2020-06-15 | 1       |
| Kiran    | IT         | 2022-07-18 | 2       |
| Neha     | IT         | 2023-02-14 | 3       |

---
**Query #5**

    -- Q5
    SELECT order_id,
           order_date,
           ROW_NUMBER() OVER(ORDER BY order_date) AS row_num
    FROM orders;

| order_id | order_date | row_num |
| -------- | ---------- | ------- |
| 1        | 2023-01-01 | 1       |
| 2        | 2023-01-02 | 2       |
| 3        | 2023-01-03 | 3       |
| 4        | 2023-01-04 | 4       |
| 5        | 2023-01-05 | 5       |
| 6        | 2023-01-06 | 6       |
| 7        | 2023-01-07 | 7       |
| 8        | 2023-01-08 | 8       |
| 9        | 2023-01-09 | 9       |
| 10       | 2023-01-10 | 10      |

---
**Query #6**

    -- Q6
    SELECT order_id,
           city,
           amount,
           ROW_NUMBER() OVER(PARTITION BY city ORDER BY amount DESC) AS row_num
    FROM orders;

| order_id | city      | amount | row_num |
| -------- | --------- | ------ | ------- |
| 10       | Bangalore | 2600   | 1       |
| 4        | Bangalore | 2500   | 2       |
| 7        | Bangalore | 2200   | 3       |
| 3        | Chennai   | 3000   | 1       |
| 8        | Chennai   | 3000   | 2       |
| 1        | Chennai   | 2000   | 3       |
| 5        | Chennai   | 2000   | 4       |
| 6        | Hyderabad | 1800   | 1       |
| 9        | Hyderabad | 1700   | 2       |
| 2        | Hyderabad | 1500   | 3       |

---
**Query #7**

    -- Q7
    SELECT emp_name,
           salary,
           ROW_NUMBER() OVER(ORDER BY salary ASC) AS row_num
    FROM employees;

| emp_name | salary | row_num |
| -------- | ------ | ------- |
| Neha     | 48000  | 1       |
| Amit     | 50000  | 2       |
| Vikas    | 50000  | 3       |
| Priya    | 55000  | 4       |
| Ravi     | 65000  | 5       |
| Kiran    | 65000  | 6       |
| Sneha    | 72000  | 7       |
| Arjun    | 72000  | 8       |

---
**Query #8**

    -- Q8
    SELECT emp_name,
           department,
           ROW_NUMBER() OVER(PARTITION BY department ORDER BY emp_name) AS row_num
    FROM employees;

| emp_name | department | row_num |
| -------- | ---------- | ------- |
| Arjun    | Finance    | 1       |
| Sneha    | Finance    | 2       |
| Amit     | HR         | 1       |
| Priya    | HR         | 2       |
| Vikas    | HR         | 3       |
| Kiran    | IT         | 1       |
| Neha     | IT         | 2       |
| Ravi     | IT         | 3       |

---
**Query #9**

    -- Q9
    SELECT emp_name,
           salary,
           RANK() OVER(ORDER BY salary DESC) AS rank_num
    FROM employees;

| emp_name | salary | rank_num |
| -------- | ------ | -------- |
| Sneha    | 72000  | 1        |
| Arjun    | 72000  | 1        |
| Ravi     | 65000  | 3        |
| Kiran    | 65000  | 3        |
| Priya    | 55000  | 5        |
| Amit     | 50000  | 6        |
| Vikas    | 50000  | 6        |
| Neha     | 48000  | 8        |

---
**Query #10**

    -- Q10
    SELECT emp_name,
           department,
           salary,
           RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_num
    FROM employees;

| emp_name | department | salary | rank_num |
| -------- | ---------- | ------ | -------- |
| Sneha    | Finance    | 72000  | 1        |
| Arjun    | Finance    | 72000  | 1        |
| Priya    | HR         | 55000  | 1        |
| Amit     | HR         | 50000  | 2        |
| Vikas    | HR         | 50000  | 2        |
| Ravi     | IT         | 65000  | 1        |
| Kiran    | IT         | 65000  | 1        |
| Neha     | IT         | 48000  | 3        |

---
**Query #11**

    -- Q11
    SELECT emp_name,
           join_date,
           RANK() OVER(ORDER BY join_date DESC) AS rank_num
    FROM employees;

| emp_name | join_date  | rank_num |
| -------- | ---------- | -------- |
| Neha     | 2023-02-14 | 1        |
| Kiran    | 2022-07-18 | 2        |
| Priya    | 2021-09-01 | 3        |
| Amit     | 2021-01-10 | 4        |
| Vikas    | 2020-12-20 | 5        |
| Ravi     | 2020-06-15 | 6        |
| Sneha    | 2019-03-12 | 7        |
| Arjun    | 2018-11-25 | 8        |

---
**Query #12**

    -- Q12
    SELECT order_id,
           amount,
           RANK() OVER(ORDER BY amount DESC) AS rank_num
    FROM orders;

| order_id | amount | rank_num |
| -------- | ------ | -------- |
| 3        | 3000   | 1        |
| 8        | 3000   | 1        |
| 10       | 2600   | 3        |
| 4        | 2500   | 4        |
| 7        | 2200   | 5        |
| 1        | 2000   | 6        |
| 5        | 2000   | 6        |
| 6        | 1800   | 8        |
| 9        | 1700   | 9        |
| 2        | 1500   | 10       |

---
**Query #13**

    -- Q13
    SELECT order_id,
           city,
           amount,
           RANK() OVER(PARTITION BY city ORDER BY amount DESC) AS rank_num
    FROM orders;

| order_id | city      | amount | rank_num |
| -------- | --------- | ------ | -------- |
| 10       | Bangalore | 2600   | 1        |
| 4        | Bangalore | 2500   | 2        |
| 7        | Bangalore | 2200   | 3        |
| 3        | Chennai   | 3000   | 1        |
| 8        | Chennai   | 3000   | 1        |
| 1        | Chennai   | 2000   | 3        |
| 5        | Chennai   | 2000   | 3        |
| 6        | Hyderabad | 1800   | 1        |
| 9        | Hyderabad | 1700   | 2        |
| 2        | Hyderabad | 1500   | 3        |

---
**Query #14**

    -- Q14
    SELECT emp_name,
           department,
           salary,
           RANK() OVER(PARTITION BY department ORDER BY salary ASC) AS rank_num
    FROM employees;

| emp_name | department | salary | rank_num |
| -------- | ---------- | ------ | -------- |
| Sneha    | Finance    | 72000  | 1        |
| Arjun    | Finance    | 72000  | 1        |
| Amit     | HR         | 50000  | 1        |
| Vikas    | HR         | 50000  | 1        |
| Priya    | HR         | 55000  | 3        |
| Neha     | IT         | 48000  | 1        |
| Ravi     | IT         | 65000  | 2        |
| Kiran    | IT         | 65000  | 2        |

---
**Query #15**

    -- Q15
    SELECT emp_name,
           RANK() OVER(ORDER BY emp_name) AS rank_num
    FROM employees;

| emp_name | rank_num |
| -------- | -------- |
| Amit     | 1        |
| Arjun    | 2        |
| Kiran    | 3        |
| Neha     | 4        |
| Priya    | 5        |
| Ravi     | 6        |
| Sneha    | 7        |
| Vikas    | 8        |

---
**Query #16**

    -- Q16
    SELECT order_id,
           city,
           order_date,
           RANK() OVER(PARTITION BY city ORDER BY order_date) AS rank_num
    FROM orders;

| order_id | city      | order_date | rank_num |
| -------- | --------- | ---------- | -------- |
| 4        | Bangalore | 2023-01-04 | 1        |
| 7        | Bangalore | 2023-01-07 | 2        |
| 10       | Bangalore | 2023-01-10 | 3        |
| 1        | Chennai   | 2023-01-01 | 1        |
| 3        | Chennai   | 2023-01-03 | 2        |
| 5        | Chennai   | 2023-01-05 | 3        |
| 8        | Chennai   | 2023-01-08 | 4        |
| 2        | Hyderabad | 2023-01-02 | 1        |
| 6        | Hyderabad | 2023-01-06 | 2        |
| 9        | Hyderabad | 2023-01-09 | 3        |

---
**Query #17**

    -- Q17
    SELECT emp_name,
           salary,
           DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rank_num
    FROM employees;

| emp_name | salary | dense_rank_num |
| -------- | ------ | -------------- |
| Sneha    | 72000  | 1              |
| Arjun    | 72000  | 1              |
| Ravi     | 65000  | 2              |
| Kiran    | 65000  | 2              |
| Priya    | 55000  | 3              |
| Amit     | 50000  | 4              |
| Vikas    | 50000  | 4              |
| Neha     | 48000  | 5              |

---
**Query #18**

    -- Q18
    SELECT emp_name,
           department,
           salary,
           DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dense_rank_num
    FROM employees;

| emp_name | department | salary | dense_rank_num |
| -------- | ---------- | ------ | -------------- |
| Sneha    | Finance    | 72000  | 1              |
| Arjun    | Finance    | 72000  | 1              |
| Priya    | HR         | 55000  | 1              |
| Amit     | HR         | 50000  | 2              |
| Vikas    | HR         | 50000  | 2              |
| Ravi     | IT         | 65000  | 1              |
| Kiran    | IT         | 65000  | 1              |
| Neha     | IT         | 48000  | 2              |

---
**Query #19**

    -- Q19
    SELECT emp_name,
           join_date,
           DENSE_RANK() OVER(ORDER BY join_date DESC) AS dense_rank_num
    FROM employees;

| emp_name | join_date  | dense_rank_num |
| -------- | ---------- | -------------- |
| Neha     | 2023-02-14 | 1              |
| Kiran    | 2022-07-18 | 2              |
| Priya    | 2021-09-01 | 3              |
| Amit     | 2021-01-10 | 4              |
| Vikas    | 2020-12-20 | 5              |
| Ravi     | 2020-06-15 | 6              |
| Sneha    | 2019-03-12 | 7              |
| Arjun    | 2018-11-25 | 8              |

---
**Query #20**

    -- Q20
    SELECT order_id,
           amount,
           DENSE_RANK() OVER(ORDER BY amount DESC) AS dense_rank_num
    FROM orders;

| order_id | amount | dense_rank_num |
| -------- | ------ | -------------- |
| 3        | 3000   | 1              |
| 8        | 3000   | 1              |
| 10       | 2600   | 2              |
| 4        | 2500   | 3              |
| 7        | 2200   | 4              |
| 1        | 2000   | 5              |
| 5        | 2000   | 5              |
| 6        | 1800   | 6              |
| 9        | 1700   | 7              |
| 2        | 1500   | 8              |

---
**Query #21**

    -- Q21
    SELECT order_id,
           city,
           amount,
           DENSE_RANK() OVER(PARTITION BY city ORDER BY amount DESC) AS dense_rank_num
    FROM orders;

| order_id | city      | amount | dense_rank_num |
| -------- | --------- | ------ | -------------- |
| 10       | Bangalore | 2600   | 1              |
| 4        | Bangalore | 2500   | 2              |
| 7        | Bangalore | 2200   | 3              |
| 3        | Chennai   | 3000   | 1              |
| 8        | Chennai   | 3000   | 1              |
| 1        | Chennai   | 2000   | 2              |
| 5        | Chennai   | 2000   | 2              |
| 6        | Hyderabad | 1800   | 1              |
| 9        | Hyderabad | 1700   | 2              |
| 2        | Hyderabad | 1500   | 3              |

---
**Query #22**

    -- Q22
    SELECT emp_name,
           salary,
           DENSE_RANK() OVER(ORDER BY salary ASC) AS dense_rank_num
    FROM employees;

| emp_name | salary | dense_rank_num |
| -------- | ------ | -------------- |
| Neha     | 48000  | 1              |
| Amit     | 50000  | 2              |
| Vikas    | 50000  | 2              |
| Priya    | 55000  | 3              |
| Ravi     | 65000  | 4              |
| Kiran    | 65000  | 4              |
| Sneha    | 72000  | 5              |
| Arjun    | 72000  | 5              |

---
**Query #23**

    -- Q23
    SELECT emp_name,
           department,
           join_date,
           DENSE_RANK() OVER(PARTITION BY department ORDER BY join_date ASC) AS dense_rank_num
    FROM employees;

| emp_name | department | join_date  | dense_rank_num |
| -------- | ---------- | ---------- | -------------- |
| Arjun    | Finance    | 2018-11-25 | 1              |
| Sneha    | Finance    | 2019-03-12 | 2              |
| Vikas    | HR         | 2020-12-20 | 1              |
| Amit     | HR         | 2021-01-10 | 2              |
| Priya    | HR         | 2021-09-01 | 3              |
| Ravi     | IT         | 2020-06-15 | 1              |
| Kiran    | IT         | 2022-07-18 | 2              |
| Neha     | IT         | 2023-02-14 | 3              |

---
**Query #24**

    -- Q24
    SELECT order_id,
           order_date,
           DENSE_RANK() OVER(ORDER BY order_date) AS dense_rank_num
    FROM orders;

| order_id | order_date | dense_rank_num |
| -------- | ---------- | -------------- |
| 1        | 2023-01-01 | 1              |
| 2        | 2023-01-02 | 2              |
| 3        | 2023-01-03 | 3              |
| 4        | 2023-01-04 | 4              |
| 5        | 2023-01-05 | 5              |
| 6        | 2023-01-06 | 6              |
| 7        | 2023-01-07 | 7              |
| 8        | 2023-01-08 | 8              |
| 9        | 2023-01-09 | 9              |
| 10       | 2023-01-10 | 10             |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/dhpkAAyX7Ng1b6gqkgAJ3W/0)