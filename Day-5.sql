use da8;
show tables;
desc employees;

alter table employees drop location;


insert into employees(empid,first_name,last_name,age,doj,address,dept)
values
('emp01','prashanth','kumar',21,'2026-10-13','vsp','it');

select*from employees;

insert into employees(empid,first_name,last_name,age,doj,address,dept)
values
('emp02','bharath','kumar',22,'2026-10-23','hyd','non-it');


select*from employees;


insert into employees values
('emp03','bobby','deol',55,'2021-05-12','vjy','marketing');

select*from employees;

insert into employees values
('emp04','pavan','bruh',45,'2020-04-22','noida','marketing'),
('emp05','jimmy','john',75,'2021-05-15','delhi','marketing');
select*from employees;


insert into employees (empid,first_name,age,address,dept)
values
('emp01','prashanth',21,'vsp','it');
select*from employees;

insert into employees set
empid='emp06',first_name='sai',last_name='kumar',age=28,doj='2021-12-12',address='vsp',dept='it';
select*from employees;


set sql_safe_updates=0;
update employees set age=22 where empid='emp01';

select*from employees;
select*from employees where empid='emp01';

update employees set dept='hr' where empid='emp02';
select*from employees where empid='emp02';



update employees set dept='non-it' where empid='emp04';

update employees set doj=curdate() where empid='emp01';

delete from employees where last_name is null;

