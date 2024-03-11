SELECT  cus.[CustomerKey]
      ,cus.[GeographyKey]
      --[CustomerAlternateKey]
      --[Title]
      ,[FirstName]
      --[MiddleName]
      ,[LastName] 
	  , CONCAT (FirstName ,' ', LastName) as FullName
      --[NameStyle]
      --[BirthDate]
      ,case [MaritalStatus] when 'M' then 'Married' when 'S' then 'Single' end as MaritalStatus
      --[Suffix]
      ,case Gender when 'M' then 'Male' when 'F' then 'Female' end as Gender
      --[EmailAddress]
      ,[YearlyIncome]
      ,[TotalChildren]
	  , case	when TotalChildren > 0 then 'Yes' 
				when TotalChildren = 0 then 'No' 
				end as [Having Children]
      --[NumberChildrenAtHome]
      ,[EnglishEducation] as Education
      --[SpanishEducation]
      --[FrenchEducation]
      ,[EnglishOccupation] as Occupation
      --[SpanishOccupation]
      --[FrenchOccupation]
      ,case [HouseOwnerFlag]  when 1 then  'Yes' when 0 then 'No' end as [House Owner]
      --[NumberCarsOwned]
      --[AddressLine1]
      --[AddressLine2]
      --[Phone]
      ,[DateFirstPurchase] as FirstDatePurchase
      --[CommuteDistance] 
	  ,geo.City as [Customer City] 
	  , geo.EnglishCountryRegionName as [Country]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as cus 
  left join dbo.DimGeography as geo on geo.GeographyKey = cus.GeographyKey
  order by cus.CustomerKey
