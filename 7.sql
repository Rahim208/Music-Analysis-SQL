/*Senior most employee based on Job title*/

select title,last_name,first_name from employee
Order by levels desc
limit 1