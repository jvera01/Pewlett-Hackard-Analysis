-- Skill Drill 7.3.6: Create a query that returns the following info for the Sales & Development Teams
-- Requested list includes: employee numbers, first name, last, department name
select ce.emp_no,
	ce.first_name,
	ce.last_name,
	de.dept_no,
	dpt.dept_name
from current_emp as ce
	inner join dept_emp as de
		on (ce.emp_no = de.emp_no)
	inner join departments as dpt
		on (de.dept_no = dpt.dept_no)
where dept_name in ('Sales', 'Development'); 