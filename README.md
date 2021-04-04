# Pewlett-Hackard-Analysis

    Deliverable 3 Requirements
    Structure, Organization, and Formatting (6 points)
    The written analysis has the following configuration, organization, and formatting:

    There is a title, and there are multiple sections. (2 pt)
    Each unit has a heading and subheading. (2 pt)
    Links to images are working and displayed correctly. (2 pt)
    Analysis (14 points)
    The written analysis has the following:

# Overview of the analysis:
   * Now that Bobby has proven his SQL chops, his manager has given both of you two more assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, you'll write a report that summarizes your analysis and helps prepare Bobby's manager for the "silver tsunami" as many current employees reach retirement age.
# The purpose of the new analysis is well defined. (3 pt) Results:
   * The purpose of the Pwelett Hackard analysis is to determine the number of retiring employees by title and identify which employees are eligible to participate in the mentorship program. The retiring employees by title information will show the titles of all employees born between January 1, 1952, and December 31, 1955. We were able to Number of Retiring Employees by Title, The Employees Eligible for the Mentorship Program, and A write report on the employee database analysis.

# There is a bulleted list with four major points from the two analysis deliverables. (6 pt) Summary:
   In the Pwelett Hacker Analysis were able to identify the following major points. Attached I have included the a link to resutls in a picure and csv files. 

   *  We were able to Number of Retiring Employees by Title. 
        
   *  We were able to identify the titles that will be retiring.

   *  We were able to identify unique titles.

   *  The Employees Eligible for the Mentorship Program.



# Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may offer more insight into the upcoming "silver tsunami."

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
    Pwelett Hackard will have a total of 90398 roles that will need to be filled. We have helped to identify that 17187 employees will be retiring within the first seven months. 
     
     SELECT e.emp_no,
                e.first_name,
                e.last_name,
                t.title,
                t.from_date,
                s.salary
            INTO add_queries_more_insight7 
            FROM employees AS e
                INNER JOIN titles as t
                ON (e.emp_no = t.emp_no)
                INNER JOIN salaries as s
                ON (t.emp_no = s.emp_no)
            WHERE (e.birth_date BETWEEN '1952-01-01' AND '1952-07-31');

            SELECT COUNT(emp_no)
            FROM add_queries_more_insight7;

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
  When you query the count of Pwelett Hackerd mentorship eligibility, there are 1940 mentorship eligible employees. 
            
            
            SELECT COUNT(emp_no)
            FROM mentorship_eligibilty;


