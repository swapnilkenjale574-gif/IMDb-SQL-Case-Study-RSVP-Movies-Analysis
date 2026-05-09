use imdb;


-- ====================================================================================
-- SEGMENT 1 : IMDB DATA ANALYSIS PROJECT SOLUTION
-- ====================================================================================

-- Q1. Find the total number of rows in each table of the schema?

SELECT 'movie' AS table_name, COUNT(*) AS total_rows FROM movie
UNION ALL
SELECT 'genre', COUNT(*) FROM genre
UNION ALL
SELECT 'director_mapping', COUNT(*) FROM director_mapping
UNION ALL
SELECT 'role_mapping', COUNT(*) FROM role_mapping
UNION ALL
SELECT 'names', COUNT(*) FROM names
UNION ALL
SELECT 'ratings', COUNT(*) FROM ratings;



-- ====================================================================================

-- Q2. Which columns in the movie table have null values?

SELECT
SUM(CASE WHEN id IS NULL THEN 1 ELSE 0 END) AS id_nulls,
SUM(CASE WHEN title IS NULL THEN 1 ELSE 0 END) AS title_nulls,
SUM(CASE WHEN year IS NULL THEN 1 ELSE 0 END) AS year_nulls,
SUM(CASE WHEN date_published IS NULL THEN 1 ELSE 0 END) AS date_published_nulls,
SUM(CASE WHEN duration IS NULL THEN 1 ELSE 0 END) AS duration_nulls,
SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS country_nulls,
SUM(CASE WHEN worlwide_gross_income IS NULL THEN 1 ELSE 0 END) AS worldwide_income_nulls,
SUM(CASE WHEN languages IS NULL THEN 1 ELSE 0 END) AS language_nulls,
SUM(CASE WHEN production_company IS NULL THEN 1 ELSE 0 END) AS production_company_nulls
FROM movie;



-- ====================================================================================

-- Q3. Find the total number of movies released each year?
-- How does the trend look month wise?


/* Output format for the first part:

+---------------+-------------------+
| Year			|	number_of_movies|
+-------------------+----------------
|	2017		|	3052			|
|	2018		|		.			|
|	2019		|		.			|
+---------------+-------------------+


Output format for the second part of the question:
+---------------+-------------------+
|	month_num	|	number_of_movies|
+---------------+----------------
|	1			|	 804			|
|	2			|	 640			|
|	.			|		.			|
+---------------+-------------------+ */
-- Type your code below:

-- Year Wise Movie Count

SELECT
year,
COUNT(id) AS number_of_movies
FROM movie
GROUP BY year
ORDER BY year;


-- Month Wise Movie Count

SELECT
MONTH(date_published) AS month_num,
COUNT(id) AS number_of_movies
FROM movie
GROUP BY MONTH(date_published)
ORDER BY month_num;



-- ====================================================================================

-- Q4. How many movies were produced in the USA or India in the year 2019?

SELECT
COUNT(id) AS number_of_movies
FROM movie
WHERE year = 2019
AND (
country LIKE '%USA%'
OR country LIKE '%India%'
);



-- ====================================================================================

-- Q5. Find the unique list of the genres present in the data set?

SELECT DISTINCT genre
FROM genre
ORDER BY genre;



-- ====================================================================================

-- Q6. Which genre had the highest number of movies produced overall?

SELECT
g.genre,
COUNT(g.movie_id) AS movie_count
FROM genre g
GROUP BY g.genre
ORDER BY movie_count DESC
LIMIT 1;



-- ====================================================================================

-- Q7. How many movies belong to only one genre?

SELECT
COUNT(*) AS movies_with_one_genre
FROM
(
    SELECT
    movie_id,
    COUNT(genre) AS genre_count
    FROM genre
    GROUP BY movie_id
    HAVING COUNT(genre) = 1
) AS one_genre_movies;



-- ====================================================================================

-- Q8. What is the average duration of movies in each genre?

/* Output format:

+---------------+-------------------+
| genre			|	avg_duration	|
+-------------------+----------------
|	thriller	|		105			|
|	.			|		.			|
|	.			|		.			|
+---------------+-------------------+ */

SELECT
g.genre,
ROUND(AVG(m.duration),2) AS avg_duration
FROM movie m
JOIN genre g
ON m.id = g.movie_id
GROUP BY g.genre
ORDER BY avg_duration DESC;



-- ====================================================================================
-- END OF SOLUTION
-- ====================================================================================
