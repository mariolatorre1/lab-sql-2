use sakila;
-- 1. Select all the actors with the first name ‘Scarlett’.
select first_name, last_name from actor
where first_name = "Scarlett";

-- 2. Select all the actors with the last name ‘Johansson’.
select first_name, last_name from actor
where last_name = "Johansson";

-- 3. How many films (movies) are available for rent?
select count(film_id) as "Number of Films" from film;

-- 4. How many films have been rented?
select count(rental_id) as "Total Rents" from rental;

-- 5. What is the shortest and longest rental period?
select min(rental_duration) as "Shortest Rental Period", max(rental_duration) as "Longest Rental Period" from film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length) as "min_duration", max(length) as "max_duration" from film;

-- 7. What's the average movie duration?
select round(avg(length), 2) from film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
select left(sec_to_time(avg(length)*60), 5) from film;

-- 9. How many movies longer than 3 hours?
select count(length) from film
where length > 180;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(left(first_name,1), lower(substr(first_name,2)), ' ', last_name, ' ', '-', ' ', lower(email)) as "Name and Email" from customer;

-- 11. What's the length of the longest film title?
select max(length(title)) from film;
