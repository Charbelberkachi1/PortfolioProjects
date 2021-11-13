SELECT *
FROM Portfolio..Movies_filtered$

SELECT *
FROM Portfolio..tv_shows$

/* Movies
Total = 9515
*/

--TOP 30 Movies

SELECT TOP(30) Title,Rating,Year,Runtime,Genres,Country,Language,
CASE 
	WHEN Netflix=1 THEN 'Netflix'
	WHEN Hulu=1 THEN 'Hulu'
	WHEN [Prime Video]=1 THEN 'Prime Video'
	WHEN [Disney+]=1 THEN 'Disney+'
END AS Platform
FROM Portfolio..Movies_filtered$
WHERE Rating>=8
ORDER BY Rating DESC


--Age movies

SELECT Age, COUNT(Age) AS NumbMovies
FROM Portfolio..Movies_filtered$
WHERE AGE IS NOT NULL
GROUP BY Age
ORDER BY NumbMovies DESC

--Most producing platforms

SELECT COUNT(Netflix) AS Netflix_tot
FROM Portfolio..Movies_filtered$
WHERE Netflix=1 

SELECT COUNT(Hulu) AS Hulu_tot
FROM Portfolio..Movies_filtered$
WHERE Hulu=1

SELECT COUNT([Prime Video]) AS PrimeVideo_tot
FROM Portfolio..Movies_filtered$
WHERE [Prime Video]=1

SELECT COUNT([Disney+]) AS Disney_tot
FROM Portfolio..Movies_filtered$
WHERE [Disney+]=1

/* Tv Shows 
Total = 5368
*/

--Top 30 Series

SELECT TOP(30) Title,Rating,Year,
CASE 
	WHEN Netflix=1 THEN 'Netflix'
	WHEN Hulu=1 THEN 'Hulu'
	WHEN [Prime Video]=1 THEN 'Prime Video'
	WHEN [Disney+]=1 THEN 'Disney+'
END AS Platform
FROM Portfolio..tv_shows$
WHERE Rating>=8
ORDER BY Rating DESC

--Age series

SELECT Age, COUNT(Age) AS NumbMovies
FROM Portfolio..tv_shows$
WHERE AGE IS NOT NULL
GROUP BY Age
ORDER BY NumbMovies DESC

--Most producing platforms

SELECT COUNT(Netflix) AS Netflix_tot
FROM Portfolio..tv_shows$
WHERE Netflix=1 

SELECT COUNT(Hulu) AS Hulu_tot
FROM Portfolio..tv_shows$
WHERE Hulu=1

SELECT COUNT([Prime Video]) AS PrimeVideo_tot
FROM Portfolio..tv_shows$
WHERE [Prime Video]=1

SELECT COUNT([Disney+]) AS Disney_tot
FROM Portfolio..tv_shows$
WHERE [Disney+]=1
