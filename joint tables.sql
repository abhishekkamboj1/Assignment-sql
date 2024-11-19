create database joint_tables;
use joint_tables;
create table employees(
employee_id int,
employee_name varchar(50),
department_id int,
salary int
);
insert into employees (employee_id, employee_name, department_id, salary)
            values (1,'alice',101,6000),
                    (2,'bob',102,7000),
                     (3,'charlie',102,8000),
                     (4,'david',102,7500),
                     (5,'eve',102,8500);
drop database joins_tables;
create table departments(
department_id int,
department_name varchar(50)
);
insert into departments (department_id, department_name)
                  values(101,'hr'),
                         (102, 'sales'),
                         (103, 'it'),
                         (104, 'marketing');
                         
create table projects(
project_id int,
project_name varchar(50),
department_id int
);

insert into projects ( project_id, project_name, department_id)
            values   (1,'project a',101),
					(2, 'project b', 102),
                    (3, 'project c', 103),
                    (4,'project d', 104); 

select * from projects;
/* retrieve the department name and employee name for each employee*/
select employee_name, department_name
 from employees
left join departments
on employees.department_id = departments.department_id;

   select * from departments;   
   
     select * from projects;
     
     select department_name, project_name
     from departments
     inner join projects
     on departments.department_id = projects.department_id;
     
     select department_name, project_name
     from projects
     right join departments
     on departments.department_id=projects.department_id;
     
	select * from projects;
	select * from departments; 
	select * from projects;
  select * from   employees;
  
   select sum( department_id) from projects;
   select sum( department_id)as project_no, sum( project_id) as project_no from projects;
  /* retrieve the department for employees whose salary is more than 75000*/
  
  select department_name, salary
  from employees
  left join departments
  on employees.department_id=departments.department_id
  where salary > 7500;
  
  /* find the number of employees in each department */
  
  select department_name,count(employee_id)as employee_count
  from employees
  right join departments 
  on employees.department_id=departments. department_id
  group by department_name
  order by department_name;
  
  /* get total salary of each department*/
  
     select department_name,sum(salary)as salary_count
  from employees
  right join departments 
  on employees.department_id=departments. department_id
  group by department_name;
    
select * from departments; 
select * from projects;
select * from   employees;

select department_name,project_name
from departments
right join projects
on departments.department_id=projects.department_id;

/* get total salary of each department */

select d.department_name, sum(e.salary)
from departments d
 join employees e
on d.department_id=e.department_id
group by d.department_name;

/* find all departments that have no employees*/
select department_name, count(employee_id)"no employee"
from departments 
left join employees
on departments.department_id=employees.department_id
group by department_name
having count(employee_id)=0;

/* list the employee names and their respective projects*/

select p.project_name, e.employee_name
from projects p
join employees e
on e.department_id=p.department_id;

/* find the employee and the project name for employee in 'hr' department*/

select department_name, project_name
from departments d
inner join projects p
on d.department_id=p.department_id
inner join employees as e
on d.department_id=e.department_id
where department_name="hr";

/* retrieve departments with more then 1 project name*/

select department_name, count(project_name)
from departments d
join projects p
on d.department_id=p.department_id
group by department_name
having count(project_name);

/* find employees who work in departments that are not assignment any projects*/
/*12 list the departments along with the number of employees and projects*/
/*get the department and total salary spend on employees for departments eith atleast 2employees*/ 

/* find employees who work in departments that are not assignment any projects*/

select employee_name, department_name,count(project_name)
from employees 
left join departments
on departments.department_id=employees.department_id
left join projects
on departments.department_id=projects.department_id
group by department_name,employee_name
having count(project_name)>0;

    
    /*12 list the departments along with the number of employees and projects*/
    
select d.department_name, count(e.employee_name), count(p.project_name)
from departments as d
left join employees as e 
on d.department_id = e.department_id
left join projects as p
on d.department_id =p.department_id
group by department_name, employee_name, project_name;

/* find employees who work in departments that are not assignment any projects*/

select e.employee_name, d.department_name,count(p.project_name)
from employees as e
left join departments as d
on e.department_id = d.department_id
left join projects as p
on e.department_id = p.department_id
group by department_name, employee_name
having count(project_name);

/*get the department and total salary spend on employees for departments eith atleast 2employees*/ 

select d.department_name, sum(salary)
from employees as e
left JOIN Departments d 
ON e.department_id = d.department_id
GROUP BY d.department_name 
HAVING sum(salary) >= 2;
/* select employee_name, department_name, project_name*/
select e.employee_name, d.department_name, p.project_name
from employees as e
left join departments as d
on e.department_id=d.department_id
left join projects as p
on e.department_id=p.department_id;