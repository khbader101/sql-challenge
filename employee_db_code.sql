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

--List the department of each employee with the following information: employee number, last name, first name, and department name.
--some of the employees are listed in two different departments so I put the list in order of emp_no to easily see who is listed twice.
select e.emp_no, e.last_name, e.first_name, d.dept_name from employees e
inner join dept_emp de on (e.emp_no=de.emp_no)
inner join departments d on (de.dept_no=d.dept_no)
order by emp_no

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name from employees e
inner join dept_emp de on (e.emp_no=de.emp_no)
inner join departments d on (de.dept_no=d.dept_no)
where d.dept_name = 'Sales'
order by last_name asc

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
--decided to sort it by last_name rather than dept_name so that you can easily see that both departments are included when grading.
select e.emp_no, e.last_name, e.first_name, d.dept_name from employees e
inner join dept_emp de on (e.emp_no=de.emp_no)
inner join departments d on (de.dept_no=d.dept_no)
where d.dept_name in ('Sales', 'Development')
order by last_name asc

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as "Count"
from employees
group by last_name
order by "Count" desc


