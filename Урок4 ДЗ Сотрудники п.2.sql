use employees;

CREATE FUNCTION manager (first_name VARCHAR(20), last_name VARCHAR(20))
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
RETURN (SELECT CONCAT(emp_no, '|' ,birth_date, '|' ,first_name, '|' ,last_name, '|' ,gender, '|' ,hire_date)
FROM employees e 
LEFT JOIN dept_manager USING(emp_no) 
WHERE e.first_name LIKE first_name 
AND e.last_name LIKE last_name);
END//