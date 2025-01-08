---- Retriev All Employees
SELECT * 
FROM listoforders.employees;


--- Get the names of employees who are in the 'Sales' department:
SELECT * 
FROM employees 
WHERE JobTitle = 'Financial planner';

--- Get the average salary of employees in the 'Engineering' department:
SELECT AVG(salary) AS average_salary 
FROM employees 
WHERE JobTitle = 'Financial planner';

--- Update an employees salary:

UPDATE employees
SET salary = '55000'
WHERE EmployeeID = 'EMP001';

--- Count the number of employees in each department:
SELECT JobTitle, COUNT(*) AS employee_count
FROM employees
GROUP BY JobTitle;

--- List employees who have a salary greater than a certain value (e.g., 50,000):
SELECT name, salary
FROM employees
WHERE salary > 50000;

--- Retrieve the number of employees per country:
SELECT city, COUNT(*) AS num_employees
FROM employees
GROUP BY city;

--- Find employees with the same job title (position):
SELECT name, JobTitle
FROM employees
WHERE JobTitle = 'Financial planner';

--- Select employees with a salary between a range (e.g., 40,000 and 60,000):
SELECT name, salary
FROM employees
WHERE salary BETWEEN 40000 AND 60000;

