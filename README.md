# Pewlett_Hackard-Analysis

## Project Overview: 
The Human Resources analyst at Pewlett-Hackard has asked me to analyze their current employees so they can better prepare for the "silver tsunami" of future retirees.  Pewlett-Hackard is specifically interested to know how many employees will be retiring per title and which employees would be eligible to particiapte in a mentorship program.  

## Results: 



* The title that will have the most future retirees is Senior Engineer, with 25,916 employees potentially retiring.  
* Managers will be least affected by the "silver tsunami" since only 2 managers are in the list of future retirees.
* There are no managers in the list of mentorship eligible employees


(insert retiring_titles.png) 


* There are many employees that have received promotions within Hewlett-Packard, as the example below displays.   

(insert promotions.png)






## Summary: 
### Potential Impact of "Silver Tsunami"

* There are 72,458 current employees, with seven different titles, that could potentially retire in the "silver tsunami".  All of these roles will need to be filled if these current employees retire.  
* The majority of the potential retirees (approximately 70%) are currently in senior level positions and would be qualified to mentor the next generation of Pewlett-Hackard employees.

### Future Human Resources Planning  

* One additional query that would provide insight into the upcoming "silver tsunami" is one that would count the number of mentor eligible employees, by their current titles. 
 
** SELECT COUNT (emp_no),
    title
INTO mentor_titles
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT (emp_no) DESC

* According to the resulting table, there are not nearly enough mentor eligible employees to potentially fill the roles being vacated by the retirees.  The current list of mentorees has only approximately 2% of the number of employees that will be potentially retiring. 

(insert mentor_titles.png)

* I would recommend expanding the mentor elibible list so more current employees could participate in the program. Expanding the mentor eligible birth year range by one year (to include 1964) greatly increases the mentor eligibility list.  The expanded list of mentorees has approximately 27% of the number of employees that will be potentially retiring. 


(CREATE and insert new mentor titles table image and query)


