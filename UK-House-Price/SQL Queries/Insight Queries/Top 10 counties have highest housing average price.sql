SELECT top 10 (cast(round(avg(price*1.0),0) as decimal(10,0))) as AveragePricePerCounty
	  ,[County]
FROM [UKHousingPrice].[dbo].[UK_Housing_Prices]

group by 
	[County]
order by 
	1 desc
