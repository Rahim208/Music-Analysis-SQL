/* write query to return the email, first name, last name and genre of all rock music listners.
 Return  your list  ordered alphabetically by email starting with A */ 

select distinct email as Email,first_name as FirstName, last_name as LastName, genre.name as Name 
from customer
join invoice on invoice.customer_id = customer.customer_id 
join invoice_line on invoice_line.invoice_id = invoice.invoice_id  
join track on track.track_id = invoice_line.track_id
join genre on genre.genre_id = track.genre_id
Where genre.name LIKE 'Rock'
order by email