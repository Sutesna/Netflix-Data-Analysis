use netflix_data;

-- User Analysis:
-- Count the number of users subscribed to each subscription tier
SELECT subscription_tier, COUNT(*) AS user_count
FROM Users
GROUP BY subscription_tier;

-- Find the average number of reviews per user
SELECT AVG(review_count) AS avg_reviews_per_user
FROM (
    SELECT user_id, COUNT(*) AS review_count
    FROM Reviews
    GROUP BY user_id
) AS user_reviews;

-- Identify the most active users based on the number of reviews they've made
SELECT u.name, COUNT(r.review_id) AS review_count
FROM Users u
JOIN Reviews r ON u.user_id = r.user_id
GROUP BY u.user_id
ORDER BY review_count DESC
LIMIT 10;






-- Movie Analysis:
-- Count the number of movies released in each year
SELECT release_year, COUNT(*) AS movie_count
FROM Movies
GROUP BY release_year
ORDER BY release_year;

-- Determine the average rating for movies in each genre
SELECT genre, AVG(rating) AS avg_rating
FROM Movies m
JOIN Reviews r ON m.movie_id = r.movie_id
GROUP BY genre
ORDER BY avg_rating DESC;

-- Find the top-rated movies based on user reviews
SELECT m.title, AVG(r.rating) AS avg_rating
FROM Movies m
JOIN Reviews r ON m.movie_id = r.movie_id
GROUP BY m.movie_id, m.title
ORDER BY avg_rating DESC
LIMIT 10;






-- Review Analysis:
-- Calculate the average rating given by users
SELECT AVG(rating) AS avg_rating
FROM Reviews;

-- Analyze the distribution of ratings
SELECT rating, COUNT(*) AS rating_count
FROM Reviews
GROUP BY rating
ORDER BY rating;

-- Determine the average length of review texts
SELECT AVG(CHAR_LENGTH(review_text)) AS avg_review_length
FROM Reviews;

-- Find the users who have given the most reviews
SELECT u.name, COUNT(r.review_id) AS review_count
FROM Users u
JOIN Reviews r ON u.user_id = r.user_id
GROUP BY u.user_id
ORDER BY review_count DESC
LIMIT 10;

