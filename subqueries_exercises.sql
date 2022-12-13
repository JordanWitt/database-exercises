USE employees;
# -------------------QUESTION 1------------------

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );
# -------------------QUESTION 2------------------

SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );
# -------------------QUESTION 3------------------

SELECT CONCAT(first_name, ', ',last_name)
AS Full_Name
FROM employees
WHERE gender = 'f'
AND emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01'
    );

# ----------------------BONUS 1 ----------------------

SELECT dept_name AS Department
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE CURDATE()< dept_manager.to_date
    AND emp_no IN (
        SELECT emp_no FROM employees
        WHERE gender = 'f'
        )
    );
# ----------------------BONUS 2 ---------------------
SELECT first_name, last_name
FROM employees
WHERE emp_no = (
    SELECT emp_no
    FROM salaries
    ORDER BY salary DESC
    LIMIT 1
    );