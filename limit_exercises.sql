USE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irene', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irene', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e'
ORDER BY emp_no ASC
LIMIT 20 OFFSET 50;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e'
ORDER BY emp_no DESC
LIMIT 20;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 10;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 25 OFFSET 50;

# EXERCISES

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'z%'
ORDER BY last_name DESC
LIMIT 10;

SELECT emp_no, salary
FROM salaries
ORDER BY salary DESC
LIMIT 5;

SELECT emp_no, salary
FROM salaries
ORDER BY salary DESC
LIMIT 4 OFFSET 46;