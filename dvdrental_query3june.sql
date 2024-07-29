/*select *from customer where first_name LIKE 'J%'

how many no of words in a firstname starting from J in table customer
there are 65 total customers 
select count(*) from  customer where first_name LIKE 'J%'

----------------------------------------------------------------------------------------------

how many number of entries in a firstname strat from J and ends with S

select count(*) from  customer where first_name LIKE 'J%' AND last_name LIKE 'S%'

-----------------------------------------------------------------------------------------------------
select *from customer where first_name ILIKE 'j%' AND last_name ILIKE 'j%'


select *from customer where first_name ILIKE 'J%' AND last_name ILIKE 'S%'

--------------------------------------------------------------------------------------------------------

anywhere er is present : it will show all records 

select *from customer where first_name LIKE '%er%' 

select *from customer where first_name LIKE '%her%'

----------------------------------------------------------------------------
select *from customer where first_name LIKE '_her%'


select *from customer where first_name LIKE 'A%' order BY last_name

select *from customer where first_name LIKE 'A%' and last_name NOT LIKE 'B%' order by last_name
---------------------------------------------------------
challenge1: how many payment transaction were  greater than $5.00?

select count(amount) from payment where amount>5; 
--------------------------------------------------------------------------------
challenge2:how many actors have a first name that starts with the letter p?

select count(*) from actor where first_name LIKE 'P%' 
--------------------------------------------------------------------------------
challenge3:how many unique districts are our customers from?

select count(distinct(district)) from address;
--------------------------------------------------------------------------------

select distinct( district) from address

-------------------------------------------------------------------------------------
challenge5: how many films have a rating of R and a replacement cost between $5 and $15

select count(*) from film where rating='R' AND replacement_cost Between 5 AND 15;
-------------------------------------------------------------------------------------------
challenge6: how many films have the word truman somewhere in the title?

select count(*) from film where title LIKE '%Truman%' 

-------------------------------------------------------------------------------------------

Aggregate function 
select min(replacement_cost) from film;
select max(replacement_cost) from film;
select max(replacement_cost), min(replacement_cost) from film

-----------------------------------------------------------------------------------------
7 july 2024
select *from payment
select customer_id,staff_id, SUM(amount) from payment group by staff_id, customer_id

select staff_id,customer_id, SUM(amount) from payment group by staff_id,customer_id

select staff_id,customer_id ,sum(amount) from payment  where customer_id<=3 group by staff_id, customer_id order by staff_id

select staff_id,customer_id, sum(amount) from payment group by staff_id, customer_id order by customer_id

---------------------------------------------------------------------------------------------
select *from payment

 ### i want only date not timestamp
select date(payment_date) from payment

select date(payment_date),sum(amount) from payment group by date(payment_date)

select date(payment_date),sum(amount) from payment group by date(payment_date) order by sum(amount)

select date(payment_date),sum(amount) from payment group by date(payment_date) order by sum(amount) desc

-------------------------------------------------------------------------------------------------
##challenge 1 query answer below
select staff_id, count(amount) from payment group by staff_id

##challenge2 query ans below
select rating ,avg(replacement_cost) from film group by rating

select rating,round(avg(replacement_cost),2) from film group by rating

select customer_id,sum(amount) from payment group by customer_id order by sum(amount) desc limit 5


select customer_id from payment group by customer_id

select customer_id ,sum(amount) from payment where  customer_id  not in (184,87,477) group by customer_id

select customer_id ,sum(amount) from payment group by customer_id having sum(amount)>100

-----------------------------------------
7 june 2024
challenge

select customer_id,count(*) from payment group by customer_id having count(*)>=40;

select customer_id, sum(amount) from payment where staff_id=2 group by customer_id having sum(amount)>100;*/

--------------------------------------
/*Alias name to column
select amount as rental_price from payment;
select sum(amount) as net_revenu  from payment;
select count(amount) as num_transactions from payment
select count(*) as num_transactions from payment
select customer_id, sum(amount) from payment group by customer_id
select customer_id, sum(amount) as total_spent from payment group by customer_id
select customer_id,sum(amount) from payment group by customer_id having sum(amount)>100
select customer_id,sum(amount) as total_spent from payment group by customer_id having sum(amount)>100

##below query is generates error
select customer_id,sum(amount) as total_spent from payment group by customer_id having sum(total_spent)>100

select customer_id, amount from payment where amount>2
select customer_id ,amount as new_name from payment where new_name>12

------------------------------------------------------------------------------
#### inner join 
select *from payment
select *from customer*/
/*select payment_id, payment.customer_id, first_name from payment inner join customer on payment.customer_id=customer.customer_id

select payment_id, payment.customer_id, first_name from customer inner join payment on payment.customer_id=payment.customer_id;*/

/*------------------------------------------------------------------------------------
##full outer join
select *from customer full outer join payment on customer.customer_id=payment.customer_id

-----------------------------------------------------
##left join
select * from film
select * from inventory
select film.film_id , title, inventory_id from film left join inventory on inventory.film_id=film.film_id
select film.film_id , title, inventory_id,store_id from film left join inventory on inventory.film_id=film.film_id*/

/*##left join with where clause
select film.film_id , title, inventory_id,store_id from film left join inventory on inventory.film_id=film.film_id where inventory.film_id is null
*/

---------------------------------------------------------------------
/*##right join

select film.film_id , title, inventory_id,store_id from inventory right join film on inventory.film_id=film.film_id */
select film.film_id , title, inventory_id,store_id from inventory right join film on inventory.film_id=film.film_id where inventory.film_id is null




