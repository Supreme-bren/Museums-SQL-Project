SELECT * FROM [Portfolio-Project]..museums
SELECT * FROM [Portfolio-Project]..statepopulations
ORDER BY State

--Altering table so that we can add a column for postal abbreviations

ALTER TABLE [Portfolio-Project]..statepopulations
ADD [State (Physical Location)] NVARCHAR(255)

--Modifying and updating the statepopulations data table to add postal abbreviations to existing state column so we can do joins later

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'PA'
WHERE State = 'Pennsylvania'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'CA'
WHERE State = 'California'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'TX'
WHERE State = 'Texas'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'AL'
WHERE State = 'Alabama'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'AK'
WHERE State = 'Alaska'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'AZ'
WHERE State = 'Arizona'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'AR'
WHERE State = 'Arkansas'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'CO'
WHERE State = 'Colorado'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'CT'
WHERE State = 'Connecticut'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'DE'
WHERE State = 'Delaware'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'DC'
WHERE State = 'District of Columbia'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'FL'
WHERE State = 'Florida'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'GA'
WHERE State = 'Georgia'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'HI'
WHERE State = 'Hawaii'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'ID'
WHERE State = 'Idaho'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'IL'
WHERE State = 'Illinois'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'IN'
WHERE State = 'Indiana'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'IA'
WHERE State = 'Iowa'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'KS'
WHERE State = 'Kansas'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'KY'
WHERE State = 'Kentucky'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'LA'
WHERE State = 'Louisiana'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'ME'
WHERE State = 'Maine'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'MD'
WHERE State = 'Maryland'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'MA'
WHERE State = 'Massachusetts'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'MI'
WHERE State = 'Michigan'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'MN'
WHERE State = 'Minnesota'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'MS'
WHERE State = 'Mississippi'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'MO'
WHERE State = 'Missouri'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'MT'
WHERE State = 'Montana'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'NE'
WHERE State = 'Nebraska'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'NV'
WHERE State = 'Nevada'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'NH'
WHERE State = 'New Hampshire'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'NJ'
WHERE State = 'New Jersey'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'NM'
WHERE State = 'New Mexico'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'NY'
WHERE State = 'New York'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'NC'
WHERE State = 'North Carolina'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'ND'
WHERE State = 'North Dakota'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'OH'
WHERE State = 'Ohio'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'OK'
WHERE State = 'Oklahoma'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'OR'
WHERE State = 'Oregon'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'RI'
WHERE State = 'Rhode Island'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'SC'
WHERE State = 'South Carolina'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'SD'
WHERE State = 'South Dakota'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'TN'
WHERE State = 'Tennessee'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'UT'
WHERE State = 'Utah'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'VT'
WHERE State = 'Vermont'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'VA'
WHERE State = 'Virginia'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'WA'
WHERE State = 'Washington'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'WV'
WHERE State = 'West Virginia'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'WI'
WHERE State = 'Wisconsin'

UPDATE [Portfolio-Project]..statepopulations
SET [State (Physical Location)] = 'WY'
WHERE State = 'Wyoming'

--Updating the statepopulations table to update the population year to match the museum data

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 38586706
WHERE State = 'California'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 26963092
WHERE State = 'Texas'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 19853880
WHERE State = 'Florida'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 19653431
WHERE State = 'New York'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 12792392
WHERE State = 'Pennsylvania'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 12885092
WHERE State = 'Illinois'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 11606573
WHERE State = 'Ohio'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 10071204
WHERE State = 'Georgia'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 9937295
WHERE State = 'North Carolina'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 9932033
WHERE State = 'Michigan'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 8867277
WHERE State = 'New Jersey'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 8315430
WHERE State = 'Virginia'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 7057531
WHERE State = 'Washington'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 6732873
WHERE State = 'Arizona'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 6764864
WHERE State = 'Massachusetts'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 6544617
WHERE State = 'Tennessee'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 6596019
WHERE State = 'Indiana'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 6059130
WHERE State = 'Missouri'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 5960064
WHERE State = 'Maryland'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 5753199
WHERE State = 'Wisconsin'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 5352637
WHERE State = 'Colorado'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 5452665
WHERE State = 'Minnesota'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 4826858
WHERE State = 'South Carolina'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 4843737
WHERE State = 'Alabama'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 4645938
WHERE State = 'Louisiana'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 4416992
WHERE State = 'Kentucky'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 3965447
WHERE State = 'Oregon'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 3879187
WHERE State = 'Oklahoma'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 3595697
WHERE State = 'Connecticut'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 3110643
WHERE State = 'Iowa'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 2938327
WHERE State = 'Utah'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 2818935
WHERE State = 'Nevada'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 2968759
WHERE State = 'Arkansas'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 2991892
WHERE State = 'Mississippi'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 2901861
WHERE State = 'Kansas'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 2090236
WHERE State = 'New Mexico'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 1879955
WHERE State = 'Nebraska'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 1850569
WHERE State = 'West Virginia'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 1632248
WHERE State = 'Idaho'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 1415335
WHERE State = 'Hawaii'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 1334257
WHERE State = 'New Hampshire'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 1331217
WHERE State = 'Maine'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 1022657
WHERE State = 'Montana'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 1056511
WHERE State = 'Rhode Island'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 933131
WHERE State = 'Delaware'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 849670
WHERE State = 'South Dakota'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 738736
WHERE State = 'North Dakota'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 737075
WHERE State = 'Alaska'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 663603
WHERE State = 'District of Columbia'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 625693
WHERE State = 'Vermont'

UPDATE [Portfolio-Project]..statepopulations
SET [2018 Population] = 583159
WHERE State = 'Wyoming'

--Modifying and updating the statepopulations data table to add Standard Federal Regions defined by the Census Bureau

ALTER TABLE [Portfolio-Project]..statepopulations
ADD Region NVARCHAR(255)

ALTER TABLE [Portfolio-Project]..statepopulations
ADD Country NVARCHAR(255)

UPDATE [Portfolio-Project]..statepopulations
SET Country = 'United States'
WHERE State = 'Connecticut' OR State = 'Maine' OR State = 'Massachusetts' OR State = 'New Hampshire' OR State = 'Rhode Island' OR State = 'Vermont'
OR State = 'New Jersey' OR State = 'New York' OR State = 'Pennsylvania' OR State = 'Delaware' OR State = 'Florida' OR State = 'Georgia' OR State = 'Maryland' OR State = 'North Carolina' OR State = 'South Carolina'
OR State = 'Virginia' OR State = 'District of Columbia' OR State = 'West Virginia' OR State = 'Alabama' OR State = 'Kentucky' OR State = 'Mississippi'
OR State = 'Tennessee' OR State = 'Arkansas' OR State = 'Louisiana' OR State = 'Oklahoma' OR State = 'Texas' OR State = 'Illinois' OR State = 'Indiana' OR State = 'Michigan' OR State = 'Ohio' OR State = 'Wisconsin' OR State = 'Iowa'
OR State = 'Kansas' OR State = 'Minnesota' OR State = 'Missouri' OR State = 'Nebraska' OR State = 'North Dakota' OR State = 'South Dakota' OR State = 'Arizona' OR State = 'Colorado' OR State = 'Idaho' OR State = 'Montana' OR State = 'Nevada' OR State = 'New Mexico'
OR State = 'Utah' OR State = 'Wyoming' OR State = 'Alaska' OR State = 'California' OR State = 'Hawaii' OR State = 'Oregon' OR State = 'Washington'


UPDATE [Portfolio-Project]..statepopulations
SET Region = 'Northeast'
WHERE State = 'Connecticut' OR State = 'Maine' OR State = 'Massachusetts' OR State = 'New Hampshire' OR State = 'Rhode Island' OR State = 'Vermont'
OR State = 'New Jersey' OR State = 'New York' OR State = 'Pennsylvania'

UPDATE [Portfolio-Project]..statepopulations
SET Region = 'South'
WHERE State = 'Delaware' OR State = 'Florida' OR State = 'Georgia' OR State = 'Maryland' OR State = 'North Carolina' OR State = 'South Carolina'
OR State = 'Virginia' OR State = 'District of Columbia' OR State = 'West Virginia' OR State = 'Alabama' OR State = 'Kentucky' OR State = 'Mississippi'
OR State = 'Tennessee' OR State = 'Arkansas' OR State = 'Louisiana' OR State = 'Oklahoma' OR State = 'Texas'

UPDATE [Portfolio-Project]..statepopulations
SET Region = 'Midwest'
WHERE State = 'Illinois' OR State = 'Indiana' OR State = 'Michigan' OR State = 'Ohio' OR State = 'Wisconsin' OR State = 'Iowa'
OR State = 'Kansas' OR State = 'Minnesota' OR State = 'Missouri' OR State = 'Nebraska' OR State = 'North Dakota' OR State = 'South Dakota'

UPDATE [Portfolio-Project]..statepopulations
SET Region = 'West'
WHERE State = 'Arizona' OR State = 'Colorado' OR State = 'Idaho' OR State = 'Montana' OR State = 'Nevada' OR State = 'New Mexico'
OR State = 'Utah' OR State = 'Wyoming' OR State = 'Alaska' OR State = 'California' OR State = 'Hawaii' OR State = 'Oregon' OR State = 'Washington'


------------------------------------------------------------------------QUERIES

--Find the U.S states with the highest average museum revenue *

SELECT MAX(Pop.Country) AS Country, Pop.State, AVG(Revenue) AS [Average Museum Revenue] FROM [Portfolio-Project]..museums 
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
