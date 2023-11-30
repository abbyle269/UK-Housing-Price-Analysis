USE [UKHousingPrice]
select 
	top 10 price, postcode, street, county
from 
	UKHousingPrice.dbo.UK_Housing_Prices

group by postcode, street, price, county
order by price desc

