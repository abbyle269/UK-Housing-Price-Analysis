--table1 shows the total number of street, county, town city in the dataset
with table1 as
(
select
	count(distinct street) as num_street
	,count(distinct county) as num_county
	,count(distinct district) as num_district
	,count(distinct [Town City]) as num_town_city
from 
	 [UKHousingPrice].[dbo].[UK_Housing_Prices]
)
--transfer the date and year column to year only
, table2 as
(
select 
	distinct year([Date_of_Transfer]) as distinct_year
from 
	 [UKHousingPrice].[dbo].[UK_Housing_Prices]

)
--aggregate all in one table
SELECT
	num_street
	,num_county
	,num_district
	,num_town_city 
	--aggregate different rows to one row
	,string_agg(distinct_year,',') within group (order by distinct_year) AS period
from 
	table1, table2

group by num_street
	,num_county
	,num_district
	,num_town_city