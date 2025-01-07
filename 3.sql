/* Who is the best customer? */

select customer.customer_id, first_name, last_name, sum(total) as total_spending
from customer
join invoice ON customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total_spending desc
limit 1