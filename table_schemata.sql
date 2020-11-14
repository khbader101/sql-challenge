create table departments (
			dept_no varchar,
			dept_name varchar);
		
create table employees (emp_no int,
						emp_title_id varchar,
						birth_date date,
						first_name varchar,
						last_name varchar,
						sex varchar,
						hire_date date);
											
create table salary (emp_no int,
					 salary int);

create table title (title_id varchar,
					title varchar);

create table dept_emp (
			emp_no int,
			dept_no varchar,
			primary key (emp_no,dept_no)
);

create table dept_manager (
			dept_no varchar,
			emp_no int,
			primary key (dept_no,emp_no)
);