use pfs8;
select e.emp_id,e.name,d.department_name
from employees e
left join departments d
on e.department_id=d.department_id;

select e.emp_id,e.name,p.project_name
from employees e
left join projects p
on e.emp_id=p.emp_id;

select d.department_name,e.name
from departments d
left join employees e
on d.department_id=e.department_id;

select d.department_name,e.name
from departments d
left join employees e
on d.department_id=e.department_id
where name is null;

select e.emp_id,e.name,d.department_name
from employees e
left join departments d
on e.department_id=d.department_id
where department_name is null;

select e.emp_id,e.name,p.project_name
from employees e
left join projects p
on e.emp_id=p.emp_id
where project_name is null;

-- Q count employees per department.

select d.department_name,count(e.emp_id) as total_employees
from departments d
left join employees e
on d.department_id=e.department_id
group by d.department_name;

-- Q count the no of projects per employee

select e.name,count(p.project_id) as total_projects
from employees e
left join projects p
on e.emp_id=p.emp_id
group by e.name;
 
-- Q department wise total salary

select d.department_name,sum(e.salary) as total_salary
from departments d
left join employees e
on d.department_id=e.department_id
group by d.department_name;

-- Q department wise employees count but in desc order.

select d.department_name,count(e.emp_id) as total_employees
from departments d
left join employees e
on d.department_id=e.department_id
group by d.department_name
order by total_employees desc;

-- Q departments wise total_salary aescending order. 

select d.department_name,sum(e.salary) as total_salary
from departments d
left join employees e
on d.department_id=e.department_id
group by d.department_name
order by total_salary;

-- Q 

select d.department_name,count(e.emp_id) as total_employees
from departments d
left join employees e
on d.department_id=e.department_id
group by d.department_name 
having total_employees>1
order by total_employees desc;

-- Q dept wise avg salary and >40000 aesc order

select d.department_name,avg(e.salary) as avg_salary
from departments d
left join employees e
on d.department_id=e.department_id
group by d.department_name 
having avg_salary>40000
order by avg_salary;

-- Q highest avg salary department

select d.department_name,avg(e.salary) as avg_salary
from departments d
left join employees e
on d.department_id=e.department_id
group by d.department_name 
having avg_salary>d.department_name
order by avg_salary desc
limit 1;





