
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    join_date DATE
);

INSERT INTO employees VALUES
(1, 'Amit', 'HR', 50000, '2021-01-10'),
(2, 'Ravi', 'IT', 65000, '2020-06-15'),
(3, 'Sneha', 'Finance', 72000, '2019-03-12'),
(4, 'Kiran', 'IT', 65000, '2022-07-18'),
(5, 'Priya', 'HR', 55000, '2021-09-01'),
(6, 'Arjun', 'Finance', 72000, '2018-11-25'),
(7, 'Neha', 'IT', 48000, '2023-02-14'),
(8, 'Vikas', 'HR', 50000, '2020-12-20');


CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    amount INT,
    order_date DATE
);

INSERT INTO orders VALUES
(1, 'Amit', 'Chennai', 2000, '2023-01-01'),
(2, 'Ravi', 'Hyderabad', 1500, '2023-01-02'),
(3, 'Sneha', 'Chennai', 3000, '2023-01-03'),
(4, 'Kiran', 'Bangalore', 2500, '2023-01-04'),
(5, 'Priya', 'Chennai', 2000, '2023-01-05'),
(6, 'Arjun', 'Hyderabad', 1800, '2023-01-06'),
(7, 'Neha', 'Bangalore', 2200, '2023-01-07'),
(8, 'Vikas', 'Chennai', 3000, '2023-01-08'),
(9, 'Anjali', 'Hyderabad', 1700, '2023-01-09'),
(10, 'Rahul', 'Bangalore', 2600, '2023-01-10');