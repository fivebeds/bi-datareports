--Cleaned DIM_CUSTOMERS Table
SELECT 
  c.customerkey AS CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.firstname AS [FirstName], 
  --,[MiddleName]
  c.lastname AS [LastName], 
  c.firstname + ' ' + c.lastname AS [Full Name], 
  -- combined Full name
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.gender WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS [Gender], 
  --c.gender AS Test,
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
  c.datefirstpurchase AS [DateFirstPurchase], 
  --,[CommuteDistance]
  g.city AS [Customer City] --Joined in Customer City from Geography Table
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey