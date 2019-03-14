use employees;

CREATE TRIGGER add_bonus_sal AFTER INSERT ON employees
FOR EACH ROW BEGIN
INSERT INTO salaries SET emp_no = NEW.emp_no, salary = '1000', from_date = CURDATE(), to_date = CURDATE() + INTERVAL 3 YEAR ;
END//

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES ('818310', '1960-05-21', 'Alex', 'Mora', 'M', CURDATE())//