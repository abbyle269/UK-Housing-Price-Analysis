-- Check if there is duplicates of rows
SELECT
	   [Date_of_Transfer]
      ,[price]
      ,[Property_Type]
      ,[Old_New]
      ,[Duration]
      ,[postcode]
      ,[Street]
      ,[District]
      ,[Locality]
      ,[Town City]
      ,[County]
      ,[PPDCategory_Type]
	  ,COUNT(*) AS count_duplicates
FROM [UKHousingPrice].[dbo].[UK_Housing_Prices] t1
GROUP BY 
      [Date_of_Transfer]
      ,[price]
      ,[Property_Type]
      ,[Old_New]
      ,[Duration]
      ,[postcode]
      ,[Street]
      ,[District]
      ,[Locality]
      ,[Town City]
      ,[County]
      ,[PPDCategory_Type]
HAVING COUNT(*) > 1;
