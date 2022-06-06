
--  create a list of unique employees numbwer who are ready to be retiered 
-- Their date of birth would be between 1952 and 1955
SELECT e.emp_no,
       e.first_name,
       e.last_name,
       t.title,
       t.from_date,
       t.to_date
INTO potential_retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- create a list of unique employees number who are ready to be retiered and their recent title
-- unique Employees, who are currently employed -  with to_date '9999-01-01')
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
       e.last_name,
       t.title,
       t.from_date,
       t.to_date

INTO ret_emp_title
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (t.to_date = '9999-01-01')
order by e.emp_no, emp_no DESC;

-- Create a list of employees by title  and count how many are about to retire
SELECT COUNT(ret.emp_no),ret.title
INTO retiering_titles
FROM ret_emp_title as ret
GROUP BY title 
ORDER BY COUNT(title) DESC;

--Mentorship Eligibility table: employees with their lates title, currently employed, DOB between 01/01/65 and 12/31/65
SELECT DISTINCT ON (e.emp_no) e.emp_no,
       e.first_name,
       e.last_name,
	   e.birth_date,
       de.from_date,
       de.to_date,
	   t.title
INTO mentorship_candidates
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no =de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no =t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no;

