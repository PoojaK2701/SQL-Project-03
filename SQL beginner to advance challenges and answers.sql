**Questions around SQL statements fundamentals** -
Q1- What we need to know is the names of these people, their first and last name, so we can address them.

SELECT first_name, last_name, email FROM customer;

Q2- Situation 
We have a visitor who isn't from the USA.
They're from Australia and so they're not familiar with the Motion Picture Association of America's movie rating system such as PG, PG, 13, R, etc..
So we need to know what are the types of ratings we have in our database.
So what ratings do we have available?

SELECT * FROM film
SELECT DISTINCT (rating) FROM film;

Q3- How many rows are there in any column in the Payment table? Also, how many actual no. of unique rows in amount column are there in the Payment table?

SELECT COUNT(*) FROM payment;
SELECT COUNT (DISTINCT (amount)) FROM payment;

Q4- Challenge, 
A customer forgot their wallet at our store and we need to track down their email to inform them.
So the question is, what is the email for the customer with the name Nancy Thomas?

SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

Q5- Challenge,
So A customer wants to know what the movie Outlaw Hanky is about.
Could you give them the description for the movie Outlaw Hanky?

SELECT description FROM film
WHERE title = 'Outlaw Hanky';

Q6- Challenge,
A customer is late on their movie return and we've mailed them a letter to their address at 259 Ipoh Drive.
And we should also call them on the phone to let them know.
So what we want to do is, can you get us the phone number for the customer who lives at this address of 259 Ipoh Drive?

SELECT phone FROM address
WHERE address = '259 Ipoh Drive';

Q7- Challenge task, we want to reward our first ten paying customers.
What are the customer IDs of the first ten customers who ever created a payment?

SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

Q8- Challenge - A customer wants to quickly rent a video to watch over their short lunch break.
What are the titles of the five shortest that is in length of runtime movies?

SELECT COUNT (*) FROM film
WHERE length <= 50;

Q9- How many payment transactions were greater than $5.00?

SELECT COUNT(*) FROM payment
WHERE amount > 5;

Q10- How many actors have a first name that starts with the letter P?

SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

Q11- How many unique districts are our customers from?

SELECT COUNT (DISTINCT(district)) FROM address;

Q12- Retrieve the list of names for those distinct districts from the previous question.

SELECT DISTINCT(district) FROM address;

Q13- How many films have a rating of R and a replacement cost between $5 and $15?

SELECT COUNT(*) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN '5' AND '15';

Q14- How many films have the word Truman somewhere in the title?

SELECT COUNT(title) FROM film
WHERE title ILIKE '%Truman%';
