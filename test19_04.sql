-- 1. Create dept table
CREATE TABLE dept (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

-- 2. Create emp table
CREATE TABLE emp (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    job_title VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE,
    dept_id INT,
    manager_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(dept_id),
    FOREIGN KEY (manager_id) REFERENCES emp(emp_id)
);

-- 3. Insert sample data into dept
INSERT INTO dept (dept_id, dept_name, location) VALUES
(1, 'HR', 'New York'),
(2, 'Finance', 'Chicago'),
(3, 'IT', 'San Francisco'),
(4, 'Marketing', 'Boston');

-- 4. Insert sample data into emp
INSERT INTO emp (emp_id, emp_name, job_title, salary, hire_date, dept_id, manager_id) VALUES
(101, 'Alice', 'Manager', 90000, '2022-01-10', 1, NULL),
(102, 'Bob', 'Clerk', 40000, '2023-03-15', 1, 101),
(103, 'Charlie', 'Analyst', 60000, '2023-07-20', 2, 101),
(104, 'David', 'Manager', 95000, '2021-06-01', 3, NULL),
(105, 'Eve', 'Developer', 70000, '2023-05-12', 3, 104),
(106, 'Frank', 'Developer', 72000, '2023-08-30', 3, 104),
(107, 'Grace', 'Sales Executive', 50000, '2024-02-10', 4, NULL);

-- 5. Queries

-- Q1: List all employees and their department names
SELECT emp.emp_name, dept.dept_name 
FROM emp 
JOIN dept ON emp.dept_id = dept.dept_id;

-- Q2: Find the employee with the highest salary
SELECT * FROM emp 
WHERE salary = (SELECT MAX(salary) FROM emp);

-- Q3: Count the number of employees in each department
SELECT dept_id, COUNT(*) AS employee_count 
FROM emp 
GROUP BY dept_id;

-- Q4: List employees who work under a manager
SELECT * FROM emp 
WHERE manager_id IS NOT NULL;

-- Q5: Find departments that have no employees
SELECT * FROM dept 
WHERE dept_id NOT IN (SELECT DISTINCT dept_id FROM emp);

-- Q6: Get the average salary of each department
SELECT dept_id, AVG(salary) AS avg_salary 
FROM emp 
GROUP BY dept_id;

-- Q7: List employees who were hired in the year 2023
SELECT * FROM emp 
WHERE YEAR(hire_date) = 2023;

-- Q8: Find the names of managers and how many people they manage
SELECT e.emp_name AS manager_name, COUNT(m.emp_id) AS num_of_employees 
FROM emp e 
JOIN emp m ON e.emp_id = m.manager_id 
GROUP BY e.emp_name;

-- Q9: List employees whose salary is above the average salary of all employees
SELECT * FROM emp 
WHERE salary > (SELECT AVG(salary) FROM emp);

-- Q10: List all departments along with their employees (even if a department has no employees)
SELECT d.dept_name, e.emp_name 
FROM dept d 
LEFT JOIN emp e ON d.dept_id = e.dept_id;
