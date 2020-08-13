create table departments (
dept_no varchar not null,
dept_name varchar not null,
primary key (dept_no));

create table dept_emp (
emp_no int not null,
dept_no varchar not null,
primary key (emp_no, dept_no));

create table dept_manager (
dept_no varchar not null,
emp_no int not null,
primary key (dept_no, emp_no));

create table employees (
emp_no int not null,
emp_title_id varchar not null,
birth_date date not null,
first_name varchar not null,
last_name varchar not null,
sex varchar not null,
hire_date date not null,
primary key (emp_no));

create table salaries (
emp_no int not null,
salary int not null,
primary key (emp_no));

create table titles (
title_id varchar not null,
title varchar not null,
primary key (title_id));
