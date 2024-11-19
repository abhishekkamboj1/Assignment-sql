create database assignment3;
use assignment3;
create table employee_information (
employee_id int,
first_name varchar(50),
last_name varchar(50),
department varchar(50),
salary int,
hire_date date
 );
 
insert into employee_information(employee_id, first_name, last_name, department, salary, hire_date)
                           values(1,"john","doe","it",60000,"2019-01-10"),
                                  (2,"jane","smth","hr",55000,"2018-03-05"),
                                  (3,"emily","jones","it",62000,"2020-07-23"),
                                  (4,"michael","brown","finance",70000,"2016-05-14"),
                                  (5,"sarah","davis","finance",69000,"2017-11-18"),
                                  (6,"david","johnson","hr",48000,"2021-09-10");
                                  
select * from employee_information;
select sum(salary) from employee_information;

/*  find the average salary of employees in each department*/

select department, avg(salary)as average_salary
from employee_information
group by department;

/* find the total number of employees hired after 2019*/
select hire_date as "employee hired after 2019"
from employee_information
group by hire_date
having hire_date>"2019-01-10";

/* list the departments and the total salary of all employees in each department, ordered by the total salary*/
select department, sum(salary) as "total salary in each deaprtment"
from employee_information
group by department
order by sum(salary) asc;   

/* find the highest salary in the finance department*/
select department, max(salary)as"highest salary in finance department"
from employee_information
where department="finance";

/* get the top three highest paid employee*/
select first_name, max(salary)"top three paid employee"
from employee_information
group by first_name
order by max(salary)desc limit 3;

/* find the department with the minimum average salary*/

select department, avg(salary) as average_salary
from employee_information 
group by department 
order by average_salary asc limit 1;

/* display the total number of employees in each department, ordered by the number of employee*/

select department, count(employee_id) "total number of employee"
from employee_information
group by department 
order by department;

/* find the average salary of employees who were hired before 2020 */
select hire_date, avg(salary) 
from employee_information
group by hire_date
having hire_date< "2020-07-23";

/* list the names of employees in the it department ordered by hire date, with the most recently hired employees first*/

select concat(First_name,' ' ,last_name)as full_name_emplyee,hire_date
from employee_information
where department ="it"
order by hire_date desc;

/* find the sum of salaries for all emploees hired after january 1,2019, ordered by salary*/

select sum(salary),hire_date
from employee_information
group by hire_date
having hire_date >"2019-01-01"
order by sum(salary) asc;

select * from employee_information;

/* get the employee with the lowest salary in the hr department*/

select min(salary), department from employee_information where department="hr"; 

/* find the total salary paid to employees in each deratment but limit to the top 2 highest paying departments*/
select sum(salary), department
from employee_information
group by department 
order by sum(salary) desc limit 2;

/*  list all the employee hired after 2018, ordered by salary, and show only the first 4 employee*/
select concat(first_name," ",last_name), salary 
from employee_information
where hire_date>"2018-12-31"
order by salary asc limit 4;

/* find the highest salary in the it department, but limit the results to the top 1 result*/

select max(salary),department
from employee_information
where department="it";

select max(salary),department
from employee_information
group by department
having department="it";

/* get the average salary of employees in each department and list only departments with an average salary greater than 60,000*/
select avg(salary), department
from employee_information
group by department
having avg(salary)>60000;

