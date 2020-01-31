
create table departments(
	dept_no varchar(50),
 	dept_name varchar(100)
);

select * from departments;
alter table departments add column id serial primary key;

create table emp_departments(
	emp_no int,
	depart_no varchar(30),
	from_date date,
	to_date date
);
select * from emp_departments;
alter table emp_departments add column id serial primary key;

create table manager(
	depart_no varchar(30),
	emp_no int,
	from_date date,
	to_date date
);
select * from manager;
alter table manager add column id serial primary key;


create table employees(
	emp_no int,
	birth_date date,
	first_name char(30),
	last_name char(30),
	gender char(10),
	hire_date date
);
select * from employees;
alter table employees add column id serial primary key;


create table salary(
	emp_no int,
	salary int,
	from_date date,
	to_date date
);
select * from salary;
alter table salary add column id serial primary key;


create table title(
	emp_no int,
	title varchar(30),
	from_date date,
	to_date date
);

select* from title;
alter table title add column id serial primary key;

