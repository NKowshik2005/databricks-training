Result

**Query #1**

&#x20;   -- Question 1
SELECT \*
FROM Employee;



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|1|John Doe|28|50000.0|1|2020-01-15|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|3|Bob Brown|45|80000.0|1|2018-02-12|
|4|Alice Blue|25|45000.0|3|2021-03-22|
|5|Charlie P.|29|50000.0|2|2019-12-01|
|6|David Green|38|70000.0|4|2022-05-18|
|7|Eve Black|40|55000.0|3|2021-08-30|
|8|Frank White|32|48000.0||2021-07-10|
|9|Grace Kelly|27|65000.0|1|2018-11-13|
|10|Hannah Lee|30|53000.0|4|2020-02-25|

\---

**Query #2**

&#x20;   -- Question 2
SELECT name, salary
FROM Employee;



|name|salary|
|-|-|
|John Doe|50000.0|
|Jane Smith|60000.0|
|Bob Brown|80000.0|
|Alice Blue|45000.0|
|Charlie P.|50000.0|
|David Green|70000.0|
|Eve Black|55000.0|
|Frank White|48000.0|
|Grace Kelly|65000.0|
|Hannah Lee|53000.0|

\---

**Query #3**

&#x20;   -- Question 3
SELECT \*
FROM Employee
WHERE age > 30;



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|3|Bob Brown|45|80000.0|1|2018-02-12|
|6|David Green|38|70000.0|4|2022-05-18|
|7|Eve Black|40|55000.0|3|2021-08-30|
|8|Frank White|32|48000.0||2021-07-10|

\---

**Query #4**

&#x20;   -- Question 4
SELECT name
FROM Department;



|name|
|-|
|IT|
|HR|
|Finance|
|Marketing|

\---

**Query #5**

&#x20;   -- Question 5
SELECT e.\*
FROM Employee e
JOIN Department d
ON e.department\_id = d.department\_id
WHERE d.name = 'IT';



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|1|John Doe|28|50000.0|1|2020-01-15|
|3|Bob Brown|45|80000.0|1|2018-02-12|
|9|Grace Kelly|27|65000.0|1|2018-11-13|

\---

**Query #6**

&#x20;   -- Question 6
SELECT \*
FROM Employee
WHERE name LIKE 'J%';



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|1|John Doe|28|50000.0|1|2020-01-15|
|2|Jane Smith|34|60000.0|2|2019-07-23|

\---

**Query #7**

&#x20;   -- Question 7
SELECT \*
FROM Employee
WHERE name LIKE '%e';



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|1|John Doe|28|50000.0|1|2020-01-15|
|4|Alice Blue|25|45000.0|3|2021-03-22|
|8|Frank White|32|48000.0||2021-07-10|
|10|Hannah Lee|30|53000.0|4|2020-02-25|

\---

**Query #8**

&#x20;   -- Question 8
SELECT \*
FROM Employee
WHERE name LIKE '%a%';



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|4|Alice Blue|25|45000.0|3|2021-03-22|
|5|Charlie P.|29|50000.0|2|2019-12-01|
|6|David Green|38|70000.0|4|2022-05-18|
|7|Eve Black|40|55000.0|3|2021-08-30|
|8|Frank White|32|48000.0||2021-07-10|
|9|Grace Kelly|27|65000.0|1|2018-11-13|
|10|Hannah Lee|30|53000.0|4|2020-02-25|

\---

**Query #9**

&#x20;   -- Question 9
SELECT \*
FROM Employee
WHERE LENGTH(name) = 9;



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|3|Bob Brown|45|80000.0|1|2018-02-12|
|7|Eve Black|40|55000.0|3|2021-08-30|

\---

**Query #10**

&#x20;   -- Question 10
SELECT \*
FROM Employee
WHERE name LIKE '\_o%';



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|1|John Doe|28|50000.0|1|2020-01-15|
|3|Bob Brown|45|80000.0|1|2018-02-12|

\---

**Query #11**

&#x20;   -- Question 11
SELECT \*
FROM Employee
WHERE hire\_date > '2020-01-01';



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|1|John Doe|28|50000.0|1|2020-01-15|
|4|Alice Blue|25|45000.0|3|2021-03-22|
|6|David Green|38|70000.0|4|2022-05-18|
|7|Eve Black|40|55000.0|3|2021-08-30|
|8|Frank White|32|48000.0||2021-07-10|
|10|Hannah Lee|30|53000.0|4|2020-02-25|

\---

**Query #12**

&#x20;   -- Question 12
SELECT \*
FROM Employee
WHERE hire\_date < '2020-01-01';



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|3|Bob Brown|45|80000.0|1|2018-02-12|
|5|Charlie P.|29|50000.0|2|2019-12-01|
|9|Grace Kelly|27|65000.0|1|2018-11-13|

\---

**Query #13**

&#x20;   -- Question 13
SELECT \*
FROM Employee
WHERE YEAR(hire\_date) = 2021;



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|4|Alice Blue|25|45000.0|3|2021-03-22|
|7|Eve Black|40|55000.0|3|2021-08-30|
|8|Frank White|32|48000.0||2021-07-10|

\---

**Query #14**

&#x20;   -- Question 14
SELECT \*
FROM Employee
WHERE MONTH(hire\_date) = 7;



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|8|Frank White|32|48000.0||2021-07-10|

\---

**Query #15**

&#x20;   -- Question 15
SELECT name,
YEAR(hire\_date) AS hire\_year
FROM Employee;



|name|hire\_year|
|-|-|
|John Doe|2020|
|Jane Smith|2019|
|Bob Brown|2018|
|Alice Blue|2021|
|Charlie P.|2019|
|David Green|2022|
|Eve Black|2021|
|Frank White|2021|
|Grace Kelly|2018|
|Hannah Lee|2020|

\---

**Query #16**

&#x20;   -- Question 16
SELECT AVG(salary) AS average\_salary
FROM Employee;



|average\_salary|
|-|
|57600.0|

\---

**Query #17**

&#x20;   -- Question 17
SELECT MAX(salary) AS maximum\_salary
FROM Employee;



|maximum\_salary|
|-|
|80000.0|

\---

**Query #18**

&#x20;   -- Question 18
SELECT MIN(salary) AS minimum\_salary
FROM Employee;



|minimum\_salary|
|-|
|45000.0|

\---

**Query #19**

&#x20;   -- Question 19
SELECT COUNT(\*) AS total\_employees
FROM Employee;



|total\_employees|
|-|
|10|

\---

**Query #20**

&#x20;   -- Question 20
SELECT SUM(salary) AS total\_salary
FROM Employee;



|total\_salary|
|-|
|576000.0|

\---

**Query #21**

&#x20;   -- Question 21
SELECT department\_id,
AVG(salary) AS average\_salary
FROM Employee
GROUP BY department\_id;



|department\_id|average\_salary|
|-|-|
||48000.0|
|1|65000.0|
|2|55000.0|
|3|50000.0|
|4|61500.0|

\---

**Query #22**

&#x20;   -- Question 22
SELECT department\_id,
COUNT(\*) AS employee\_count
FROM Employee
GROUP BY department\_id;



|department\_id|employee\_count|
|-|-|
||1|
|1|3|
|2|2|
|3|2|
|4|2|

\---

**Query #23**

&#x20;   -- Question 23
SELECT department\_id,
MAX(salary) AS max\_salary
FROM Employee
GROUP BY department\_id;



|department\_id|max\_salary|
|-|-|
||48000.0|
|1|80000.0|
|2|60000.0|
|3|55000.0|
|4|70000.0|

\---

**Query #24**

&#x20;   -- Question 24
SELECT department\_id,
MIN(salary) AS min\_salary
FROM Employee
GROUP BY department\_id;



|department\_id|min\_salary|
|-|-|
||48000.0|
|1|50000.0|
|2|50000.0|
|3|45000.0|
|4|53000.0|

\---

**Query #25**

&#x20;   -- Question 25
SELECT department\_id,
SUM(salary) AS total\_salary
FROM Employee
GROUP BY department\_id;



|department\_id|total\_salary|
|-|-|
||48000.0|
|1|195000.0|
|2|110000.0|
|3|100000.0|
|4|123000.0|

\---

**Query #26**

&#x20;   -- Question 26
SELECT department\_id,
COUNT(\*) AS employee\_count
FROM Employee
GROUP BY department\_id
HAVING COUNT(\*) > 2;



|department\_id|employee\_count|
|-|-|
|1|3|

\---

**Query #27**

&#x20;   -- Question 27
SELECT department\_id,
AVG(salary) AS average\_salary
FROM Employee
GROUP BY department\_id
HAVING AVG(salary) > 55000;



|department\_id|average\_salary|
|-|-|
|1|65000.0|
|4|61500.0|

\---

**Query #28**

&#x20;   -- Question 28
SELECT department\_id,
SUM(salary) AS total\_salary
FROM Employee
GROUP BY department\_id
HAVING SUM(salary) > 100000;



|department\_id|total\_salary|
|-|-|
|1|195000.0|
|2|110000.0|
|4|123000.0|

\---

**Query #29**

&#x20;   -- Question 29
SELECT department\_id,
MAX(salary) AS max\_salary
FROM Employee
GROUP BY department\_id
HAVING MAX(salary) > 70000;



|department\_id|max\_salary|
|-|-|
|1|80000.0|

\---

**Query #30**

&#x20;   -- Question 30
SELECT department\_id,
COUNT(\*) AS employee\_count
FROM Employee
GROUP BY department\_id
HAVING COUNT(\*) < 3;



|department\_id|employee\_count|
|-|-|
||1|
|2|2|
|3|2|
|4|2|

\---

**Query #31**

&#x20;   -- Question 31
SELECT \*
FROM Employee
ORDER BY salary ASC;



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|4|Alice Blue|25|45000.0|3|2021-03-22|
|8|Frank White|32|48000.0||2021-07-10|
|1|John Doe|28|50000.0|1|2020-01-15|
|5|Charlie P.|29|50000.0|2|2019-12-01|
|10|Hannah Lee|30|53000.0|4|2020-02-25|
|7|Eve Black|40|55000.0|3|2021-08-30|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|9|Grace Kelly|27|65000.0|1|2018-11-13|
|6|David Green|38|70000.0|4|2022-05-18|
|3|Bob Brown|45|80000.0|1|2018-02-12|

\---

**Query #32**

&#x20;   -- Question 32
SELECT \*
FROM Employee
ORDER BY salary DESC;



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|3|Bob Brown|45|80000.0|1|2018-02-12|
|6|David Green|38|70000.0|4|2022-05-18|
|9|Grace Kelly|27|65000.0|1|2018-11-13|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|7|Eve Black|40|55000.0|3|2021-08-30|
|10|Hannah Lee|30|53000.0|4|2020-02-25|
|1|John Doe|28|50000.0|1|2020-01-15|
|5|Charlie P.|29|50000.0|2|2019-12-01|
|8|Frank White|32|48000.0||2021-07-10|
|4|Alice Blue|25|45000.0|3|2021-03-22|

\---

**Query #33**

&#x20;   -- Question 33
SELECT \*
FROM Employee
ORDER BY age;



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|4|Alice Blue|25|45000.0|3|2021-03-22|
|9|Grace Kelly|27|65000.0|1|2018-11-13|
|1|John Doe|28|50000.0|1|2020-01-15|
|5|Charlie P.|29|50000.0|2|2019-12-01|
|10|Hannah Lee|30|53000.0|4|2020-02-25|
|8|Frank White|32|48000.0||2021-07-10|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|6|David Green|38|70000.0|4|2022-05-18|
|7|Eve Black|40|55000.0|3|2021-08-30|
|3|Bob Brown|45|80000.0|1|2018-02-12|

\---

**Query #34**

&#x20;   -- Question 34
SELECT \*
FROM Employee
ORDER BY hire\_date DESC;



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|6|David Green|38|70000.0|4|2022-05-18|
|7|Eve Black|40|55000.0|3|2021-08-30|
|8|Frank White|32|48000.0||2021-07-10|
|4|Alice Blue|25|45000.0|3|2021-03-22|
|10|Hannah Lee|30|53000.0|4|2020-02-25|
|1|John Doe|28|50000.0|1|2020-01-15|
|5|Charlie P.|29|50000.0|2|2019-12-01|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|9|Grace Kelly|27|65000.0|1|2018-11-13|
|3|Bob Brown|45|80000.0|1|2018-02-12|

\---

**Query #35**

&#x20;   -- Question 35
SELECT \*
FROM Employee
ORDER BY department\_id,
salary DESC;



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|8|Frank White|32|48000.0||2021-07-10|
|3|Bob Brown|45|80000.0|1|2018-02-12|
|9|Grace Kelly|27|65000.0|1|2018-11-13|
|1|John Doe|28|50000.0|1|2020-01-15|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|5|Charlie P.|29|50000.0|2|2019-12-01|
|7|Eve Black|40|55000.0|3|2021-08-30|
|4|Alice Blue|25|45000.0|3|2021-03-22|
|6|David Green|38|70000.0|4|2022-05-18|
|10|Hannah Lee|30|53000.0|4|2020-02-25|

\---

**Query #36**

&#x20;   -- Question 36
SELECT e.name AS employee\_name,
d.name AS department\_name
FROM Employee e
JOIN Department d
ON e.department\_id = d.department\_id;



|employee\_name|department\_name|
|-|-|
|John Doe|IT|
|Bob Brown|IT|
|Grace Kelly|IT|
|Jane Smith|HR|
|Charlie P.|HR|
|Alice Blue|Finance|
|Eve Black|Finance|
|David Green|Marketing|
|Hannah Lee|Marketing|

\---

**Query #37**

&#x20;   -- Question 37
SELECT e.name AS employee\_name,
p.name AS project\_name
FROM Employee e
JOIN Project p
ON e.department\_id = p.department\_id;



|employee\_name|project\_name|
|-|-|
|John Doe|Project Alpha|
|Bob Brown|Project Alpha|
|Grace Kelly|Project Alpha|
|Jane Smith|Project Beta|
|Charlie P.|Project Beta|
|John Doe|Project Gamma|
|Bob Brown|Project Gamma|
|Grace Kelly|Project Gamma|
|Alice Blue|Project Delta|
|Eve Black|Project Delta|
|David Green|Project Epsilon|
|Hannah Lee|Project Epsilon|
|David Green|Project Zeta|
|Hannah Lee|Project Zeta|
|Alice Blue|Project Eta|
|Eve Black|Project Eta|
|John Doe|Project Theta|
|Bob Brown|Project Theta|
|Grace Kelly|Project Theta|

\---

**Query #38**

&#x20;   -- Question 38
SELECT d.name AS department\_name,
e.name AS employee\_name
FROM Department d
LEFT JOIN Employee e
ON d.department\_id = e.department\_id;



|department\_name|employee\_name|
|-|-|
|IT|John Doe|
|IT|Bob Brown|
|IT|Grace Kelly|
|HR|Jane Smith|
|HR|Charlie P.|
|Finance|Alice Blue|
|Finance|Eve Black|
|Marketing|David Green|
|Marketing|Hannah Lee|

\---

**Query #39**

&#x20;   -- Question 39
SELECT d.name AS department\_name,
p.name AS project\_name
FROM Department d
LEFT JOIN Project p
ON d.department\_id = p.department\_id;



|department\_name|project\_name|
|-|-|
|IT|Project Alpha|
|IT|Project Gamma|
|IT|Project Theta|
|HR|Project Beta|
|Finance|Project Delta|
|Finance|Project Eta|
|Marketing|Project Epsilon|
|Marketing|Project Zeta|

\---

**Query #40**

&#x20;   -- Question 40
SELECT \*
FROM Employee
WHERE department\_id IS NULL;



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|8|Frank White|32|48000.0||2021-07-10|

\---

**Query #41**

&#x20;   -- Question 41
SELECT \*
FROM Project
WHERE department\_id IS NULL;



|project\_id|name|department\_id|
|-|-|-|
|9|Project Iota||

\---

**Query #42**

&#x20;   -- Question 42
SELECT e.name,
d.name
FROM Employee e
INNER JOIN Department d
ON e.department\_id = d.department\_id;



|name|name|
|-|-|
|John Doe|IT|
|Bob Brown|IT|
|Grace Kelly|IT|
|Jane Smith|HR|
|Charlie P.|HR|
|Alice Blue|Finance|
|Eve Black|Finance|
|David Green|Marketing|
|Hannah Lee|Marketing|

\---

**Query #43**

&#x20;   -- Question 43
SELECT e.name,
d.name
FROM Employee e
LEFT JOIN Department d
ON e.department\_id = d.department\_id;



|name|name|
|-|-|
|John Doe|IT|
|Bob Brown|IT|
|Grace Kelly|IT|
|Jane Smith|HR|
|Charlie P.|HR|
|Alice Blue|Finance|
|Eve Black|Finance|
|David Green|Marketing|
|Hannah Lee|Marketing|
|Frank White||

\---

**Query #44**

&#x20;   -- Question 44
SELECT d.name,
e.name
FROM Department d
LEFT JOIN Employee e
ON d.department\_id = e.department\_id;



|name|name|
|-|-|
|IT|John Doe|
|IT|Bob Brown|
|IT|Grace Kelly|
|HR|Jane Smith|
|HR|Charlie P.|
|Finance|Alice Blue|
|Finance|Eve Black|
|Marketing|David Green|
|Marketing|Hannah Lee|

\---

**Query #45**

&#x20;   -- Question 45
SELECT e.name AS employee\_name,
p.name AS project\_name
FROM Employee e
JOIN Project p
ON e.department\_id = p.department\_id;



|employee\_name|project\_name|
|-|-|
|John Doe|Project Alpha|
|Bob Brown|Project Alpha|
|Grace Kelly|Project Alpha|
|Jane Smith|Project Beta|
|Charlie P.|Project Beta|
|John Doe|Project Gamma|
|Bob Brown|Project Gamma|
|Grace Kelly|Project Gamma|
|Alice Blue|Project Delta|
|Eve Black|Project Delta|
|David Green|Project Epsilon|
|Hannah Lee|Project Epsilon|
|David Green|Project Zeta|
|Hannah Lee|Project Zeta|
|Alice Blue|Project Eta|
|Eve Black|Project Eta|
|John Doe|Project Theta|
|Bob Brown|Project Theta|
|Grace Kelly|Project Theta|

\---

**Query #46**

&#x20;   -- Question 46
SELECT \*
FROM Employee
WHERE salary > (
SELECT AVG(salary)
FROM Employee
);



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|3|Bob Brown|45|80000.0|1|2018-02-12|
|6|David Green|38|70000.0|4|2022-05-18|
|9|Grace Kelly|27|65000.0|1|2018-11-13|

\---

**Query #47**

&#x20;   -- Question 47
SELECT \*
FROM Employee
WHERE salary = (
SELECT MAX(salary)
FROM Employee
);



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|3|Bob Brown|45|80000.0|1|2018-02-12|

\---

**Query #48**

&#x20;   -- Question 48
SELECT \*
FROM Employee
WHERE salary = (
SELECT MIN(salary)
FROM Employee
);



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|4|Alice Blue|25|45000.0|3|2021-03-22|

\---

**Query #49**

&#x20;   -- Question 49
SELECT \*
FROM Employee
WHERE department\_id = (
SELECT department\_id
FROM Department
WHERE name = 'IT'
);



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|1|John Doe|28|50000.0|1|2020-01-15|
|3|Bob Brown|45|80000.0|1|2018-02-12|
|9|Grace Kelly|27|65000.0|1|2018-11-13|

\---

**Query #50**

&#x20;   -- Question 50
SELECT \*
FROM Employee
WHERE department\_id IN (
SELECT department\_id
FROM Project
);



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|1|John Doe|28|50000.0|1|2020-01-15|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|3|Bob Brown|45|80000.0|1|2018-02-12|
|4|Alice Blue|25|45000.0|3|2021-03-22|
|5|Charlie P.|29|50000.0|2|2019-12-01|
|6|David Green|38|70000.0|4|2022-05-18|
|7|Eve Black|40|55000.0|3|2021-08-30|
|9|Grace Kelly|27|65000.0|1|2018-11-13|
|10|Hannah Lee|30|53000.0|4|2020-02-25|

\---

**Query #51**

&#x20;   -- Question 51
SELECT \*
FROM Department
WHERE department\_id IN (
SELECT department\_id
FROM Employee
WHERE salary > 60000
);



|department\_id|name|
|-|-|
|1|IT|
|4|Marketing|

\---

**Query #52**

&#x20;   -- Question 52
SELECT \*
FROM Employee
WHERE hire\_date < (
SELECT AVG(hire\_date)
FROM Employee
);



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|3|Bob Brown|45|80000.0|1|2018-02-12|
|5|Charlie P.|29|50000.0|2|2019-12-01|
|9|Grace Kelly|27|65000.0|1|2018-11-13|

\---

**Query #53**

&#x20;   -- Question 53
SELECT \*
FROM Employee e1
WHERE salary = (
SELECT MAX(salary)
FROM Employee e2
WHERE e1.department\_id = e2.department\_id
);



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|3|Bob Brown|45|80000.0|1|2018-02-12|
|6|David Green|38|70000.0|4|2022-05-18|
|7|Eve Black|40|55000.0|3|2021-08-30|

\---

**Query #54**

&#x20;   -- Question 54
SELECT \*
FROM Employee
WHERE age > (
SELECT AVG(age)
FROM Employee
);



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|3|Bob Brown|45|80000.0|1|2018-02-12|
|6|David Green|38|70000.0|4|2022-05-18|
|7|Eve Black|40|55000.0|3|2021-08-30|

\---

**Query #55**

&#x20;   -- Question 55
SELECT \*
FROM Employee
WHERE department\_id IS NULL;



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|8|Frank White|32|48000.0||2021-07-10|

\---

**Query #56**

&#x20;   -- Question 56
SELECT department\_id,
AVG(salary) AS avg\_salary
FROM Employee
GROUP BY department\_id
ORDER BY avg\_salary DESC
LIMIT 1;



|department\_id|avg\_salary|
|-|-|
|1|65000.0|

\---

**Query #57**

&#x20;   -- Question 57
SELECT \*
FROM Employee
ORDER BY age ASC
LIMIT 1;



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|4|Alice Blue|25|45000.0|3|2021-03-22|

\---

**Query #58**

&#x20;   -- Question 58
SELECT \*
FROM Employee
ORDER BY age DESC
LIMIT 1;



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|3|Bob Brown|45|80000.0|1|2018-02-12|

\---

**Query #59**

&#x20;   -- Question 59
SELECT d.name,
COUNT(p.project\_id) AS project\_count
FROM Department d
LEFT JOIN Project p
ON d.department\_id = p.department\_id
GROUP BY d.name;



|name|project\_count|
|-|-|
|Finance|2|
|HR|1|
|IT|3|
|Marketing|2|

\---

**Query #60**

&#x20;   -- Question 60
SELECT \*
FROM Department
WHERE department\_id NOT IN (
SELECT DISTINCT department\_id
FROM Employee
WHERE department\_id IS NOT NULL
);



There are no results to be displayed.

\---

**Query #61**

&#x20;   -- Question 61
SELECT MAX(salary) AS second\_highest\_salary
FROM Employee
WHERE salary < (
SELECT MAX(salary)
FROM Employee
);



|second\_highest\_salary|
|-|
|70000.0|

\---

**Query #62**

&#x20;   -- Question 62
SELECT \*
FROM Employee
WHERE name LIKE '%e%';



|emp\_id|name|age|salary|department\_id|hire\_date|
|-|-|-|-|-|-|
|1|John Doe|28|50000.0|1|2020-01-15|
|2|Jane Smith|34|60000.0|2|2019-07-23|
|4|Alice Blue|25|45000.0|3|2021-03-22|
|5|Charlie P.|29|50000.0|2|2019-12-01|
|6|David Green|38|70000.0|4|2022-05-18|
|7|Eve Black|40|55000.0|3|2021-08-30|
|8|Frank White|32|48000.0||2021-07-10|
|9|Grace Kelly|27|65000.0|1|2018-11-13|
|10|Hannah Lee|30|53000.0|4|2020-02-25|

\---

**Query #63**

&#x20;   -- Question 63
SELECT COUNT(\*) AS total\_employees
FROM Employee
WHERE YEAR(hire\_date) > 2020;



|total\_employees|
|-|
|4|

\---

**Query #64**

&#x20;   -- Question 64
SELECT d.name,
COUNT(e.emp\_id) AS employee\_count
FROM Department d
LEFT JOIN Employee e
ON d.department\_id = e.department\_id
GROUP BY d.name;



|name|employee\_count|
|-|-|
|Finance|2|
|HR|2|
|IT|3|
|Marketing|2|

\---

**Query #65**

&#x20;   -- Question 65
SELECT e.name AS employee\_name,
d.name AS department\_name
FROM Employee e
LEFT JOIN Department d
ON e.department\_id = d.department\_id;



|employee\_name|department\_name|
|-|-|
|John Doe|IT|
|Bob Brown|IT|
|Grace Kelly|IT|
|Jane Smith|HR|
|Charlie P.|HR|
|Alice Blue|Finance|
|Eve Black|Finance|
|David Green|Marketing|
|Hannah Lee|Marketing|
|Frank White||



