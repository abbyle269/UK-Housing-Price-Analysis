CREATE TABLE UKHousingPrice.[dbo].[UK_Housing_Prices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date_of_Transfer] [date],
	[price] [int] NOT NULL,
	[Property_Type] [nvarchar](50) NOT NULL,
	[Old_New] [bit] NOT NULL,
	[Duration] [nvarchar](50) NOT NULL,
	[postcode] [varchar](50) NULL,
	[Street] [varchar](50) NULL,
	[District] [varchar](50) NULL,
	[Locality] [varchar](50) NULL,
	[Town City] [varchar](50) NULL,
	[County] [varchar](50) NULL,
	[PPDCategory_Type] [varchar](50) NULL,
) ON [PRIMARY]



