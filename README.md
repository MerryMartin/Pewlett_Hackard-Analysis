# Pewlett_Hackard-Analysis

## Project Overview: 
The Human Resources analyst at Pewlett-Hackard has asked me to analyze their current employees so they can better prepare for the "silver tsunami" of future retirees.  Pewlett-Hackard is specifically interested to know how many employees will be retiring per title and which employees would be eligible to particiapte in a mentorship program.  

## Results: 

* The title that will have the most future retirees is Senior Engineer, with 25,916 employees potentially retiring.  
* Managers will be least affected by the "silver tsunami" since only 2 managers are in the list of future retirees.
* There are no managers in the list of mentorship eligible employees.

<img width="227" alt="retiring_titles" src="https://user-images.githubusercontent.com/115426070/205513081-621a2119-16ad-41d3-8234-4359c35a140b.png">

* There are many employees that have received promotions within Hewlett-Packard, as the example below displays.   

<img width="505" alt="promotions" src="https://user-images.githubusercontent.com/115426070/205513093-5bc3e078-87b9-44bc-8f7b-d12f625f2f86.png">

## Summary: 
### Potential Impact of "Silver Tsunami"

* There are 72,458 current employees, with seven different titles, that could potentially retire in the "silver tsunami".  All of these roles will need to be filled if these current employees retire.  
* The majority of the potential retirees (approximately 70%) are currently in senior level positions and would be qualified to mentor the next generation of Pewlett-Hackard employees.

### Future Human Resources Planning  

* One additional query that would provide insight into the upcoming "silver tsunami" is one that would count the number of mentor eligible employees, by their current titles. 
 
![mentor_query](https://user-images.githubusercontent.com/115426070/205513410-5db47f42-6003-438a-b454-999c3c5a6108.png)

* According to the resulting table, there are not nearly enough mentor eligible employees to potentially fill the roles being vacated by the retirees.  The current list of mentorees has only approximately 2% of the number of employees that will be potentially retiring. 

<img width="227" alt="mentor_titles" src="https://user-images.githubusercontent.com/115426070/205513112-9dc4c4f4-9b8a-4bbd-8e57-c25bb0438751.png">

* I would recommend expanding the mentor elibible list so more current employees could participate in the program. Expanding the mentor eligible birth year range by one year (to include 1964) greatly increases the mentor eligibility list.  The expanded list of mentorees has approximately 27% of the number of employees that will be potentially retiring. 

<img width="228" alt="new_mentor_titles" src="https://user-images.githubusercontent.com/115426070/205513123-b47999ac-8426-4daf-8abe-9cc8842c3c74.png">



