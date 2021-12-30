--DELIVERABLE 1 Retrieve the emp_no, first_name, and last_name columns from the employees table
SELECT e.emp_no, 
    e.first_name, 
    e.last_name,
    t.title,
    t.from_date,
    t.to_date
INTO retirement_titles 
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;  
    
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM ;
ORDER BY emp_no ASC, to_date DESC; 

--SELECT * FROM unique_titles;
--RETRIEVE number of employees by their most recent job tilte who are about to retire
SELECT COUNT (title),title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title)DESC;

SELECT * FROM retiring_titles;


-- Deliverable 2 create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965. 

--mentorship_eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no) 
INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
--Get current employee
WHERE de.to_date = '9999-01-01' 
--Get employees with specific birthdate
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;



