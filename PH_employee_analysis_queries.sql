--Anaylsis of Employee data

--List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no,
e.last_name,
e.first_name,
e.sex,
s.salary
from employees as e
join salaries as s
on e.emp_no = s.emp_no
order by e.last_name;

--List first name, last name, and hire date for employees who were hired in 1986.
select first_name,
last_name,
hire_date
from employees
where hire_date > '12/31/1985' and hire_date < '1/1/1987'
order by hire_date, last_name;

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.dept_no,
d.dept_name,
e.emp_no,
e.last_name,
e.first_name
from departments as d
join dept_manager as m
on d.dept_no = m.dept_no
join employees as e
on m.emp_no = e.emp_no
order by d.dept_name, e.last_name;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no,
e.last_name,
e.first_name,
d.dept_name
from departments as d
join dept_emp as m
on d.dept_no = m.dept_no
join employees as e
on m.emp_no = e.emp_no
order by e.last_name, e.first_name;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name,
last_name,
sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no,
e.last_name,
e.first_name,
d.dept_name
from departments as d
join dept_emp as m
on d.dept_no = m.dept_no
join employees as e
on m.emp_no = e.emp_no
where d.dept_name = 'Sales'
order by e.last_name, e.first_name;

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no,
e.last_name,
e.first_name,
d.dept_name
from departments as d
join dept_emp as m
on d.dept_no = m.dept_no
join employees as e
on m.emp_no = e.emp_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'
order by e.last_name, e.first_name;

--List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
select last_name,
count(emp_no) as "Number_of_Employees"
from employees
group by last_name
order by last_name desc;