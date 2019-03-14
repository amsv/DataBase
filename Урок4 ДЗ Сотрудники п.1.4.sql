use employees;
create view dept_cont_emp as
select  count(*) as count_employees, dept_name from dept_emp
    left join departments using(dept_no)
    left join employees using(emp_no)
    group by dept_no;
    
select * from  dept_cont_emp;