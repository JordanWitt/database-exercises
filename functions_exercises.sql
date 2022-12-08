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

# ------------------ORDER BY EXERCISES------------------

SELECT first_name, last_name
FROM employees
ORDER BY last_name;

SELECT first_name, last_name
FROM employees
ORDER BY first_name;

SELECT first_name, last_name
FROM employees
ORDER BY last_name DESC;

SELECT first_name, last_name
FROM employees
ORDER BY first_name ASC ;

SELECT first_name, last_name
FROM employees
ORDER BY first_name ASC , last_name DESC ;

# EXERCISES

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irene', 'Vidya', 'Maya')
ORDER BY first_name;

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
WHERE last_name LIKE 'e%' OR first_name LIKE '%e'
ORDER BY emp_no ASC ;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e'
ORDER BY emp_no DESC;

# -----------------FUNCTIONS---------------------

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e'
ORDER BY emp_no DESC;
# THE EXAMPLE WERE USING

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'e%'
OR last_name LIKE '%e';

SELECT * FROM employees
WHERE MONTH(birth_date) = 12
    AND DAY(birth_date) = 25;

SELECT * FROM employees
WHERE (MONTH(birth_date) = 12
  AND DAY(birth_date) = 25)
    AND YEAR(hire_date)
    BETWEEN 1990 AND 1999;

SELECT * FROM employees
WHERE (MONTH(birth_date) = 12
    AND DAY(birth_date) = 25)
        AND YEAR(hire_date)
        BETWEEN 1990 AND 1999
        ORDER BY hire_date DESC ;