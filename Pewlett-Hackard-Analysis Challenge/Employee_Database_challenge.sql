
--Deliverable 1 Requirements
--You will earn a perfect score for Deliverable 1 by completing all requirements below:

--A query is written and executed to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955. (10 pt)
--The Retirement Titles table is exported as retirement_titles.csv. (5 pt)
​--A query is written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title. (15 pt)
​--The Unique Titles table is exported as unique_titles.csv. (5 pt)
--A query is written and executed to create a Retiring Titles table that contains the number of titles filled by employees who are retiring. (10 pt)
--The Retiring Titles table is exported as retiring_titles.csv. (5 pt)




-- SELECT * FROM retirement_titles; (1A)
SELECT es.emp_no,
		es.first_name,
		es.last_name,
		ti.title, 
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees as es
INNER JOIN titles as ti
ON (es.emp_no = ti.emp_no)
WHERE (es.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY (es.emp_no = ti.emp_no);

SELECT rt.emp_no,
		rt.first_name,
		rt.last_name,
		rt.title, 
		rt.to_date
INTO recent_titles
FROM retirement_titles AS rt;

-- SELECT * FROM unique_titles; (1B)
SELECT DISTINCT ON (ret.emp_no) ret.emp_no,
					ret.first_name,
					ret.last_name,
					ret.title 
INTO unique_titles
FROM recent_titles AS ret
ORDER BY ret.emp_no ASC, ret.to_date DESC;


--SELECT * FROM retiring_titles; (1C)
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
Group By ut.title
ORDER By COUNT DESC;


--Deliverable 2
-- A query is written and executed to create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965. (25 pt)
-- The Mentorship Eligibility table is exported and saved as mentorship_eligibilty.csv. (5 pt)

-- SELECT * FROM mentorship_eligibilty;
SELECT DISTINCT ON(e.emp_no) e.emp_no, 
    e.first_name, 
    e.last_name, 
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
INTO mentorship_eligibilty
FROM employees as e
Left outer Join dept_employee as de
ON (e.emp_no = de.emp_no)
Left outer Join titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;