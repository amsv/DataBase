use employees;
SELECT MAX(salary) FROM employees
	left join salaries on salaries.emp_no = employees.emp_no;