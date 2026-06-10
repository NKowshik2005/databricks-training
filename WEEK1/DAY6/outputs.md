

**Query #1**

&#x20;   -- DATE MANIPULATION SOLUTIONS
    
    -- Q1
    SELECT CURDATE() AS todays\_date;


|todays\_date|
|-|
|2026-05-17|

\---

**Query #2**

&#x20;   -- Q2
    SELECT CURTIME() AS current\_clock\_time;


|current\_clock\_time|
|-|
|06:46:15|

\---

**Query #3**

&#x20;   -- Q3
    SELECT NOW() AS current\_datetime;


|current\_datetime|
|-|
|2026-05-17 06:46:15|

\---

**Query #4**

&#x20;   -- Q4
    SELECT order\_id,
           YEAR(order\_date) AS order\_year
    FROM orders;


|order\_id|order\_year|
|-|-|
|1|2024|
|2|2024|
|3|2024|
|4|2024|
|5|2024|

\---

**Query #5**

&#x20;   -- Q5
    SELECT order\_id,
           MONTH(order\_date) AS order\_month
    FROM orders;


|order\_id|order\_month|
|-|-|
|1|1|
|2|2|
|3|3|
|4|3|
|5|1|

\---

**Query #6**

&#x20;   -- Q6
    SELECT order\_id,
           DAY(order\_date) AS order\_day
    FROM orders;


|order\_id|order\_day|
|-|-|
|1|15|
|2|18|
|3|2|
|4|9|
|5|7|

\---

**Query #7**

&#x20;   -- Q7
    SELECT order\_id,
           EXTRACT(YEAR FROM order\_date) AS extracted\_year
    FROM orders;


|order\_id|extracted\_year|
|-|-|
|1|2024|
|2|2024|
|3|2024|
|4|2024|
|5|2024|

\---

**Query #8**

&#x20;   -- Q8
    SELECT order\_id,
           MONTHNAME(order\_date) AS month\_name
    FROM orders;


|order\_id|month\_name|
|-|-|
|1|January|
|2|February|
|3|March|
|4|March|
|5|January|

\---

**Query #9**

&#x20;   -- Q9
    SELECT order\_id,
           DAYNAME(order\_date) AS day\_name
    FROM orders;


|order\_id|day\_name|
|-|-|
|1|Monday|
|2|Sunday|
|3|Saturday|
|4|Saturday|
|5|Sunday|

\---

**Query #10**

&#x20;   -- Q10
    SELECT order\_id,
           WEEKDAY(order\_date) AS weekday\_value
    FROM orders;


|order\_id|weekday\_value|
|-|-|
|1|0|
|2|6|
|3|5|
|4|5|
|5|6|

\---

**Query #11**

&#x20;   -- Q11
    SELECT order\_id,
           DAYOFWEEK(order\_date) AS dayofweek\_value
    FROM orders;


|order\_id|dayofweek\_value|
|-|-|
|1|2|
|2|1|
|3|7|
|4|7|
|5|1|

\---

**Query #12**

&#x20;   -- Q12
    SELECT order\_id,
           order\_date
    FROM orders
    WHERE DAYNAME(order\_date) IN ('Saturday', 'Sunday');


|order\_id|order\_date|
|-|-|
|2|2024-02-18|
|3|2024-03-02|
|4|2024-03-09|
|5|2024-01-07|

\---

**Query #13**

&#x20;   -- Q13
    SELECT order\_id,
           order\_date
    FROM orders
    WHERE DAYOFWEEK(order\_date) BETWEEN 2 AND 6;


|order\_id|order\_date|
|-|-|
|1|2024-01-15|

\---

**Query #14**

&#x20;   -- Q14
    SELECT order\_id,
           order\_date,
           DATE\_ADD(order\_date, INTERVAL 5 DAY) AS added\_date
    FROM orders;


|order\_id|order\_date|added\_date|
|-|-|-|
|1|2024-01-15|2024-01-20|
|2|2024-02-18|2024-02-23|
|3|2024-03-02|2024-03-07|
|4|2024-03-09|2024-03-14|
|5|2024-01-07|2024-01-12|

\---

**Query #15**

&#x20;   -- Q15
    SELECT order\_id,
           order\_date,
           DATE\_SUB(order\_date, INTERVAL 3 DAY) AS subtracted\_date
    FROM orders;


|order\_id|order\_date|subtracted\_date|
|-|-|-|
|1|2024-01-15|2024-01-12|
|2|2024-02-18|2024-02-15|
|3|2024-03-02|2024-02-28|
|4|2024-03-09|2024-03-06|
|5|2024-01-07|2024-01-04|

\---

**Query #16**

&#x20;   -- Q16
    SELECT order\_id,
           DATE\_ADD(order\_date, INTERVAL 1 MONTH) AS next\_month\_date
    FROM orders;


|order\_id|next\_month\_date|
|-|-|
|1|2024-02-15|
|2|2024-03-18|
|3|2024-04-02|
|4|2024-04-09|
|5|2024-02-07|

\---

**Query #17**

&#x20;   -- Q17
    SELECT order\_id,
           DATEDIFF(delivery\_date, order\_date) AS delivery\_days
    FROM orders;


|order\_id|delivery\_days|
|-|-|
|1|5|
|2|4|
|3|6|
|4|6|
|5|5|

\---

**Query #18**

&#x20;   -- Q18
    SELECT order\_id,
           TIMESTAMPDIFF(MONTH, order\_date, delivery\_date) AS months\_difference
    FROM orders;


|order\_id|months\_difference|
|-|-|
|1|0|
|2|0|
|3|0|
|4|0|
|5|0|

\---

**Query #19**

&#x20;   -- Q19
    SELECT order\_id,
           LAST\_DAY(order\_date) AS last\_day
    FROM orders;


|order\_id|last\_day|
|-|-|
|1|2024-01-31|
|2|2024-02-29|
|3|2024-03-31|
|4|2024-03-31|
|5|2024-01-31|

\---

**Query #20**

&#x20;   -- Q20
    SELECT order\_id,
           DATE\_SUB(order\_date, INTERVAL DAY(order\_date)-1 DAY) AS first\_day
    FROM orders;


|order\_id|first\_day|
|-|-|
|1|2024-01-01|
|2|2024-02-01|
|3|2024-03-01|
|4|2024-03-01|
|5|2024-01-01|

\---

**Query #21**

&#x20;   -- Q21
    SELECT order\_id,
           DATE\_FORMAT(order\_date, '%d-%m-%Y') AS formatted\_date
    FROM orders;


|order\_id|formatted\_date|
|-|-|
|1|15-01-2024|
|2|18-02-2024|
|3|02-03-2024|
|4|09-03-2024|
|5|07-01-2024|

\---

**Query #22**

&#x20;   -- Q22
    SELECT STR\_TO\_DATE('15-01-2024', '%d-%m-%Y') AS converted\_date;


|converted\_date|
|-|
|2024-01-15|

\---

**Query #23**

&#x20;   -- Q23
    SELECT order\_id,
           DATE\_FORMAT(order\_timestamp, '%d-%m-%Y %H:%i:%s') AS formatted\_timestamp
    FROM orders;


|order\_id|formatted\_timestamp|
|-|-|
|1|15-01-2024 10:30:45|
|2|18-02-2024 18:45:20|
|3|02-03-2024 09:15:10|
|4|09-03-2024 14:05:55|
|5|07-01-2024 23:55:00|

\---

**Query #24**

&#x20;   -- Q24
    SELECT \*
    FROM orders
    WHERE MONTH(order\_date) = 1;


|order\_id|customer\_name|order\_date|order\_timestamp|delivery\_date|order\_amount|
|-|-|-|-|-|-|
|1|Karthik|2024-01-15|2024-01-15 10:30:45|2024-01-20|2500.0|
|5|Suresh|2024-01-07|2024-01-07 23:55:00|2024-01-12|2900.0|

\---

**Query #25**

&#x20;   -- Q25
    SELECT order\_id,
           order\_date,
           CASE
               WHEN MONTH(order\_date) >= 4
               THEN CONCAT(YEAR(order\_date), '-', YEAR(order\_date)+1)
               ELSE CONCAT(YEAR(order\_date)-1, '-', YEAR(order\_date))
           END AS financial\_year
    FROM orders;


|order\_id|order\_date|financial\_year|
|-|-|-|
|1|2024-01-15|2023-2024|
|2|2024-02-18|2023-2024|
|3|2024-03-02|2023-2024|
|4|2024-03-09|2023-2024|
|5|2024-01-07|2023-2024|

\---

**Query #26**

&#x20;   -- Q26
    SELECT \*
    FROM orders
    WHERE order\_date >= CURDATE() - INTERVAL 7 DAY;


There are no results to be displayed.

\---

**Query #27**

&#x20;   -- Q27
    SELECT \*
    FROM orders
    WHERE DATE(order\_timestamp) = CURDATE();


There are no results to be displayed.

\---

[View on DB Fiddle](https://www.db-fiddle.com/)

