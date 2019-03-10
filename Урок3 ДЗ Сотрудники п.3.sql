use employees;
delete from employees 
	where employees.emp_no = (select salaries.emp_no from salaries
    where salary = (SELECT max(salary) FROM salaries));
