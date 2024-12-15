-- Question 1:
SELECT employees.emp_no, 
		employees.last_name, 
		employees.first_name, 
		employees.sex, 
		salaries.salary
FROM employees 
LEFT JOIN salaries 
ON employees.emp_no = salaries.emp_no;

-- Question 2:
SELECT employees.emp_no, 
		employees.last_name, 
		employees.first_name, 
		employees.sex, 
		salaries.salary
FROM employees 
LEFT JOIN salaries 
ON employees.emp_no = salaries.emp_no
where employees.hire_date between '1986-01-01' and '1986-12-31';

-- Question 3:
SELECT dept_manager.dept_no,
		departments.dept_name,
		employees.emp_no, 
		employees.last_name, 
		employees.first_name
		
FROM dept_manager
	Left join departments 
		ON dept_manager.dept_no = departments.dept_no
	LEFT JOIN employees 
		ON employees.emp_no = dept_manager.emp_no
		
where employees.emp_title_id = 'm0001';

-- Question 4:
SELECT dept_manager.dept_no,
		employees.emp_no, 
		employees.last_name, 
		employees.first_name,
		departments.dept_name
		
FROM dept_manager
	LEFT JOIN employees 
		ON employees.emp_no = dept_manager.emp_no
	LEFT JOIN departments 
		ON dept_manager.dept_no = departments.dept_no	

-- Question 5:
SELECT 	employees.first_name,
		employees.last_name, 
		employees.sex
		
FROM employees 

where employees.first_name = 'Hercules'
	and employees.last_name LIKE 'B%';

-- Question 6:
SELECT 	dept_manager.Dept_no,
		employees.emp_no,
		employees.first_name,
		employees.last_name
		
FROM employees 
	left join 
		dept_manager
	on employees.emp_no = dept_manager.emp_no

where dept_manager.Dept_no = 'D007';

-- Question 7:
SELECT dept_manager.Dept_no,
       employees.emp_no,
       employees.last_name,
       employees.first_name,
       departments.dept_name
FROM employees
LEFT JOIN dept_manager
    ON employees.emp_no = dept_manager.emp_no
LEFT JOIN departments
    ON dept_manager.Dept_no = departments.Dept_no
WHERE dept_manager.Dept_no in ('D007', 'D005');

-- Question 8:
SELECT employees.last_name, count(*) as frequency

FROM employees
group by employees.last_name 
order by frequency DESC;

