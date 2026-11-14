-- Stored porcedures
/*
A stored procedure os a named, precompiled collection of one or more sql statements 
that is stored inside the database and can be executed whenever required.

Create Procedure Syntax
===========================

DELIMETER //
	CREATE PROCEDURE_NAME([IN/OUT/INOUT] PARAMETER_NAME DATA_TYPE0
		BEGIN
			--- SQL STATEMENTS/ LOGIC
		END
DELIMITER ;

CALL PROCEDURE_NAME();
*/


CREATE DATABASE companydb;

USE companydb;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    experience INT,
    city VARCHAR(50),
    age INT
);

INSERT INTO employees
VALUES
(101, 'Ravi', 'IT', 45000, 2, 'Hyderabad', 24),
(102, 'Kiran', 'HR', 40000, 3, 'Vijayawada', 27),
(103, 'Suresh', 'IT', 55000, 5, 'Hyderabad', 30),
(104, 'Anil', 'Sales', 35000, 1, 'Chennai', 23),
(105, 'Priya', 'Finance', 60000, 6, 'Bangalore', 32),
(106, 'Sneha', 'IT', 50000, 4, 'Vizag', 28),
(107, 'Rahul', 'HR', 42000, 2, 'Hyderabad', 25),
(108, 'Arjun', 'Sales', 38000, 3, 'Chennai', 26),
(109, 'Divya', 'Finance', 65000, 7, 'Bangalore', 34),
(110, 'Manoj', 'IT', 70000, 8, 'Hyderabad', 35);

SELECT*FROM EMPLOYEES;

select*from employees where department='it';

delimiter //
create procedure getitemployees()
begin
     select*from employees where department='it';
     end //
     delimiter ;
call getitemployees();

delimiter //
create procedure getexperiencedemployees()
begin
select*from employees where experience>5;
end //
delimiter ;
call getexperiencedemployees();

delimiter //
create procedure getemployeesbydepartment(in dept varchar(20))
begin
select*from employees where department=dept;
end //
delimiter ;
call getemployeesbydepartment('hr');
call getemployeesbydepartment('it');
call getemployeesbydepartment('finance');

delimiter //
create procedure gethighestsalary(in sal int)
begin
select*from employees where salary>=sal;
end //
delimiter ;
call gethighestsalary(40000);

delimiter //
create procedure incrementbyexperience(in exp int,in sal int)
begin
update employees set salary=salary+sal where experience>exp;
end //
delimiter ;
set sql_safe_updates=0;
call incrementbyexperience(6,20000);
select*from employees;

delimiter //
create procedure getemployeesbysalaryrange(in start_range int,in last_range int)
begin
select *  from employees where salary> start_range and salary< last_range;
end //
delimiter ;
call getemployeesbysalaryrange(45000,80000);

drop procedure getemployeesbysalaryrange;

delimiter //
create procedure gettotalitemployees(out total int)
begin
select count(*) into total from employees where department='it';
end //
delimiter ;

call gettotalitemployees(@t);
select @t;


delimiter //
create procedure addbonus(in empid int,inout bonus int)
begin
update employees set salary=salary+bonus where emp_id=empid;

select salary into bonus from employees where emp_id=empid;
end //
delimiter ;
set @B=5000;
call addbonus(101,@B);
select @b;

delimiter //
create procedure subbonus(in empid int,inout bonus int)
begin
update employees set salary=salary-bonus where emp_id=empid;

select salary into bonus from employees where emp_id=empid;
end //
delimiter ;
set @B=5000;
call subbonus(101,@B);
select @b;

