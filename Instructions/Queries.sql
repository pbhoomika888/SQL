--List the following details of each employee: employee number, last name, first name, gender, and salary.
select employees.emp_no, employees.first_name, employees.last_name, employees.gender, salary.salary 
from salary
inner join employees on
employees.id = salary.id;

--List employees who were hired in 1986.
select * from 
employees 
where hire_date between '1986-01-01' AND '1986-12-31';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select a.emp_no,a.depart_no,b.dept_name,c.first_name,c.last_name,d.from_date as employment_start_date,d.to_date as employmnet_end_date
from manager a
left join departments b on a.depart_no = b.dept_no
left join employees c on a.emp_no = c.emp_no
left join emp_departments   d on a.emp_no = d.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from departments
inner join employees on 
employees.id = departments.id;

--List all employees whose first name is "Hercules" and last names begin with "B."

select * from employees 
where first_name = 'Hercules' And last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select dept_name from departments
where dept_name = 'Sales';
select emp_no, last_name, first_name from employees
select e.emp_no , e.last_name, e.first_name, d.dept_name
from departments d
join employees e
on(e.id= d.id)
where d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select dept_name from departments
where dept_name = 'Sales' OR dept_name = 'Development';
select emp_no ,last_name, first_name from employees
select e.emp_no, e.last_name, e.first_name, d.dept_name
from departments d
join employees e
on (e.id=d.id)
where d.dept_name = 'Sales' OR d.dept_name='Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select count ( last_name) , last_name 
From employees 
Group by last_name 


