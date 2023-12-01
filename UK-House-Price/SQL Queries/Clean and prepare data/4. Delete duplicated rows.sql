-- delete dulicated rows
with table1 as(
select 
	ROW_NUMBER() over (partition by 
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
		  ,[PPDCategory_Type] order by (select null)) as duplicate_col
from 	
	UK_Housing_Prices
)
delete from table1
where duplicate_col>1