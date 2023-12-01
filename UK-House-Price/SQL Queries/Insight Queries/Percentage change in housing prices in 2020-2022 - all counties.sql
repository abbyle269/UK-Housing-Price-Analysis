-- first WITH
with newtable as (
SELECT 
	sum(price*1.0) as sumprice
	,[County]
	,year([Date_of_Transfer]) as years
FROM [UKHousingPrice].[dbo].[UK_Housing_Prices]
where
	price > 100
group by 
	[County]
	,year([Date_of_Transfer])

)
-- second WITH 
-- partition values by years and counties
-- lag(sumprice) find the previous value of target value
,newtable2 as(
select 
	years
	,lag(sumprice) over (partition by County order by years) as lagsum
	,[County]
	,sumprice

from newtable
where
	years between 2019 and 2022
group by
	years
	,sumprice
	,[County]
	,sumprice

)
--calculate percentage changes every year based on counties
select
	years
	,isnull(cast((sumprice - lagsum)*100/lagsum as decimal(10,2)),0) as percent_change

	,County as county
from		
	newtable2
group by 
	years
	,lagsum
	,County 
	,sumprice

