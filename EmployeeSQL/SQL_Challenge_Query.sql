-- 1st Question: List the employee number, last name, first name, sex, and salary of each employee
select employees.emp_no, employees.last_name as "Last Name", employees.first_name as "First Name", sex, salary
from employees
inner join salaries 
on employees.emp_no = salaries.emp_no

-- 2nd Question: List the first name, last name, and hire date for the employees who were hired in 1986.
select last_name as "Last Name",first_name as "First Name", hire_date
From employees
WHERE extract(year from hire_date) = 1986;

-- 3rd Question: List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.
select dept_manager.dept_no as "Department Number", departments.dept_name as "Department Name", employees.emp_no,
employees.last_name as "Last Name", employees.first_name as "First Name"
from dept_manager
Join departments
on dept_manager.dept_no = departments.dept_no
Join employees
on dept_manager.emp_no = employees.emp_no

-- 4th Question: List the department number for each employee along with 
--that employees employee number, last name, first name, and department name.
select departments.dept_no as "Department Number", dept_emp.emp_no as "Employee Number",
employees.last_name as "Last Name", employees.first_name as "First Name",
departments.dept_name as "Department Name"
from dept_emp
Join departments
on dept_emp.dept_no = departments.dept_no
Join employees
on dept_emp.emp_no = employees.emp_no

-- 5th Question:List first name, last name,
-- and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select last_name as "Last Name", first_name as "First Name", sex
from employees
Where first_name = 'Hercules' AND last_name like 'B%'

--6th Question: List each employee in the Sales department, including their employee number, 
--last name, and first name.
select departments.dept_name as "Department Name",
dept_emp.emp_no as "Employee Number",
employees.last_name as "Last Name", employees.first_name as "First Name"
from dept_emp
Join departments on dept_emp.dept_no = departments.dept_no
join employees on dept_emp.emp_no = employees.emp_no
Where departments.dept_name = 'Sales'

--7th Question: List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
select departments.dept_name as "Department Name",
dept_emp.emp_no as "Employee Number",
employees.last_name as "Last Name", employees.first_name as "First Name"
from dept_emp
Join departments on dept_emp.dept_no = departments.dept_no
join employees on dept_emp.emp_no = employees.emp_no
Where departments.dept_name = 'Sales' OR departments.dept_name = 'Development'

--8th Question: List the frequency counts, 
-- in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name as "Last Names", count(last_name)
from employees
group by last_name
order by 2 desc
