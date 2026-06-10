
 REGEX FOUNDATION SOLUTIONS


-- Q1
SELECT sample_text
FROM regex_foundation
WHERE sample_text REGEXP '[0-9]';

-- Q2
SELECT sample_text
FROM regex_foundation
WHERE sample_text REGEXP '[A-Za-z]';

-- Q3
SELECT sample_text
FROM regex_foundation
WHERE sample_text REGEXP '^[0-9]';

-- Q4
SELECT sample_text
FROM regex_foundation
WHERE sample_text REGEXP '[0-9]$';

-- Q5
SELECT sample_text
FROM regex_foundation
WHERE sample_text REGEXP '[0-9][0-9]';

-- Q6
SELECT sample_text
FROM regex_foundation
WHERE sample_text REGEXP '[A-Za-z][A-Za-z]';

-- Q7
SELECT sample_text
FROM regex_foundation
WHERE sample_text REGEXP '[0-9]+';

-- Q8
SELECT sample_text
FROM regex_foundation
WHERE sample_text REGEXP '[A-Za-z]+';

-- Q9
SELECT sample_text
FROM regex_foundation
WHERE sample_text REGEXP '[0-9A-Za-z]+';

-- Q10
SELECT sample_text
FROM regex_foundation
WHERE sample_text REGEXP '[A-Za-z]+[0-9]+[A-Za-z]+';

-- Q11
SELECT email,
       SUBSTRING_INDEX(email,'@',-1) AS domain_part
FROM regex_foundation;

-- Q12
SELECT email,
       SUBSTRING_INDEX(email,'.',-1) AS extension
FROM regex_foundation;

-- Q13
SELECT phone
FROM regex_foundation
WHERE phone REGEXP '^\\+[0-9]{1,3}-[0-9]{10}$';

-- Q14
SELECT email,
       REPLACE(SUBSTRING_INDEX(email,'@',-1),'@','') AS cleaned_domain
FROM regex_foundation;

-- Q15
SELECT email,
       SUBSTRING_INDEX(email,'@',1) AS username
FROM regex_foundation;

-- Q16
SELECT email,
       SUBSTRING_INDEX(SUBSTRING_INDEX(email,'@',-1),'.',1) AS domain_name
FROM regex_foundation;

-- Q17
SELECT email,
       SUBSTRING_INDEX(email,'.',-1) AS email_extension
FROM regex_foundation;

-- Q18
SELECT email
FROM regex_foundation
WHERE email REGEXP '^[A-Za-z0-9._-]+@[A-Za-z0-9]+\\.[A-Za-z]{2,3}$';

-- Q19
SELECT sample_text
FROM regex_foundation
WHERE sample_text REGEXP '^[A-Za-z]';

-- Q20
SELECT sample_text
FROM regex_foundation
WHERE sample_text REGEXP '[0-9]$';