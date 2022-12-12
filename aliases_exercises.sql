USE employees;

SELECT CONCAT(first_name, ' ', last_name)
AS full_name
FROM employees
LIMIT 10;

SELECT CONCAT(first_name, ' ', last_name)
AS full_name FROM employees
ORDER BY full_name LIMIT 10;

SELECT CONCAT(first_name, ' ', last_name)
AS full_name
FROM employees
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;
# END OF CLASS EXAMPLES------------------------

SELECT CONCAT(last_name, ', ', first_name)
AS full_name
FROM employees
LIMIT 10;

SELECT CONCAT(emp_no, ' - ',last_name, ', ', first_name)
AS full_name, birth_date
FROM employees
LIMIT 10;