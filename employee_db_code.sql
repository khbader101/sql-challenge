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

--employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s on (e.emp_no=s.emp_no)

--List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date between to_date ('1986-01-01','YYYY-MM-DD') and to_date ('1986-12-31','YYYY-MM-DD')
order by hire_date asc

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name from employees e
inner join dept_manager m on (e.emp_no=m.emp_no)
inner join departments d on (m.dept_no=d.dept_no)




