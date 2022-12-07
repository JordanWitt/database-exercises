USE employees;

SELECT emp_no, first_name
FROM employees
WHERE first_name IN ('Irene', 'Vidya', 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT first_name, gender
FROM employees
WHERE (first_name IN ('Irene')
OR first_name IN ('Vidya')
OR first_name IN ('Maya'))
AND gender = 'm';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' OR last_name NOT LIKE '%qu%';