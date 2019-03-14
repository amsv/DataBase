use employees;
create view dept_total_salary as
SELECT dept.dept_name, COUNT(DISTINCT dept_emp.emp_no) AS emp_count, SUM(salaries.salary) AS total_salary
 FROM departments as dept 
 LEFT JOIN dept_emp using(dept_no) 
 LEFT JOIN salaries using(emp_no) 
 GROUP BY dept_name;
 
 select * from dept_total_salary;