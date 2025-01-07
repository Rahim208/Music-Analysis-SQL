/* which city has the best customers? */

select billing_city, sum(total) as invoice_total
from invoice
group by billing_city
order by invoice_total desc
limit 1
