-- 1. Last name "Astaire" is present only one time with actor "Angelina Astaire", hence we would want this in our output list.
select  last_name,count(last_name) as count  from sakila.actor
group by last_name 
having  count =1 
order by last_name;

-- 2 . Which last names appear more than once? We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once
select  *,count(last_name) as count  from sakila.actor
group by last_name 
having  count > 1 
order by last_name;

-- 3. Using the rental table, find out how many rentals were processed by each employee.
select staff_id ,count(rental_id) as rentals from sakila.rental
group by staff_id;

-- 4. Using the film table, find out how many films were released each year.
select title, release_year,count(title) as film_count  from sakila.film
group by release_year;


-- 5. Using the film table, find out for each rating how many films were there.
select rating, count(title) from sakila.film
group by rating;

-- 6. What is the mean length of the film for each rating type.
-- Round off the average lengths to two decimal places 
select rating, round(avg(length), 2) as average_length from film
group by rating;

-- 7. Which kind of movies (rating) have a mean duration of more than two hours?

select rating, round(avg(length)) as count from sakila.film
group by rating
having count >= 120;

