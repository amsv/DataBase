
use employees;
create view dept_avg_salary as
select  dept_name, avg(salary) from dept_emp
	left join salaries using(emp_no)
    left join departments using(dept_no)
    group by dept_no;
    
select * from  dept_avg_salary;   