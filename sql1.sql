SELECT DISTINCT
    e.emp_no AS 'Employee no',
    e.birth_date AS 'Birth date',
    e.first_name AS 'First name',
    e.last_name AS 'Last Name',
    TIMESTAMPDIFF(YEAR,
        e.birth_date,
        CURDATE()) AS 'Age',
    e.gender AS 'Gender',
    e.hire_date AS 'Inception date',
    TIMESTAMPDIFF(YEAR,
        e.hire_date,
        CURDATE()) AS 'Years of service',
    s.salary AS 'Salary',
    t.title AS 'Title',
    d.dept_no AS 'Dept no'
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
        JOIN
    titles t ON s.emp_no = t.emp_no
        JOIN
    dept_emp d ON e.emp_no = d.emp_no
ORDER BY e.last_name;