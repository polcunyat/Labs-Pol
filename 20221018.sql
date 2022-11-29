use sakila;

select distinct rating
from sakila.film;

select distinct release_year
from sakila.film;

select title
from sakila.film
where title regexp 'ARMAGEDDON';

select title
from sakila.film
where title regexp 'APOLLO';

select title
from sakila.film
where title regexp 'APOLLO$';

SELECT title
FROM sakila.film
WHERE title regexp 'DATE';

SELECT title
from sakila.film
order by length(title) desc
limit 10;

select title 
from sakila.film
order by length desc
limit 10;

select count(title)
from 
