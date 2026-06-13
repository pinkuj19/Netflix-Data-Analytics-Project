SELECT * FROM Netflix_Content;
SELECT rating, COUNT( *) AS Total FROM Netflix_Content GROUP BY rating ORDER BY Total DESC;
SELECT COUNT (*) AS Total_Records FROM Netflix_Content;
SELECT TOP 10* FROM Netflix_Content;
-- Movies vs TV shows on Netflix
SELECT type, COUNT(*) AS Total FROM Netflix_Content GROUP BY type;
-- Top 10 countries
SELECT TOP 10 country, COUNT(*) AS Total_Content FROM Netflix_Content WHERE country IS NOT NULL GROUP BY country ORDER BY Total_Content DESC;
-- Har saal kitna content release hua
SELECT release_year, COUNT(*) AS Total_Content FROM Netflix_Content GROUP BY release_year ORDER BY release_year;
-- Top 10 Directors
SELECT TOP 10 director, COUNT(*) AS Total_Content FROM Netflix_Content WHERE director IS NOT NULL GROUP BY director ORDER BY Total_Content DESC;
--which  rating category has the most content
SELECT rating, COUNT(*) AS Total_Content FROM Netflix_Content GROUP BY rating ORDER BY Total_Content DESC;
-- Top 10 actors (cast)
SELECT TOP 10 cast, COUNT(*) AS Total_Content 
FROM Netflix_Content
WHERE cast IS NOT NULL
GROUP BY cast
ORDER BY Total_Content DESC;
-- latest 10 releases
SELECT TOP 10 title, release_year FROM Netflix_Content ORDER BY release_year DESC;
-- In which year most of the content released?
SELECT TOP 1 release_year, COUNT(*) AS Total_Content
FROM Netflix_Content
GROUP BY release_year
ORDER BY Total_Content DESC;
--country wise movies and tv shows
SELECT country, type, COUNT(*) AS Total_Content
FROM Netflix_Content
WHERE country IS NOT NULL
GROUP BY country, type
ORDER BY Total_Content DESC;
--top 10 content categories
SELECT TOP 10 listed_in, COUNT(*) AS Total_Content
FROM Netflix_Content
GROUP BY listed_in
ORDER BY Total_Content DESC;

