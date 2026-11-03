/*

Display only the date part from every employee's login time.
Display only the time part from every employee's login time.
Display employee names along with their joining year.
Display employee names along with their birth month number.
Display the week number of every employee's joining date.

*/
use assignments;
CREATE TABLE employee_attendance
(
	emp_id INT PRIMARY KEY AUTO_INCREMENT,
	emp_name VARCHAR(100),
	department VARCHAR(50),
	joining_date DATE,
	birth_date DATE,
	login_time DATETIME,
	logout_time DATETIME,
	salary DECIMAL(10,2)
);

INSERT INTO employee_attendance
(emp_name, department, joining_date, birth_date, login_time, logout_time, salary)
VALUES
('Rahul','IT','2021-06-15','1998-05-10','2024-11-20 09:05:10','2024-11-20 18:15:30',55000),
('Sneha','HR','2020-03-21','1996-11-18','2024-11-21 08:55:20','2024-11-21 17:45:50',48000),
('Arjun','Finance','2019-08-10','1994-07-30','2024-11-22 09:15:45','2024-11-22 18:35:20',62000),
('Priya','IT','2022-01-05','2000-01-25','2024-11-23 09:00:00','2024-11-23 17:55:40',51000),
('Kiran','Admin','2018-12-11','1992-09-15','2024-11-24 08:40:30','2024-11-24 17:30:00',45000),
('Anjali','Testing','2023-04-17','1999-12-20','2024-11-25 09:12:10','2024-11-25 18:05:00',47000),
('Vijay','IT','2021-09-14','1997-04-08','2024-11-26 09:08:15','2024-11-26 18:20:40',59000),
('Divya','HR','2019-10-19','1995-06-11','2024-11-27 08:50:30','2024-11-27 17:42:15',50000),
('Ramesh','Finance','2017-07-01','1991-08-14','2024-11-28 09:03:00','2024-11-28 18:12:00',70000),
('Pooja','Testing','2022-05-09','2001-03-19','2024-11-29 09:18:50','2024-11-29 18:25:10',53000);

select* from employee_attendance;



SELECT*FROM employee_attendance;