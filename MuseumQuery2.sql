SELECT * FROM [Portfolio-Project]..museums
SELECT * FROM [Portfolio-Project]..statepopulations
ORDER BY State

--Altering table so that we can add a column for postal abbreviations

ALTER TABLE [Portfolio-Project]..statepopulations
ADD [State (Physical Location)] NVARCHAR(255)

--Modifying and updating the statepopulations data table to add postal abbreviations to existing state column so we can do joins later

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = CASE State
WHEN 'Pennsylvania' THEN 'PA'
WHEN 'California' THEN 'CA'
WHEN 'Texas' THEN 'TX'
WHEN  'Alabama' THEN 'AL'
WHEN 'Alaska' THEN 'AK'
WHEN 'Arizona' THEN 'AZ'
WHEN 'Arkansas' THEN 'AR'
WHEN 'Colorado' THEN 'CO'
WHEN 'Connecticut' THEN 'CT'
WHEN 'Delaware' THEN 'DE'
WHEN 'District of Columbia' THEN 'DC'
WHEN 'Florida' THEN 'FL'
WHEN 'Georgia' THEN 'GA'
WHEN 'Hawaii' THEN 'HI'
WHEN 'Idaho' THEN 'ID'
WHEN 'Illinois' THEN 'IL'
WHEN 'Indiana' THEN 'IN'
WHEN 'Iowa' THEN 'IA'
WHEN 'Kansas' THEN 'KS'
WHEN 'Kentucky' THEN 'KY'
WHEN 'Louisiana' THEN 'LA'
WHEN 'Maine' THEN 'ME'
WHEN 'Maryland' THEN 'MD'
WHEN 'Massachusetts' THEN 'MA'
WHEN 'Michigan' THEN 'MI'
WHEN 'Minnesota' THEN 'MN'
WHEN 'Mississippi' THEN 'MS'
WHEN 'Missouri' THEN 'MO'
WHEN 'Montana' THEN 'MT'
WHEN 'Nebraska' THEN 'NE'
WHEN 'Nevada' THEN 'NV'
WHEN 'New Hampshire' THEN 'NH'
WHEN 'New Jersey' THEN 'NJ'
WHEN 'New Mexico' THEN 'NM'
WHEN 'New York' THEN 'NY'
WHEN 'North Carolina' THEN 'NC'
WHEN 'North Dakota' THEN 'ND'
WHEN 'Ohio' THEN 'OH'
WHEN 'Oklahoma' THEN 'OK'
WHEN 'Oregon' THEN 'OR'
WHEN 'Rhode Island' THEN 'RI'
WHEN 'South Carolina' THEN 'SC'
WHEN 'South Dakota' THEN 'SD'
WHEN 'Tennessee' THEN 'TN'
WHEN 'Utah' THEN 'UT'
WHEN 'Vermont' THEN 'VT'
WHEN 'Virginia' THEN 'VA'
WHEN 'Washington' THEN 'WA'
WHEN 'West Virginia' THEN 'WV'
WHEN 'Wisconsin' THEN 'WI'
WHEN 'Wyoming' THEN 'WY'
END


--Updating the statepopulations table to update the population year to match the museum data

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = CASE State
WHEN 'California' THEN 38586706
WHEN 'Pennsylvania' THEN 12792392
WHEN 'Texas' THEN 26963092
WHEN  'Alabama' THEN 4843737
WHEN 'Alaska' THEN 737075
WHEN 'Arizona' THEN 6732873
WHEN 'Arkansas' THEN 2968759
WHEN 'Colorado' THEN 5352637
WHEN 'Connecticut' THEN 3595697
WHEN 'Delaware' THEN 933131
WHEN 'District of Columbia' THEN 663603
WHEN 'Florida' THEN 19853880
WHEN 'Georgia' THEN 10071204
WHEN 'Hawaii' THEN 1415335
WHEN 'Idaho' THEN 1632248
WHEN 'Illinois' THEN 12885092
WHEN 'Indiana' THEN 6596019
WHEN 'Iowa' THEN 3110643
WHEN 'Kansas' THEN 2901861
WHEN 'Kentucky' THEN 4416992
WHEN 'Louisiana' THEN 4645938
WHEN 'Maine' THEN 1331217
WHEN 'Maryland' THEN 5960064
WHEN 'Massachusetts' THEN 6764864
WHEN 'Michigan' THEN 9932033
WHEN 'Minnesota' THEN 5452665
WHEN 'Mississippi' THEN 2991892
WHEN 'Missouri' THEN 6059130
WHEN 'Montana' THEN 1022657
WHEN 'Nebraska' THEN 1879955
WHEN 'Nevada' THEN 2818935
WHEN 'New Hampshire' THEN 1334257
WHEN 'New Jersey' THEN 8867277
WHEN 'New Mexico' THEN 2090236
WHEN 'New York' THEN 19653431
WHEN 'North Carolina' THEN 9937295
WHEN 'North Dakota' THEN 738736
WHEN 'Ohio' THEN 11606573
WHEN 'Oklahoma' THEN 3879187
WHEN 'Oregon' THEN 3965447
WHEN 'Rhode Island' THEN 1056511
WHEN 'South Carolina' THEN 4826858
WHEN 'South Dakota' THEN 849670
WHEN 'Tennessee' THEN 6544617
WHEN 'Utah' THEN 2938327
WHEN 'Vermont' THEN 625693
WHEN 'Virginia' THEN 8315430
WHEN 'Washington' THEN 7057531
WHEN 'West Virginia' THEN 1850569
WHEN 'Wisconsin' THEN 5753199
WHEN 'Wyoming' THEN 583159
END
--Modifying and updating the statepopulations data table to add Standard Federal Regions defined by the Census Bureau

ALTER TABLE [Portfolio-Project]..statepopulations
ADD Region NVARCHAR(255)

ALTER TABLE [Portfolio-Project]..statepopulations
ADD Country NVARCHAR(255)

UPDATE [Portfolio-Project]..statepopulations
SET Country = 'United States'



UPDATE [Portfolio-Project]..statepopulations
SET Region = CASE State
WHEN 'California' THEN 'West'
WHEN 'Pennsylvania' THEN 'Northeast'
WHEN 'Texas' THEN 'South'
WHEN  'Alabama' THEN 'South'
WHEN 'Alaska' THEN 'West'
WHEN 'Arizona' THEN 'West'
WHEN 'Arkansas' THEN 'South'
WHEN 'Colorado' THEN 'West'
WHEN 'Connecticut' THEN 'Northeast'
WHEN 'Delaware' THEN 'South'
WHEN 'District of Columbia' THEN 'South'
WHEN 'Florida' THEN 'South'
WHEN 'Georgia' THEN 'South'
WHEN 'Hawaii' THEN 'West'
WHEN 'Idaho' THEN 'West'
WHEN 'Illinois' THEN 'Midwest'
WHEN 'Indiana' THEN 'Midwest'
WHEN 'Iowa' THEN 'Midwest'
WHEN 'Kansas' THEN 'Midwest'
WHEN 'Kentucky' THEN 'South'
WHEN 'Louisiana' THEN 'South'
WHEN 'Maine' THEN 'Northeast'
WHEN 'Maryland' THEN 'South'
WHEN 'Massachusetts' THEN 'Northeast'
WHEN 'Michigan' THEN 'Midwest'
WHEN 'Minnesota' THEN 'Midwest'
WHEN 'Mississippi' THEN 'South'
WHEN 'Missouri' THEN 'Midwest'
WHEN 'Montana' THEN 'West'
WHEN 'Nebraska' THEN 'Midwest'
WHEN 'Nevada' THEN 'West'
WHEN 'New Hampshire' THEN 'Northeast'
WHEN 'New Jersey' THEN 'Northeast'
WHEN 'New Mexico' THEN 'West'
WHEN 'New York' THEN 'Northeast'
WHEN 'North Carolina' THEN 'South'
WHEN 'North Dakota' THEN 'Midwest'
WHEN 'Ohio' THEN 'Midwest'
WHEN 'Oklahoma' THEN 'South'
WHEN 'Oregon' THEN 'West'
WHEN 'Rhode Island' THEN 'Northeast'
WHEN 'South Carolina' THEN 'South'
WHEN 'South Dakota' THEN 'Midwest'
WHEN 'Tennessee' THEN 'South'
WHEN 'Utah' THEN 'West'
WHEN 'Vermont' THEN 'Northeast'
WHEN 'Virginia' THEN 'South'
WHEN 'Washington' THEN 'West'
WHEN 'West Virginia' THEN 'South'
WHEN 'Wisconsin' THEN 'Midwest'
WHEN 'Wyoming' THEN 'West'
END

------------------------------------------------------------------------QUERIES

--Find the U.S states with the highest average museum revenue *

SELECT MAX(Pop.Country) AS Country, MAX(Pop.State) AS State, AVG(Revenue) AS [Average Museum Revenue] FROM [Portfolio-Project]..museums 
JOIN [Portfolio-Project]..statepopulations Pop
ON Museums.[State (Administrative Location)] = Pop.[State (Physical Location)]
GROUP BY [State (Administrative Location)]
ORDER BY [Average Museum Revenue] DESC

--Find the U.S states with the highest average museum expenses

SELECT [State (Administrative Location)], AVG(Income - Revenue) AS [Average Museum Expenses] FROM [Portfolio-Project]..museums
GROUP BY [State (Administrative Location)]
ORDER BY [Average Museum Expenses] DESC

--Find the number of museums that belong to universities and or colleges

SELECT COUNT([Museum Name]) AS [Number of Museums] FROM [Portfolio-Project]..museums
WHERE [Institution Name] LIKE '%College%' OR [Institution Name] LIKE '%University%'

--Find the number of museums that belong to universities and or colleges in each state

SELECT [State (Administrative Location)], COUNT([Museum Name]) AS [Number of Museums] FROM [Portfolio-Project]..museums
WHERE [Institution Name] LIKE '%College%' OR [Institution Name] LIKE '%University%'
GROUP BY [State (Administrative Location)]
ORDER BY 1,2

--How many of each museum type exists in the United States *

SELECT DISTINCT [Museum Type] FROM [Portfolio-Project]..museums

SELECT [Museum Type], COUNT([Museum Name]) AS [No. of Museums] FROM [Portfolio-Project]..museums
WHERE [Museum Type] LIKE '%ZOO%' OR [Museum Type] LIKE '%AQUARIUM%'
GROUP BY [Museum Type]
UNION
SELECT [Museum Type], COUNT([Museum Name]) AS [No. of Museums] FROM [Portfolio-Project]..museums
WHERE [Museum Type] LIKE 'SCIENCE%'
GROUP BY [Museum Type]
UNION
SELECT [Museum Type], COUNT([Museum Name]) AS [No. of Museums] FROM [Portfolio-Project]..museums
WHERE [Museum Type] LIKE 'ARBORETUM%'
GROUP BY [Museum Type]
UNION
SELECT [Museum Type], COUNT([Museum Name]) AS [No. of Museums] FROM [Portfolio-Project]..museums
WHERE [Museum Type] LIKE 'HISTORY%'
GROUP BY [Museum Type]
UNION
SELECT [Museum Type], COUNT([Museum Name]) AS [No. of Museums] FROM [Portfolio-Project]..museums
WHERE [Museum Type] LIKE 'NATURAL%'
GROUP BY [Museum Type]
UNION
SELECT [Museum Type], COUNT([Museum Name]) AS [No. of Museums] FROM [Portfolio-Project]..museums
WHERE [Museum Type] LIKE 'ART%'
GROUP BY [Museum Type]
UNION
SELECT [Museum Type], COUNT([Museum Name]) AS [No. of Museums] FROM [Portfolio-Project]..museums
WHERE [Museum Type] LIKE 'GENERAL%'
GROUP BY [Museum Type]
UNION
SELECT [Museum Type], COUNT([Museum Name]) AS [No. of Museums] FROM [Portfolio-Project]..museums
WHERE [Museum Type] LIKE 'CHILDREN%'
GROUP BY [Museum Type]
UNION
SELECT [Museum Type], COUNT([Museum Name]) AS [No. of Museums] FROM [Portfolio-Project]..museums
WHERE [Museum Type] LIKE 'HISTORIC%'
GROUP BY [Museum Type]


--Which state has the most museums per capita(most museums per million population)
	
SELECT Pop.State, MAX(Pop.[2018 Population]) AS [State Population], (COUNT(Museums.[Museum Name]) / MAX(Pop.[2018 Population])) * 1000000 AS [Museums Per Capita]
FROM [Portfolio-Project]..museums Museums
JOIN [Portfolio-Project]..statepopulations Pop
ON Museums.[State (Administrative Location)] = Pop.[State (Physical Location)]
GROUP BY Pop.State
ORDER BY [Museums Per Capita] DESC

--Which state has the most income from museums, per capita *

SELECT Pop.State, MAX(Pop.[2018 Population]) AS [State Population], SUM(Museums.Income) / MAX(Pop.[2018 Population]) AS [Income Per Capita]
FROM [Portfolio-Project]..museums Museums
JOIN [Portfolio-Project]..statepopulations Pop
ON Museums.[State (Administrative Location)] = Pop.[State (Physical Location)]
GROUP BY Pop.State
ORDER BY [Income Per Capita] DESC

--Amount of museums in each region*

SELECT Pop.Region, SUM(DISTINCT Pop.[2018 Population]) AS [Region Population], COUNT(Museums.[Museum Name]) AS [Number of Museums]
FROM [Portfolio-Project]..museums Museums
JOIN [Portfolio-Project]..statepopulations Pop
ON Museums.[State (Administrative Location)] = Pop.[State (Physical Location)]
GROUP BY Pop.Region
ORDER BY [Number of Museums] DESC

--Which regions have the most museums per capita(most museums per million population)

SELECT Pop.Region, SUM(DISTINCT Pop.[2018 Population]) AS [Region Population], (COUNT(Museums.[Museum Name]) / SUM(DISTINCT Pop.[2018 Population])) * 1000000
AS [Museums Per Capita]
FROM [Portfolio-Project]..museums Museums
JOIN [Portfolio-Project]..statepopulations Pop
ON Museums.[State (Administrative Location)] = Pop.[State (Physical Location)]
GROUP BY Pop.Region
ORDER BY [Museums Per Capita] DESC

--Which regions generate the most revenue per capita *

SELECT Pop.Region, SUM( DISTINCT Pop.[2018 Population]) AS [Region Population], SUM(Museums.Revenue) / SUM(DISTINCT Pop.[2018 Population]) AS [Revenue Per Capita]
FROM [Portfolio-Project]..museums Museums
JOIN [Portfolio-Project]..statepopulations Pop
ON Museums.[State (Administrative Location)] = Pop.[State (Physical Location)]
GROUP BY Pop.Region
ORDER BY [Revenue Per Capita] DESC
