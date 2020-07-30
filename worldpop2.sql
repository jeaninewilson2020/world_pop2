SELECT COUNT(*)
FROM countries
WHERE continent = 'Africa'; 

SELECT SUM(population) as 'Total Population', year, continent
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE continent = "Oceania"
AND 
year = 2005; 

SELECT ROUND(AVG(population), 2) as 'Average Population', year, continent
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE continent = "South America"
AND 
year = 2003; 


SELECT MIN(population) as 'Smallest Population', year, countries.name
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2007; 

SELECT AVG(population), name FROM population_years
JOIN countries ON
countries.id = population_years.country_id
WHERE name = 'Poland';

SELECT COUNT(*)
FROM countries
WHERE name LIKE '%the%'; 

SELECT ROUND(SUM(population), 2) as 'Total Population', year, countries.continent
FROM population_years
JOIN countries ON
countries.id = population_years.country_id
WHERE year = 2010
GROUP BY countries.continent; 
