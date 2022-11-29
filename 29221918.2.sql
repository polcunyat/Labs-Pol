use sakila;

select count(last_name)
from sakila.actor;

select count(language_id)
from sakila.film;

select count(rating)
from sakila.film
where rating = 'PG-13';

select film.title
from sakila.film
where release_year = 2006
order by length
limit 10;

select datediff(max(rental_date), min(rental_date)) as 'Active Days' 
from rental;

select *, date_format(rental_date, '%M') as 'Month', date_format(rental_date, '%W') as 'Weekday'
from rental
limit 20;

select *, 
case when date_format(rental_date, '%W') in ('Saturday', 'Sunday') then 'Weekend' 
else 'Workday' end as day_type
from rental;

select date(max(rental_date))- INTERVAL 30 DAY, date(max(rental_date))
from rental;

select count(*)
from rental
where date(rental_date) between date('2006-01-15') and date('2006-02-14');

