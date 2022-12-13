USE employees;
SELECT CONCAT(e.first_name, ', ', e.last_name)
AS full_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
AND e.emp_no = 10001;
# END OF CLASS EXAMPLE OF ASSOCIATE TABLES AND JOINS
# QUESTION 1
SELECT e.dept_name
AS Department_Name,
    CONCAT(e2.first_name, ', ', e2.last_name)
    as full_name
    FROM departments as e
    JOIN dept_manager as DM
    ON e.dept_no = dm.dept_no
    JOIN employees e2 on e2.emp_no = DM.emp_no
    JOIN titles as t on dm.emp_no = t.emp_no
    WHERE title = 'manager'
    and CURDATE() < dm.to_date
    order by dept_name;
# QUESTION 2
SELECT DISTINCT e.dept_name
           AS Department_Name,
       CONCAT(e3.first_name, ', ', e3.last_name)
         AS full_name
         FROM departments as e
         JOIN dept_manager as DM
         ON e.dept_no = dm.dept_no
         JOIN employees e3 on e3.emp_no = DM.emp_no
         JOIN titles as t on dm.emp_no = t.emp_no
         WHERE gender = 'f'
         AND CURDATE() < dm.to_date
         ORDER BY dept_name;
# QUESTION 3
SELECT t.title, COUNT(t.title)
AS total
FROM employees AS e
JOIN titles AS t ON e.emp_no = t.emp_no
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01' AND de.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY t.title;
# QUESTION 4
SELECT d.dept_name
AS Department_Name, s.salary
AS Salary,CONCAT(e4.first_name, ', ', e4.last_name)
AS Manager
    FROM departments AS d
    JOIN dept_manager AS dm
    ON d.dept_no = dm.dept_no
    JOIN employees e4 on e4.emp_no = dm.emp_no
    JOIN salaries s on e4.emp_no = s.emp_no
    JOIN titles t on e4.emp_no = t.emp_no
    WHERE title = 'Manager'
    AND CURDATE() < dm.to_date
    AND CURDATE() < s.to_date
    ORDER BY dept_name;
# BONUS
SELECT CONCAT(e.last_name,' ', e.first_name )AS 'Employee', d.dept_name AS Department, CONCAT(m.first_name, ' ', m.last_name) AS 'Manager'
FROM  departments d
JOIN  dept_manager dm on d.dept_no = dm.dept_no
JOIN  employees m ON m.emp_no = dm.emp_no
JOIN  employees e
JOIN titles t on m.emp_no = t.emp_no
    WHERE title = 'Manager'
    AND CURDATE() < dm.to_date
    AND CURDATE() < t.to_date
    ORDER BY Department;




