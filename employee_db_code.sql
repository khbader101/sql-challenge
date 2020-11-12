create table dept_emp (
			emp_no int,
			dept_no varchar,
			primary key (emp_no,dept_no)
)

create table dept_manager (
			dept_no varchar,
			emp_no int,
			primary key (dept_no,emp_no)
)


drop table dept_manager

select * from departments
select * from dept_emp
select * from dept_manager
select * from employees
select * from salaries
select * from title