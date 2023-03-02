USE sakila ;

#In the table actor, which are the actors whose last names are not repeated? 
SELECT LAST_NAME, COUNT(*) 
FROM ACTOR
GROUP BY LAST_NAME
HAVING COUNT(LAST_NAME) = 1 ;

#Which last names appear more than once?
SELECT LAST_NAME, COUNT(LAST_NAME) AS NAME_REPEATED
FROM ACTOR
GROUP BY LAST_NAME
HAVING COUNT(LAST_NAME) > 1 ;

#Using the rental table, find out how many rentals were processed by each employee.
SELECT STAFF_ID, COUNT(RENTAL_ID) AS RENTALS_PROCESSED
FROM RENTAL
GROUP BY STAFF_ID ;

#Using the film table, find out how many films were released each year.
SELECT RELEASE_YEAR, COUNT(TITLE) AS NO_OF_FILMS
FROM FILM
GROUP BY RELEASE_YEAR ;

#Using the film table, find out for each rating how many films were there.
SELECT RATING, COUNT(TITLE) AS NO_OF_FILMS 
FROM FILM
GROUP BY RATING ;

#What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
SELECT RATING, 
ROUND(AVG(LENGTH), 2) AS MEAN_LENGTH
FROM FILM
GROUP BY RATING ;

#Which kind of movies (rating) have a mean duration of more than two hours?
SELECT RATING 
FROM FILM
GROUP BY RATING
HAVING ROUND(AVG(LENGTH), 2) > 120