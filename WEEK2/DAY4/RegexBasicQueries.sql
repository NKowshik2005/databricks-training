
 REGEX BASIC ASSIGNMENT SOLUTIONS

-- Q1
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '^[0-9]+') AS starting_digits
FROM regex_practice;

-- Q2
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '[0-9]+$') AS ending_digits
FROM regex_practice;

-- Q3
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '^.') AS first_character
FROM regex_practice;

-- Q4
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '.$') AS last_character
FROM regex_practice;

-- Q5
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '[0-9]{2}') AS two_digits
FROM regex_practice;

-- Q6
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '[0-9]') AS single_digit
FROM regex_practice;

-- Q7
SELECT phone,
       REGEXP_SUBSTR(phone, '[0-9]+') AS country_code
FROM regex_practice;

-- Q8
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '[0-9]+') AS numeric_middle
FROM regex_practice;

-- Q9
SELECT email,
       REGEXP_SUBSTR(email, '^[^@]+') AS username
FROM regex_practice;

-- Q10
SELECT email,
       REGEXP_SUBSTR(email, '@.*') AS domain_part
FROM regex_practice;

-- Q11
SELECT email,
       REPLACE(REGEXP_SUBSTR(email, '@.*'), '@', '') AS domain_name
FROM regex_practice;

-- Q12
SELECT email,
       REGEXP_SUBSTR(email, '[^.]+$') AS extension
FROM regex_practice;

-- Q13
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '[A-Za-z]+') AS alphabets
FROM regex_practice;

-- Q14
SELECT mixed_value,
       REGEXP_SUBSTR(mixed_value, '[0-9]+') AS numbers
FROM regex_practice;

-- Q15
SELECT full_text,
       LEFT(full_text,3) AS first_three_chars
FROM regex_practice;

-- Q16
SELECT full_text,
       RIGHT(full_text,2) AS last_two_chars
FROM regex_practice;

-- Q17
SELECT full_text,
       REGEXP_SUBSTR(full_text, '[0-9]+') AS employee_number
FROM regex_practice;

-- Q18
SELECT full_text,
       REGEXP_SUBSTR(full_text, '[0-9]+$') AS ending_country_code
FROM regex_practice;

-- Q19
SELECT full_text,
       REGEXP_SUBSTR(full_text, '_[A-Za-z]+_') AS text_between_underscores
FROM regex_practice;

-- Q20
SELECT phone,
       REGEXP_SUBSTR(phone, '\+[0-9]+') AS plus_country_code
FROM regex_practice;