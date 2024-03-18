SELECT * FROM [Portfolio-Project]..CovidDeaths
WHERE continent is not null
ORDER BY 3,4

SELECT location, date, total_cases, new_cases, total_deaths, population FROM [Portfolio-Project]..CovidDeaths
WHERE continent is not null
ORDER BY 1,2;

-- Query for looking at total cases vs total deaths

ALTER TABLE [Portfolio-Project]..CovidDeaths
ALTER COLUMN total_deaths FLOAT;

--Looking at percentage of deaths based off of total cases vs total deaths in the United States over time
SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases) * 100 AS DeathPercentage FROM [Portfolio-Project]..CovidDeaths
WHERE location LIKE '%states%'
AND continent is not null
ORDER BY 1,2;

--Total cases vs population, percentage of population infected with Covid

SELECT location, date, total_cases, population, (total_cases/population) * 100 AS InfectedPercentage FROM [Portfolio-Project]..CovidDeaths
ORDER BY 1,2;

--Countries with Highest Infection Rate compared by population

SELECT location, population, MAX(total_cases) AS HighestInfectionCount, MAX((total_cases/population)) * 100 AS InfectedPercentage FROM [Portfolio-Project]..CovidDeaths
GROUP BY location, population
ORDER BY InfectedPercentage DESC;

-- Showing Countries with Highest Death Count per Population

SELECT location, MAX(total_deaths) AS TotalDeathCount FROM [Portfolio-Project]..CovidDeaths
WHERE continent is not null
GROUP BY location
ORDER BY TotalDeathCount DESC;

---Countries with highest death rate compared by number of cases
SELECT location, MAX(total_cases) AS TotalCases, MAX(total_deaths) AS TotalDeaths, MAX(total_deaths) / MAX(total_cases) * 100 AS DeathPercentage
FROM [Portfolio-Project]..CovidDeaths
WHERE continent is not null
GROUP BY location
ORDER BY DeathPercentage DESC


--Total Death Count by Continent

SELECT continent, MAX(total_deaths) AS TotalDeathCount FROM [Portfolio-Project]..CovidDeaths
--WHERE location LIKE '%states%'
WHERE continent is not null
GROUP BY continent
ORDER BY TotalDeathCount DESC;

--Breaking down  total global death count by income class

SELECT location, MAX(total_deaths) AS TotalDeathCount FROM [Portfolio-Project]..CovidDeaths
WHERE continent is null AND location LIKE '%income%'
GROUP BY location
ORDER BY TotalDeathCount DESC;

--Showing continents with highest death count per population

SELECT continent, MAX(total_deaths) AS TotalDeathCount FROM [Portfolio-Project]..CovidDeaths
WHERE continent is not null
GROUP BY continent
ORDER BY TotalDeathCount DESC;


--GLOBAL NUMBERS

SELECT date, SUM(total_cases) AS TotalCases, SUM(total_deaths) AS TotalDeaths, SUM(new_deaths)/ NULLIF(SUM(new_cases),0) * 100 AS DeathPercentage
FROM [Portfolio-Project]..CovidDeaths
WHERE continent is not null
GROUP BY date
ORDER BY 1,2;

--Total Population vs Vaccinations
ALTER TABLE [Portfolio-Project]..CovidVaccinations
ALTER COLUMN new_vaccinations BIGINT

SELECT Death.continent, Death.location, Death.date, Death.population, Vac.new_vaccinations, SUM(Vac.new_vaccinations) OVER (Partition by Death.Location
ORDER BY Death.location, Death.date) AS RollingPeopleVaccinated
FROM [Portfolio-Project]..CovidDeaths Death
JOIN [Portfolio-Project]..CovidVaccinations Vac
ON Death.location = Vac.location AND Death.date = Vac.date
WHERE Death.continent is not null
ORDER BY 2,3

WITH PopulationvsVaccinations (continent, location, date, population, New_Vaccinations,  RollingPeopleVaccinated)
AS
(SELECT Death.continent, Death.location, Death.date, Death.population, Vac.new_vaccinations, SUM(Vac.new_vaccinations) OVER (Partition by Death.Location
ORDER BY Death.location, Death.date) AS RollingPeopleVaccinated
FROM [Portfolio-Project]..CovidDeaths Death
JOIN [Portfolio-Project]..CovidVaccinations Vac
ON Death.location = Vac.location AND Death.date = Vac.date
WHERE Death.continent is not null)
SELECT *, (RollingPeopleVaccinated/population) * 100 FROM PopulationvsVaccinations