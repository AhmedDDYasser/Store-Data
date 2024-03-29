SELECT  p.[ProductKey]
      ,p.[ProductAlternateKey] as [Product Code]
      --p.[ProductSubcategoryKey]
      --[WeightUnitMeasureCode]
      --[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as [Product Name]
	  ,ps.EnglishProductSubcategoryName as [Product Subcategory Name]
	  ,pc.EnglishProductCategoryName as [Product Category Name]
      --[SpanishProductName]
      --[FrenchProductName]
      ,p.[StandardCost] as Cost
      --[FinishedGoodsFlag]
      ,[Color]
      --[SafetyStockLevel]
      --[ReorderPoint]
      ,[ListPrice]
      ,[Size]
      --[SizeRange]
      --[Weight]
      --[DaysToManufacture]
      ,[ProductLine] 
      --[DealerPrice]
      --[Class]
      --[Style]
      ,[ModelName] as [Product Model Name]
      --[LargePhoto]
      ,[EnglishDescription] as [Description]
      --[FrenchDescription]
      --[ChineseDescription]
      --[ArabicDescription]
      --[HebrewDescription]
      --[ThaiDescription]
      --[GermanDescription]
      --[JapaneseDescription]
      --[TurkishDescription]
      --[StartDate]
      --[EndDate]
      ,ISNULL ([Status] , 'Outdated') as [Product Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p 
  left join dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  left join dbo.DimProductCategory as pc on  pc.ProductCategoryKey = ps.ProductCategoryKey
