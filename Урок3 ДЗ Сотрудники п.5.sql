use employees;
SELECT count(*), dept_name, sum(salary) FROM employees
	inner join dept_emp on dept_emp.emp_no = employees.emp_no
	inner join departments on departments.dept_no = dept_emp.dept_no
    inner join salaries on salaries.emp_no = employees.emp_no
    group by dept_name;