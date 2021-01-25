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
SELECT * FROM customer
WHERE first_name IN ('John','Dennis');

--
SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%'
ORDER BY last_name;

--How many payment transactions were greater than $5.00? 
SELECT COUNT(* )FROM payment
WHERE amount > 5.00;

--How many actors have a first name that starts with the letter P?
SELECT COUNT(*) FROM actor
WHERE first_name LIKE ('P');

--How many unique districts are our customers from?
SELECT COUNT(DISTINCT district) FROM address;

--Retrieve the list of names for those distinct districts from the previous question
SELECT DISTINCT district FROM address
ORDER BY district;

--How many films have a rating of R and a replacement cost between $5 and $15?
SELECT COUNT(*) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 and 15;

--How many films have the word Truman somewhere in the title?
SELECT COUNT(*)FROM film
WHERE title ILIKE '%Truman%';

--How many payments did each staff member handle and who gets the bonus? 
SELECT staff_id, COUNT(payment_id) AS total_transaction FROM payment
GROUP BY staff_id
ORDER BY total_transaction;

--What is the average replacement cost per MPAA rating? 
SELECT rating, ROUND(AVG(replacement_cost),2) AS AVG_replacement_cost FROM film
GROUP BY rating
ORDER BY avg_replacement_cost;

--What are the customer ids of the top 5 customers by total spend?
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;


