with newtable as (
SELECT 
	sum(price*1.0) as sumprice
	,[County]
	,year([Date_of_Transfer]) as years
FROM [UKHousingPrice].[dbo].[UK_Housing_Prices]
where
	county = 'GREATER LONDON'
	and 
	price > 100
group by 
	[County]
	,year([Date_of_Transfer])

)

select 
	years
	,isnull(cast((sumprice - lag(sumprice) over (order by years))*100/lag(sumprice) over (order by years) as decimal(10,2)),0) as change
	,[County]
from newtable
where
	years between 2019 and 2022
group by
	years
	,sumprice
	,[County]

order by 
	years
