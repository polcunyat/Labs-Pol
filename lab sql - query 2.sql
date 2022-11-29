-- lab sql - query
use sakila;
-- 1 Select all the actors with the first name ‘Scarlett’
select * from actor
where first_name = 'Scarlett';
-- 2 Select all the actors with the last name ‘Johansson’.
select * from actor
where last_name = 'Johansson';
-- 3 How many films (movies) are available for rent?
select count(film_id) from film;
-- 4 How many films have been rented?
select * from film;
-- 5 What is the shortest and longest rental period?
select min(rental_duration) from film;
-- 6 What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length) as min_duration from film;
select max(length) as max_duration from film;
-- 7 What's the average movie duration?
select avg(length) from film;
-- 8 What's the average movie duration expressed in format (hours, minutes)?
select concat(floor(avg(length)/60), 'h', mod(avg(length),60), 'm') from film;
select concat(floor(avg(length)/60), 'h', avg(length)%60, 'm') from film; -- same as line 21
select  130%60;
-- 9 How many movies are longer than 3 hours?
select * from film
where length > 180;
-- 10 Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(upper(left(first_name, 1)), lower(substring(first_name, 2, length(first_name)))) as formatted_first_name from customer;
select upper(last_name) as formatted_last_name from customer;
select lower(email) as formatted_email from customer;
-- 11 What's the length of the longest film title?
select max(length(title)) as longest_film from film;