--retirement titles
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e 
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no

--create retirement titles table that holds all the titles of employees 
-- who were born between January 1, 1952 and December 31, 1955.
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

--# of employees retiring per title 
SELECT COUNT (emp_no),
	title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT (emp_no) DESC

-- mentor eligible employees born between 1/1/65 and 12/31/65
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility	
FROM employees as e
	INNER JOIN dept_emp as de
	ON e.emp_no = de.emp_no
	INNER JOIN titles as ti
	ON e.emp_no = ti.emp_no
WHERE (de.to_date = '9999-01-01')  
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no, de.to_date DESC;

--count by mentorship employees
SELECT COUNT (emp_no),
	title
INTO mentor_titles
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT (emp_no) DESC;

-- mentor eligible employees  
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO new_mentorship_eligibility	
FROM employees as e
	INNER JOIN dept_emp as de
	ON e.emp_no = de.emp_no
	INNER JOIN titles as ti
	ON e.emp_no = ti.emp_no
WHERE (de.to_date = '9999-01-01')  
AND (ti.to_date = '9999-01-01') 
AND (e.birth_date BETWEEN '1964-01-01' AND '1965-12-31')
ORDER BY e.emp_no, de.to_date DESC;

--count by new mentorship employees
SELECT COUNT (emp_no),
	title
INTO new_mentor_titles
FROM new_mentorship_eligibility
GROUP BY title
ORDER BY COUNT (emp_no) DESC







