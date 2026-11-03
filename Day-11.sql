-- numeric string functions
select abs (-100)as absolute_value;
select ceil(12.34)as rounded_down;
select floor(12.34)as rounded_down;
select mod(17,5)as remainder;
select pow(2,3)as power_value;
select sort(16)as square_root;
select radians(180)as radians_value;
select degrees(pi())as degrees_values;




use da8;
drop table employees;

CREATE TABLE employees (
	emp_id INT PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(60),
	phone_number VARCHAR(20),
	department VARCHAR(30),
	city VARCHAR(30),
	salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(101,'Rahul','Kumar','rahul.kumar@gmail.com','987-654-3210','IT','Hyderabad',45000),
(102,'Anita','Sharma','anita.sharma@yahoo.com','912-345-6789','HR','Bangalore',38000),
(103,'Suresh','Verma','suresh.verma@gmail.com','998-123-4567','Sales','Chennai',52000),
(104,'Priya','Singh','priya.singh@outlook.com','900-456-7890','Finance','Pune',47000),
(105,'Rahul','Joshi','rahul.joshi@gmail.com','955-888-1111','Testing','Delhi',41000),
(106,'Kiran','Reddy','kiran.reddy@gmail.com','901-222-3333','IT','Hyderabad',56000),
(107,'Deepika','Naidu','deepika.naidu@yahoo.com','944-111-2222','HR','Vizag',39000),
(108,'Mahesh','Patel','mahesh.patel@gmail.com','933-444-5555','Sales','Mumbai',62000),
(109,'Divya','Gupta','divya.gupta@gmail.com','955-777-8888','Finance','Delhi',49000),
(110,'Arjun','Rao','arjun.rao@gmail.com','988-999-7777','Developer','Hyderabad',68000);

SELECT*FROM EMPLOYEES;

-- string functions

-- adding 2 string functions is called concat

select concat(first_name,' ',last_name)as full_name from employees;

select first_name,upper(first_name)as upper_name from employees;

select last_name,lower(last_name)as lower_name from employees;

select email,substring(email,1,10)as email_prefix from employees;

select first_name,length(first_name)as name_length from employees;

select*from employees;

select phone_number,replace(phone_number,'-','')as clean_phone from employees;

select*from employees;
insert into employees(emp_id,first_name) values(111,' sunny ');

-- trim concept remove spaces 

select first_name,trim(first_name)as trimmed_name from employees;

select first_name,position('a' in first_name)as position_of_a from employees;

-- reverse name
select last_name,reverse(last_name)as reversed_name from employees;

-- short name
select last_name,left(last_name,3)as short_name from employees;

-- end name
select last_name,right(last_name,3)as end_name from employees;

select first_name,lpad(first_name,10,'*')as padded_name from employees;
select first_name,rpad(first_name,10,'*')as padded_name from employees;

-- date and time functions

select curdate()as current__date;
select curtime()as current__time;
select now()as current_date_time;
select date(now())as extracted_date;
select time(now())as extracted_time;
select dayofweek(now())as day_of_week;
select date_add(now(),interval 10 day)as new_date;
select last_day(now())as last_day_of_month;
select monthname(now())as month_name;
select dayname(now())as day_name;
select quarter(now())as quarter_value;
select sec_to_time(3661)as time_value;

/*

Display only the date part from every employee's login time.
Display only the time part from every employee's login time.
Display employee names along with their joining year.
Display employee names along with their birth month number.
Display the week number of every employee's joining date.

*/





