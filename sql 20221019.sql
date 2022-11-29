use sakila;

select distinct (last_name)
from actor
group by last_name
having count(*) = 1;

select distinct(last_name)
from actor
group by last_name
having count(*) > 1;

select staff_id, count(*) as 'Processed rentals'
from rental
group by staff_id;

select release_year, count(*) as 'Nº released films'
from film
group by release_year;

select rating, count(*) as 'Films per rating'
from film
group by rating;

select rating, round(avg(length), 2) as 'Average length'
from film
group by rating;

select rating, avg(length) as 'Rating over 2h long on avg'
from film
group by rating
having avg(length) > 120;


