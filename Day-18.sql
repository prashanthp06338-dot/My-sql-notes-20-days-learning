use companydb;
drop table employees;
CREATE TABLE Employees (
	emp_id INT PRIMARY KEY,
	emp_name VARCHAR(50),
	department VARCHAR(30),
	salary DECIMAL(10,2),
	experience INT,
	city VARCHAR(30)
);
 
INSERT INTO Employees VALUES
(101,'Rahul','IT',65000,5,'Hyderabad'),
(102,'Priya','HR',45000,3,'Chennai'),
(103,'Amit','Finance',70000,6,'Bangalore'),
(104,'Sneha','IT',80000,8,'Hyderabad'),
(105,'Kiran','Sales',40000,2,'Pune');


CREATE TABLE Employee_Audit(
	audit_id INT AUTO_INCREMENT PRIMARY KEY,
	emp_id INT,
	action_type VARCHAR(20),
	old_salary DECIMAL(10,2),
	new_salary DECIMAL(10,2),
	action_time DATETIME
);

select*from employees;
select*from employee_audit;

--  before insert
delimiter //
create trigger trg_brfore_insert_salary
before insert
on employees
for each row
begin
if new.salary<20000 then
signal sqlstate'45000'
set message_text='salary cannot be less than 20000';
end if;
end //
delimiter ;
insert into employees values(106,'mahesh','sales',25000,1,'hyd');

delimiter //
create trigger trg_after_insert
after insert
on employees
for each row
begin
insert into employee_audit(emp_id,action_type,new_salary,action_time)
values(new.emp_id,'insert',new.salary,now());
end //
delimiter ;


insert into employees values(107,'kavya','hr',55000,4,'chennai');
select*from employee_audit;

delimiter //
create trigger trg_before_update_salary
before update
on employees
for each row
begin
if new.salary<old.salary then
signal sqlstate '45000'
set message_text='salary cannot be reduced';
end if;
end //
delimiter ;

update employees set salary=50000 where emp_id=102;
select*from employees;

show triggers;

delimiter //
create trigger trg_after_update
after update
on employees
for each row
begin
insert into employee_audit(emp_id,action_type,old_salary,new_salary,action_time)
values(old.emp_id,'update',old.salary,new.salary,now());
end //
delimiter ;
update employees set salary=60000 where emp_id=107;
select*from employee_audit;

delimiter //
create trigger trg_before_delete_employee
before delete
on employees
for each row
begin
if old.department='it' then
signal sqlstate '45000'
set message_text='cannot delete it employees';
end if;
end //
delimiter ;

delete from employees where emp_id=101;

delimiter //
create trigger trg_before_delete_employee
before delete
on employees
for each row
begin
if old.department='it' then
signal sqlstate '45000'
set message_text='cannot delete it employees';
end if;
end //
delimiter ;

delete from employees where emp_id=102;

delimiter //
create trigger trg_after_delete
after delete
on employees
for each row
begin
insert into employee_audit(emp_id,action_type,old_salary,action_time)
values(old.emp_id,'delete',old.salary,now());
end //
delimiter ;

delete from employees where emp_id=103;
select*from employee_audit;

-- record insert chesinapudu exp negative undakudadu ??

-- before insert
delimiter //
create trigger trg_before_insert_exp
before insert
on employees
for each row
begin
if new.experience<0 then
signal sqlstate '45000'
set message_text='experience cannot be negative';
end if;
end //
delimiter ;

insert into employees values(109,'kavy','sales',75000,-1,'kochi');
insert into employees values(109,'kavy','sales',75000,1,'kochi');

-- before delete

delimiter //
create trigger trg_before_delete_sal
before delete
on employees
for each row
begin
