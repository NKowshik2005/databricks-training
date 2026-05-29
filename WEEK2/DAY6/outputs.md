**Schema (MySQL v5.7)**

---

**Query #1**

    
 STRING FUNCTIONS SOLUTIONS
    
    -- Q1
    SELECT full_name,
           LENGTH(full_name) AS name_length
    FROM employees;

| full_name       | name_length |
| --------------- | ----------- |
| Karthik Kondpak | 15          |
| Veena Reddy     | 11          |
| Ravi kumar      | 10          |
| Anil            | 4           |
|  Suresh         | 8           |

---
**Query #2**

    -- Q2
    SELECT department,
           UPPER(department) AS upper_department
    FROM employees;

| department       | upper_department |
| ---------------- | ---------------- |
| Data Engineering | DATA ENGINEERING |
| Analytics        | ANALYTICS        |
| Data Science     | DATA SCIENCE     |
| DEVOPS           | DEVOPS           |
| data engineering | DATA ENGINEERING |

---
**Query #3**

    -- Q3
    SELECT city,
           LOWER(city) AS lower_city
    FROM employees;

| city        | lower_city  |
| ----------- | ----------- |
| Hyderabad   | hyderabad   |
| Bangalore   | bangalore   |
| Chennai     | chennai     |
| Pune        | pune        |
|  hyderabad  |  hyderabad  |

---
**Query #4**

    -- Q4
    SELECT full_name,
           TRIM(full_name) AS trimmed_name
    FROM employees;

| full_name       | trimmed_name    |
| --------------- | --------------- |
| Karthik Kondpak | Karthik Kondpak |
| Veena Reddy     | Veena Reddy     |
| Ravi kumar      | Ravi kumar      |
| Anil            | Anil            |
|  Suresh         | Suresh          |

---
**Query #5**

    -- Q5
    SELECT CONCAT(full_name, ' - ', department) AS employee_details
    FROM employees;

| employee_details                   |
| ---------------------------------- |
| Karthik Kondpak - Data Engineering |
| Veena Reddy - Analytics            |
| Ravi kumar - Data Science          |
| Anil - DEVOPS                      |
|  Suresh  - data engineering        |

---
**Query #6**

    -- Q6
    SELECT CONCAT_WS(' | ', emp_id, full_name, city) AS employee_info
    FROM employees;

| employee_info                   |
| ------------------------------- |
| 1 | Karthik Kondpak | Hyderabad |
| 2 | Veena Reddy | Bangalore     |
| 3 | Ravi kumar | Chennai        |
| 4 | Anil | Pune                 |
| 5 |  Suresh  |  hyderabad       |

---
**Query #7**

    -- Q7
    SELECT email,
           SUBSTRING(email, 1, 7) AS extracted_email
    FROM employees;

| email               | extracted_email |
| ------------------- | --------------- |
| karthik.k@gmail.com | karthik         |
| veena_r@company.com | veena_r         |
| ravi.kumar@org.in   | ravi.ku         |
| anil@abc.com        | anil@ab         |
| suresh@xyz.com      | suresh@         |

---
**Query #8**

    -- Q8
    SELECT full_name,
           LEFT(full_name, 4) AS first_four_chars
    FROM employees;

| full_name       | first_four_chars |
| --------------- | ---------------- |
| Karthik Kondpak | Kart             |
| Veena Reddy     | Veen             |
| Ravi kumar      | Ravi             |
| Anil            | Anil             |
|  Suresh         |  Sur             |

---
**Query #9**

    -- Q9
    SELECT city,
           RIGHT(city, 3) AS last_three_chars
    FROM employees;

| city        | last_three_chars |
| ----------- | ---------------- |
| Hyderabad   | bad              |
| Bangalore   | ore              |
| Chennai     | nai              |
| Pune        | une              |
|  hyderabad  | ad               |

---
**Query #10**

    -- Q10
    SELECT email,
           INSTR(email, '@') AS at_position
    FROM employees;

| email               | at_position |
| ------------------- | ----------- |
| karthik.k@gmail.com | 10          |
| veena_r@company.com | 8           |
| ravi.kumar@org.in   | 11          |
| anil@abc.com        | 5           |
| suresh@xyz.com      | 7           |

---
**Query #11**

    -- Q11
    SELECT email,
           LOCATE('.', email) AS dot_position
    FROM employees;

| email               | dot_position |
| ------------------- | ------------ |
| karthik.k@gmail.com | 8            |
| veena_r@company.com | 16           |
| ravi.kumar@org.in   | 5            |
| anil@abc.com        | 9            |
| suresh@xyz.com      | 11           |

---
**Query #12**

    -- Q12
    SELECT department,
           REPLACE(department, 'Data', 'Big Data') AS updated_department
    FROM employees;

| department       | updated_department   |
| ---------------- | -------------------- |
| Data Engineering | Big Data Engineering |
| Analytics        | Analytics            |
| Data Science     | Big Data Science     |
| DEVOPS           | DEVOPS               |
| data engineering | data engineering     |

---
**Query #13**

    -- Q13
    SELECT full_name,
           REVERSE(full_name) AS reversed_name
    FROM employees;

| full_name       | reversed_name   |
| --------------- | --------------- |
| Karthik Kondpak | kapdnoK kihtraK |
| Veena Reddy     | yddeR aneeV     |
| Ravi kumar      | ramuk ivaR      |
| Anil            | linA            |
|  Suresh         |  hseruS         |

---
**Query #14**

    -- Q14
    SELECT emp_id,
           LPAD(emp_id, 5, '0') AS padded_emp_id
    FROM employees;

| emp_id | padded_emp_id |
| ------ | ------------- |
| 1      | 00001         |
| 2      | 00002         |
| 3      | 00003         |
| 4      | 00004         |
| 5      | 00005         |

---
**Query #15**

    -- Q15
    SELECT city,
           RPAD(city, 15, '*') AS padded_city
    FROM employees;

| city        | padded_city     |
| ----------- | --------------- |
| Hyderabad   | Hyderabad****** |
| Bangalore   | Bangalore****** |
| Chennai     | Chennai******** |
| Pune        | Pune*********** |
|  hyderabad  |  hyderabad **** |

---
**Query #16**

    -- Q16
    SELECT city,
           TRIM(REPLACE(city, ' ', '')) AS cleaned_city
    FROM employees;

| city        | cleaned_city |
| ----------- | ------------ |
| Hyderabad   | Hyderabad    |
| Bangalore   | Bangalore    |
| Chennai     | Chennai      |
| Pune        | Pune         |
|  hyderabad  | hyderabad    |

---
**Query #17**

    -- Q17
    SELECT full_name,
           IFNULL(remarks, 'No remarks') AS remarks_status
    FROM employees;

| full_name       | remarks_status          |
| --------------- | ----------------------- |
| Karthik Kondpak |  Top performer          |
| Veena Reddy     | Excellent communication |
| Ravi kumar      | Needs improvement       |
| Anil            | No remarks              |
|  Suresh         |                         |

---
**Query #18**

    -- Q18
    SELECT full_name,
           COALESCE(remarks, 'N/A') AS remarks_value
    FROM employees;

| full_name       | remarks_value           |
| --------------- | ----------------------- |
| Karthik Kondpak |  Top performer          |
| Veena Reddy     | Excellent communication |
| Ravi kumar      | Needs improvement       |
| Anil            | N/A                     |
|  Suresh         |                         |

---
**Query #19**

    -- Q19
    SELECT FIND_IN_SET('Analytics', 'Data,Analytics,AI') AS analytics_position;

| analytics_position |
| ------------------ |
| 2                  |

---
**Query #20**

    -- Q20
    SELECT CONCAT('Employee: ', TRIM(full_name),
                  ', Department: ', department,
                  ', City: ', TRIM(city)) AS employee_summary
    FROM employees;

| employee_summary                                                         |
| ------------------------------------------------------------------------ |
| Employee: Karthik Kondpak, Department: Data Engineering, City: Hyderabad |
| Employee: Veena Reddy, Department: Analytics, City: Bangalore            |
| Employee: Ravi kumar, Department: Data Science, City: Chennai            |
| Employee: Anil, Department: DEVOPS, City: Pune                           |
| Employee: Suresh, Department: data engineering, City: hyderabad          |

---

[View on DB Fiddle](https://www.db-fiddle.com/)