create table departments (
dept_no varchar not null,
dept_name varchar not null,
primary key (dept_no)
);

create table dept_emp (
emp_no INT not null,
dept_no varchar not null,
primary key (emp_no, dept_no)
);

create table dept_manager (
dept_no varchar not null,
emp_no INT not null,
primary key (dept_no, emp_no)
);

create table employees (
emp_no INT not null,
emp_title_id varchar not null,
birth_date DATE not null,
first_name varchar not null,
last_name varchar not null,
sex varchar not null,
hire_date DATE not null,
primary key (emp_no)
);

create table salaries (
emp_no INT not null,
salary INT not null,
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
WHERE (hire_date >= '1986-01-01' AND 
       hire_date <= '1986-12-31'); 