
use employees;
create view dept_max_salary as
select  first_name, last_name, max(salary), dept_name from dept_emp
	left join salaries using(emp_no)
    left join departments using(dept_no)
    left join employees using(emp_no)
    group by dept_no;
    
select * from  dept_max_salary;   