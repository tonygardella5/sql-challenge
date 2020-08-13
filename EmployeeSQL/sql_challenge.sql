create table departments (
dept_no varchar not null,
dept_name varchar not null,
primary key (dept_no)
);

create table dept_emp (
emp_no int not null,
dept_no varchar not null,
primary key (emp_no, dept_no)
);

create table dept_manager (
dept_no varchar not null,
emp_no int not null,
primary key (dept_no, emp_no)
);

create table employees (
emp_no int not null,
emp_title_id varchar not null,
birth_date date not null,
first_name varchar not null,
last_name varchar not null,
sex varchar not null,
hire_date date not null,
primary key (emp_no)
);

create table salaries (
emp_no int not null,
salary int not null,
primary key (emp_no)
);

create table titles (
title_id varchar not null,
title varchar not null,
primary key (title_id)
);

select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
left join salaries
on (employees.emp_no = salaries.emp_no)
;

select hire_date from employees;

select first_name, last_name, hire_date
from employees
where (hire_date >= '1986-01-01' AND 
       hire_date <= '1986-12-31'); 

select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, 
	employees.first_name
from dept_manager
inner join departments
	on (dept_manager.dept_no = departments.dept_no)
inner join employees
	on (dept_manager.emp_no = employees.emp_no);
	
	
select last_name, first_name
from employees
where emp_no in
	(select emp_no
	from dept_emp
	where dept_name in (
		select dept_name
		from departments));
