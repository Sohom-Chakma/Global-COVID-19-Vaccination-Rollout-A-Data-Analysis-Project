use covid19

--Global numbers
WITH deaths_pplVaccinnated_population AS (
	SELECT
		d.location,
		SUM(d.new_deaths) AS Total_Deaths, 
		MAX(CAST(v.people_vaccinated AS BIGINT)) AS People_Vaccinated,
		AVG(d.population) AS total_population
	FROM 
		covidDeaths d
	INNER JOIN
		covidVaccines v ON d.location = v.location AND d.date=v.date
	WHERE 
		d.continent IS NOT NULL
	GROUP BY
		d.location
)
SELECT 
	SUM(Total_Deaths) AS Total_Deaths, SUM(People_Vaccinated) AS People_Vaccinated2, (SUM(People_Vaccinated)/SUM(total_population))*100 AS Vaccination_Rate
FROM deaths_pplVaccinnated_population


--Vaccinations per continent
SELECT
	location, 
	MAX(CAST(people_vaccinated AS BIGINT)) AS People_Vaccinated
FROM
	covidVaccines
WHERE
	continent IS NULL AND location NOT LIKE '%income' AND location NOT LIKE 'world' AND location NOT LIKE '%union'
GROUP BY
	location

-- Vaccination Rate Per Country (NOTE: No. of people vaccinated can exceed population)
SELECT
	v.location, MAX(CAST(people_vaccinated AS BIGINT)) AS People_Vaccinated, MAX(d.population) AS Population, (MAX(CAST(people_vaccinated AS BIGINT))/d.population)*100 AS Vaccination_Rate
FROM
	covidVaccines v
INNER JOIN
	covidDeaths d ON d.location = v.location AND d.date=v.date AND d.continent=v.continent
WHERE
	d.continent IS NOT NULL
GROUP BY
	v.location, population
ORDER BY
	Vaccination_Rate DESC


-- Newly Vaccinated Over Time
SELECT 
	location, 
	date, 
	CAST(new_people_vaccinated_smoothed AS INT) AS New_People_Vaccinated, 	
	SUM(CAST(new_people_vaccinated_smoothed AS INT)) 
		OVER (Partition by location 
			ORDER BY CAST(date AS date)) AS RollingCount
FROM
	covidVaccines
WHERE
	continent IS NOT NULL
ORDER BY
	location, 
	date

