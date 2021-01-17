--Use SELECT statement to grab the first and last names of every customer and their email address. 
SELECT first_name, last_name, email FROM customer;

--A customer wants to know the types of ratings we have in our database
SELECT DISTINCT rating FROM film;

--A customer wants know all the movies available where the length is less than 60 minutes
SELECT * FROM film
WHERE length < 60;

--A customer wants to rent movie that cost less than $4.99 and is rated R 
SELECT film_id, title, description, release_year, rental_rate, rating FROM film
WHERE rental_rate < 4.99 AND rating = 'R';

--A customer forgot their wallet at our store! What's the email for customer Nancy Thomas?
SELECT first_name, last_name, email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

--A customer wants to know what the movie "Outlaw Hanky" is about
SELECT title, description from film
WHERE title = 'Outlaw Hanky';

--A customer is late on their return, Can you get the phone number for the customer who lives at '259 Ipoh Drive'?
SELECT phone FROM address
WHERE address = '259 Ipoh Drive';

--What are the customer ids of the first 10 customers who created a payment? 
SELECT customer_id FROM payment
WHERE amount != 0.00
ORDER BY payment_date ASC
LIMIT 10;

--What are the titles of the 5 shortest (in lenght of runtime) movies?
SELECT title, length FROM film
ORDER BY length ASC
LIMIT 5;

--How many movies are there with 50 mins or less run time. 
SELECT COUNT(length) from film
WHERE length < 50;

--
SELECT * FROM payment
WHERE amount BETWEEN 8 AND 9;

