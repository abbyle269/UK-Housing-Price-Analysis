SET IDENTITY_INSERT UK_Housing_Prices ON;
-- When union tables, make sure the number of columns from each select need to be the same
INSERT INTO UK_Housing_Prices 
		(
	   ID
	  ,[Date_of_Transfer]
      ,[price]
      ,[Property_Type]
      ,[Old_New]
      ,[postcode]
      ,[Duration]
      ,[Street]
      ,[District]
      ,[Locality]
      ,[Town City]
      ,[County]
      ,[PPDCategory_Type])
SELECT 
    e1.ID, 
    [Date_of_Transfer],
    [price],
    [Property_Type],
    [Old_New],
	[postcode],
    [Duration],
    [Street],
    [District],
	[Locality],
    [Town City],
    [County],
    [PPDCategory_Type]

FROM UK_housing_prices_1e e1

left join UK_housing_prices_2e e2
on e2.ID = e1.ID

left join  UK_housing_prices_3e e3
on e2.ID = e3.ID


--SET IDENTITY_INSERT UK_Housing_Prices OFF;