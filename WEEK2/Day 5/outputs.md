
---

**Query #1**

    -- Q1
    SELECT sample_text
    FROM regex_foundation
    WHERE sample_text REGEXP '[0-9]';

| sample_text  |
| ------------ |
| 123ABc       |
| abc123       |
| 123abc567    |
| abc123gef    |
| abcdefghi123 |

---
**Query #2**

    -- Q2
    SELECT sample_text
    FROM regex_foundation
    WHERE sample_text REGEXP '[A-Za-z]';

| sample_text  |
| ------------ |
| 123ABc       |
| abc123       |
| 123abc567    |
| abc123gef    |
| abcdefghi123 |

---
**Query #3**

    -- Q3
    SELECT sample_text
    FROM regex_foundation
    WHERE sample_text REGEXP '^[0-9]';

| sample_text |
| ----------- |
| 123ABc      |
| 123abc567   |

---
**Query #4**

    -- Q4
    SELECT sample_text
    FROM regex_foundation
    WHERE sample_text REGEXP '[0-9]$';

| sample_text  |
| ------------ |
| abc123       |
| 123abc567    |
| abcdefghi123 |

---
**Query #5**

    -- Q5
    SELECT sample_text
    FROM regex_foundation
    WHERE sample_text REGEXP '[0-9][0-9]';

| sample_text  |
| ------------ |
| 123ABc       |
| abc123       |
| 123abc567    |
| abc123gef    |
| abcdefghi123 |

---
**Query #6**

    -- Q6
    SELECT sample_text
    FROM regex_foundation
    WHERE sample_text REGEXP '[A-Za-z][A-Za-z]';

| sample_text  |
| ------------ |
| 123ABc       |
| abc123       |
| 123abc567    |
| abc123gef    |
| abcdefghi123 |

---
**Query #7**

    -- Q7
    SELECT sample_text
    FROM regex_foundation
    WHERE sample_text REGEXP '[0-9]+';

| sample_text  |
| ------------ |
| 123ABc       |
| abc123       |
| 123abc567    |
| abc123gef    |
| abcdefghi123 |

---
**Query #8**

    -- Q8
    SELECT sample_text
    FROM regex_foundation
    WHERE sample_text REGEXP '[A-Za-z]+';

| sample_text  |
| ------------ |
| 123ABc       |
| abc123       |
| 123abc567    |
| abc123gef    |
| abcdefghi123 |

---
**Query #9**

    -- Q9
    SELECT sample_text
    FROM regex_foundation
    WHERE sample_text REGEXP '[0-9A-Za-z]+';

| sample_text  |
| ------------ |
| 123ABc       |
| abc123       |
| 123abc567    |
| abc123gef    |
| abcdefghi123 |

---
**Query #10**

    -- Q10
    SELECT sample_text
    FROM regex_foundation
    WHERE sample_text REGEXP '[A-Za-z]+[0-9]+[A-Za-z]+';

| sample_text |
| ----------- |
| abc123gef   |

---
**Query #11**

    -- Q11
    SELECT email,
           SUBSTRING_INDEX(email,'@',-1) AS domain_part
    FROM regex_foundation;

| email             | domain_part |
| ----------------- | ----------- |
| karthik@gmail.com | gmail.com   |
| veena@yahoo.com   | yahoo.com   |
| ravi@outlook.com  | outlook.com |
| anil@company.in   | company.in  |
| suresh@gmail.com  | gmail.com   |

---
**Query #12**

    -- Q12
    SELECT email,
           SUBSTRING_INDEX(email,'.',-1) AS extension
    FROM regex_foundation;

| email             | extension |
| ----------------- | --------- |
| karthik@gmail.com | com       |
| veena@yahoo.com   | com       |
| ravi@outlook.com  | com       |
| anil@company.in   | in        |
| suresh@gmail.com  | com       |

---
**Query #13**

    -- Q13
    SELECT phone
    FROM regex_foundation
    WHERE phone REGEXP '^\\+[0-9]{1,3}-[0-9]{10}$';

| phone          |
| -------------- |
| +91-9989454737 |
| +1-8877665544  |
| +44-7788996655 |
| +61-6677889900 |
| +91-5566778899 |

---
**Query #14**

    -- Q14
    SELECT email,
           REPLACE(SUBSTRING_INDEX(email,'@',-1),'@','') AS cleaned_domain
    FROM regex_foundation;

| email             | cleaned_domain |
| ----------------- | -------------- |
| karthik@gmail.com | gmail.com      |
| veena@yahoo.com   | yahoo.com      |
| ravi@outlook.com  | outlook.com    |
| anil@company.in   | company.in     |
| suresh@gmail.com  | gmail.com      |

---
**Query #15**

    -- Q15
    SELECT email,
           SUBSTRING_INDEX(email,'@',1) AS username
    FROM regex_foundation;

| email             | username |
| ----------------- | -------- |
| karthik@gmail.com | karthik  |
| veena@yahoo.com   | veena    |
| ravi@outlook.com  | ravi     |
| anil@company.in   | anil     |
| suresh@gmail.com  | suresh   |

---
**Query #16**

    -- Q16
    SELECT email,
           SUBSTRING_INDEX(SUBSTRING_INDEX(email,'@',-1),'.',1) AS domain_name
    FROM regex_foundation;

| email             | domain_name |
| ----------------- | ----------- |
| karthik@gmail.com | gmail       |
| veena@yahoo.com   | yahoo       |
| ravi@outlook.com  | outlook     |
| anil@company.in   | company     |
| suresh@gmail.com  | gmail       |

---
**Query #17**

    -- Q17
    SELECT email,
           SUBSTRING_INDEX(email,'.',-1) AS email_extension
    FROM regex_foundation;

| email             | email_extension |
| ----------------- | --------------- |
| karthik@gmail.com | com             |
| veena@yahoo.com   | com             |
| ravi@outlook.com  | com             |
| anil@company.in   | in              |
| suresh@gmail.com  | com             |

---
**Query #18**

    -- Q18
    SELECT email
    FROM regex_foundation
    WHERE email REGEXP '^[A-Za-z0-9._-]+@[A-Za-z0-9]+\\.[A-Za-z]{2,3}$';

| email             |
| ----------------- |
| karthik@gmail.com |
| veena@yahoo.com   |
| ravi@outlook.com  |
| anil@company.in   |
| suresh@gmail.com  |

---
**Query #19**

    -- Q19
    SELECT sample_text
    FROM regex_foundation
    WHERE sample_text REGEXP '^[A-Za-z]';

| sample_text  |
| ------------ |
| abc123       |
| abc123gef    |
| abcdefghi123 |

---
**Query #20**

    -- Q20
    SELECT sample_text
    FROM regex_foundation
    WHERE sample_text REGEXP '[0-9]$';

| sample_text  |
| ------------ |
| abc123       |
| 123abc567    |
| abcdefghi123 |

---

[View on DB Fiddle](https://www.db-fiddle.com/)