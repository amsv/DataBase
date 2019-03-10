use employees;
SELECT avg(salary) FROM employees
	left join salaries on salaries.emp_no = employees.emp_no
	left join dept_emp on dept_emp.emp_no = employees.emp_no
GROUP BY dept_no;