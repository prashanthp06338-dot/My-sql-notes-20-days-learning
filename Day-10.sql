use da8;
CREATE TABLE STUDENTS (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(30),
    Marks INT,
    City VARCHAR(30)
);


INSERT INTO STUDENTS (Name, Age, Department, Marks, City) VALUES
('Anil', 20, 'CSE', 85, 'Hyderabad'),
('Sneha', 22, 'ECE', 75, 'Mumbai'),
('Ravi', 20, 'CSE', NULL, 'Hyderabad'),
('Divya', 23, 'MECH', 65, NULL),
('Kiran', 22, 'ECE', 75, 'Pune'),
('Varun', 21, 'CSE', 92, 'Chennai'),
('Priya', 20, 'EEE', 88, 'Delhi'),
('John', 22, 'MECH', 55, 'Mumbai'),
('Rekha', 21, 'ECE', 75, 'Pune'),
('Ramesh', 23, 'EEE', NULL, 'Delhi');

select*from students;

-- display all students whoi belong to the CSE dept.

select*from students where department='cse';

select*from students where age=22;

select*from students where marks>80;

select*from students where marks between 70 and 80;

-- diplay the total no of students in each dept. 
select department ,count(*)as total_students
from students
group by department;


-- diplay the avg marks of students in each dept. 
select department ,avg(marks)as averagre_marks
from students
group by department;

-- diplay the total marks of students in each dept
select department ,sum(marks)as total_marks
from students
group by department;

select department,min(marks)as minimum_marks
from students
group by department;

select department,max(marks)as maximum_marks
from students
group by department;

select city,count(*)as total_students
from students
group by city;

select*from students;

select department ,count(*)as total_students
from students
group by department
having total_students>2;

-- displya the avg marks of students in each dept

select department,avg(marks) as average_marks
from students
group by department
having average_marks>80;

select department,sum(marks) as total_marks
from students
group by department
having total_marks>200;

select* from students order by studentid desc;

select* from students order by name;

-- display the avg mrks of eaach dept
-- considering only students older 20 years
-- show dept whose avg marks aree greater than 70
-- sort the results by avg marks in desc order

select department,avg(marks)as average_marks
from students
where age>20
group by department
having average_marks>70
order by average_marks desc;

-- select city
select city,count(*)as total_students
from students
where marks>70
group by city
having total_students
order by total_students;






