--Cleansed Dim_Customer Table--
SELECT 
  cust.CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  cust.FirstName AS [First Name], 
  --,[MiddleName]
  cust.LastName AS [Last Name], 
  FirstName + ' ' + LastName AS [Full Name], 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE cust.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  cust.DateFirstPurchase, 
  --,[CommuteDistance]
  geo.City AS [Customer City] -- Joined in Customer City from Geography Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS cust 
  LEFT JOIN AdventureWorksDW2019.dbo.DimGeography AS geo ON geo.GeographyKey = cust.GeographyKey 
ORDER BY 
  cust.CustomerKey ASC -- Ordered list by CustomerKey
