-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
	from employees as e
	join salaries as s
		on e.emp_no = s.emp_no;
		
-- 2. List first name, last name, and hire date for employees who were hired in 1986.
-- Source: https://www.w3schools.com/sql/sql_between.asp
select first_name, last_name, hire_date from employees
	where hire_date between '1985-12-31' and '1987-01-01';
	
-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dpt.dept_no, dpt.dept_name, dm.emp_no, e.last_name, e.first_name
	from departments as dpt
	join dept_manager as dm
		on dpt.dept_no = dm.dept_no
	join employees as e
		on dm.emp_no = e.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, de.dept_no
	from employees as e
	join dept_emp as de
		on e.emp_no = de.emp_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- https://www.w3schools.com/sql/sql_where.asp
select first_name, last_name, sex
	from employees
	where first_name = 'Hercules'
	and last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
	from employees as e
	join dept_emp as de
		on e.emp_no = de.emp_no
	join departments as d
		on de.dept_no = d.dept_no
	where d.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, dpt.dept_name
	from employees as e
	join dept_emp as de
		on de.emp_no = e.emp_no
	join departments as dpt
		on dpt.dept_no = de.dept_no
	where dpt.dept_name = 'Sales' or dpt.dept_name = 'Development';
	
-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
