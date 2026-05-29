 REGEX PRACTICE TABLE

CREATE TABLE regex_practice (
    id INT,
    full_text VARCHAR(200),
    email VARCHAR(100),
    phone VARCHAR(30),
    mixed_value VARCHAR(100)
);

INSERT INTO regex_practice VALUES
(1,'EMP001_IN_91','karthik@gmail.com','+91-9876543210','abc123xyz'),
(2,'EMP002_US_01','rahul@yahoo.com','+1-7654321098','test45done'),
(3,'EMP003_UK_44','john@outlook.com','+44-9988776655','run9fast'),
(4,'EMP004_AU_61','steve@gmail.com','+61-8899776655','go88home'),
(5,'EMP005_IN_91','arjun@company.in','+91-7788996655','data77lake'),
(6,'EMP006_US_01','meera@gmail.com','+1-9090909090','spark12sql'),
(7,'EMP007_UK_44','rohan@yahoo.com','+44-7878787878','etl999job'),
(8,'EMP008_AU_61','alice@company.au','+61-6665554443','cloud7aws'),
(9,'EMP009_IN_91','vinay@gmail.com','+91-9988776655','hdfs34node'),
(10,'EMP010_US_01','sam@outlook.com','+1-6767676767','map5reduce');