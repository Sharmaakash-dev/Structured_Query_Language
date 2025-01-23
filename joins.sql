create database assignment_5;
use assignment_5;
create table employee(
emp_id int,
emp_name varchar(100),
department_id int);
insert into employee(emp_id,emp_name,department_id)
values(1,"Alice",10),
      (2,"Bob",20),
      (3,"Charlie",30),
      (4,"David",10),
      (5,"Eve",40);
	
create table departments(
department_id int,
department_name varchar(100));
insert into departments(department_id,department_name)
values(10,"HR"),
      (20,"Finance"),
      (30,"IT"),
      (40,"Admin"),
      (50,"Marketing");
	
create table projects(
project_id int,
emp_id int,
project_name varchar(100));
insert into projects(project_id,emp_id,project_name)
values(101,1,"Alpha"),
	  (102,2,"Beta"),
      (103,3,"Gamma"),
      (104,4,"Delta");
      
#1st. Write a query to get Employee and Department details using join. 
select emp_id,emp_name,department_name,departments.department_name from employee left join departments on employee.department_id=departments.department_id;

#2nd. Write a query to retrieve all employees with their departments, even if the department is missing.
select emp_name,department_name from employee left join departments on employee.department_id=departments.department_id;

#3rd. Write a query to get department details even if there are no employees in that department. 
select departments.department_name,employee.department_id from departments left join employee on departments.department_id=employee.department_id;

#4th. Write a query to get all employees and departments, whether matched or not. 
select emp_id,emp_name,department_name,departments.department_name from employee full join departments ;

#5th. JOIN three tables (Employees, Departments, Projects) to get employee, department, and project information. 
select*from employee left join departments on employee.department_id=departments.department_id left join projects on employee.emp_id=projects.emp_id;

#6th. Find employees who are not assigned to any projects.
select employee.emp_id,employee.emp_name from employee left join projects on employee.emp_id=projects.emp_id where projects.emp_id is null;

#7th. Find departments with no employees using a RIGHT JOIN. 
select departments.department_name from employee right join departments on employee.department_id=departments.department_id where employee.department_id is null;

#8th. Write a query to get Employee and Department details using join with aliases. 
select *from employee as e inner join departments as d on e.department_id=d.department_id;

#9th. Write a query to find employees in the same department as other employees.
select *from employee as a inner join employee as b on a.emp_id=b.emp_id ;

#10th. Write a query to find projects managed by employees in the 'IT' department. 
select*from projects left join employee on employee.emp_id=projects.emp_id 
left join departments on employee.department_id=departments.department_id  where departments.department_name="IT";

#11th. Write a query to show employees and their project information (even if not assigned to a project). 
select * from employee left join projects on employee.emp_id=projects.emp_id ;

#12th. Find employees who work in departments with names starting with 'A'. 
select employee.emp_name from employee left join departments on employee.department_id=departments.department_id where employee.emp_name like "A%";

#13th. Find the total number of employees in each department using GROUP BY and JOIN. 
select count(*) as "No of employees",departments.department_name from employee
left join departments on employee.department_id=departments.department_id group by departments.department_name;

#14th. Get the list of departments with more than one employee. 
select count(*) as "No of employees",departments.department_name from employee
left join departments on employee.department_id=departments.department_id group by departments.department_name having count(*)>1;
