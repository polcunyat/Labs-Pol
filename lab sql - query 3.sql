use sakila;
-- 1 How many distinct (different) actors' last names are there?
select count(distinct(last_name)) from actor;
-- 2 In how many different languages where the films originally produced? (Use the column language_id from the film table)
select count(distinct(language_id)) from film;
-- 3 How many movies were released with "PG-13" rating?
select count(*) from film 
where rating = "PG-13";
-- 4 Get 10 the longest movies from 2006.
select * from film
where release_year = "2006"
order by length desc
limit 10;
-- 5 How many days has been the company operating (check DATEDIFF() function)?
select datediff(max(rental_date), min(rental_date)) as active_days from rental;
-- 6 Show rental info with additional columns month and weekday. Get 20.
select *, date_format(rental_date, '%M') as month , date_format(rental_date, '%W') as weekday
from rental
limit 20;
-- 7 Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
select rental_date,
case
when weekday(rental_date)= '1' then 'workday'
when weekday(rental_date)= '2' then 'workday'
when weekday(rental_date)= '3' then 'workday'
when weekday(rental_date)= '4' then 'workday'
when weekday(rental_date)= '5' then 'workday'
else 'weekend'
end as 'day_type'
from rental;
-- 8 How many rentals were in the last month of activity?
select date(max(rental_date))- INTERVAL 30 DAY, date(max(rental_date))
from rental;

select count(*) from rental
where date(rental_date) between date('2006-01-15') and date('2006-02-14');