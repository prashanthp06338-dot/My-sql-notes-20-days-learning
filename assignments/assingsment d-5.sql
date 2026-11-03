create database assignments;

use assignments;
CREATE TABLE EMPLOYEES(
 emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    job_role VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(50)
    );
    desc employees;
INSERT INTO employees
(emp_id, emp_name, department, job_role, salary, joining_date, city)
VALUES
(101, 'Ravi Kumar', 'IT', 'Developer', 45000, '2023-01-15', 'Vizag'),
(102, 'Priya Sharma', 'HR', 'HR Manager', 55000, '2022-06-20', 'Hyderabad'),
(103, 'Kiran Reddy', 'IT', 'Tester', 40000, '2023-03-10', 'Vizag'),
(104, 'Sneha Rao', 'Finance', 'Accountant', 48000, '2021-11-25', 'Chennai'),
(105, 'Arun Kumar', 'IT', 'Developer', 60000, '2020-08-18', 'Bangalore'),
(106, 'Divya Reddy', 'HR', 'Recruiter', 35000, '2024-01-05', 'Vizag'),
(107, 'Suresh Babu', 'Sales', 'Executive', 42000, '2022-09-12', 'Hyderabad'),
(108, 'Anjali Devi', 'IT', 'Developer', 70000, '2019-05-30', 'Chennai'),
(109, 'Mahesh Kumar', 'Sales', 'Manager', 65000, '2020-02-14', 'Bangalore'),
(110, 'Lakshmi Rao', 'Finance', 'Analyst', 52000, '2023-07-22', 'Hyderabad');

select*from employees;
set sql_safe_updates=0;
update employees set salary=50000 where emp_name='Ravi Kumar';




