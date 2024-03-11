SELECT  [DateKey]
      ,[FullDateAlternateKey] as date 
      ,[EnglishDayNameOfWeek] as [Day]
      ,[WeekNumberOfYear] as [WeekNum]
      ,[EnglishMonthName] as [MonthName]
	  , LEFT (EnglishMonthName , 3) as [MonthShort]
      ,[MonthNumberOfYear] as [MonthNum]
      ,[CalendarQuarter] as Quarter
      ,[CalendarYear] as Year 
   
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear >= 2019