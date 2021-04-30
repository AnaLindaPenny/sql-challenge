SELECT employees.emp_no,employees.last_name,employees.first_name, employees.sex,salaries.salary
from employees 
left join salaries on employees.emp_no= salaries.emp_no

SELECT first_name,last_name,hire_date from employees
WHERE hire_date between '1986-01-01' and '1986-12-31'

SELECT dm.dept_no, d.dept_name, e.last_name,e.first_name
from dept_manager as dm
inner join departments as d 
on dm.dept_no = d.dept_no
inner join employees as e
on dm.emp_no = e.emp_no

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no
order by e.emp_no;

SELECT last_name ,first_name,sex
from employees 
where 
    first_name='Hercules' and
    last_name like 'B%'
	
SELECT employees.emp_no ,employees.last_name l1,employees.first_name,departments.dept_name
from departments
JOIN dept_emp on departments.dept_no=dept_emp.dept_no
JOIN employees on dept_emp.emp_no=employees.emp_no
where departments.dept_name= 'Sales'

	
SELECT employees.emp_no ,employees.last_name l1,employees.first_name,departments.dept_name
from departments
JOIN dept_emp on departments.dept_no=dept_emp.dept_no
JOIN employees on dept_emp.emp_no=employees.emp_no
where departments.dept_name in ('Sales','Development')


SELECT last_name,count(*)
FROM employees
GROUP BY  last_name 
ORDER BY COUNT(*) DESC


