/* what are the top 3 values of total invoices? */

select total,customer_id,invoice_id from invoice 
order by total desc
limit 3
