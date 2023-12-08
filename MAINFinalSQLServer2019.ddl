
CREATE SCHEMA [HumanResources]
go

CREATE SCHEMA [Geography]
go

CREATE SCHEMA [Vehicle]
go

CREATE SCHEMA [Marketing]
go

CREATE SCHEMA [Cost]
go

CREATE SCHEMA [Sales]
go

CREATE SCHEMA [dGroceryStore]
go

CREATE SCHEMA [sdNumber]
go

CREATE SCHEMA [sdString]
go

CREATE SCHEMA [sdInformation]
go

CREATE SCHEMA [sdCompanyInformation]
go

CREATE SCHEMA [sdDateTime]
go

CREATE SCHEMA [sdName]
go

CREATE SCHEMA [DBSecurity]
go

CREATE SCHEMA [Report]
go

CREATE TYPE [sdISO]
	FROM NVARCHAR(60) NULL
go

CREATE TYPE [ISO2]
	FROM NVARCHAR(2) NULL
go

CREATE TYPE [ISO3]
	FROM NVARCHAR(3) NULL
go

CREATE TYPE [PackingSymbol]
	FROM NVARCHAR(40) NULL
go

CREATE TYPE [ModelName]
	FROM NVARCHAR(20) NULL
go

CREATE TYPE [sdVariant]
	FROM NVARCHAR(30) NULL
go

CREATE TYPE [Color]
	FROM NVARCHAR(20) NULL
go

CREATE TYPE [VehicleType]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [MarketingType]
	FROM NVARCHAR(200) NULL
go

CREATE TYPE [ComponentType]
	FROM NVARCHAR(50) NULL
go

CREATE TYPE [sdType]
	FROM NVARCHAR(30) NULL
go

CREATE TYPE [ServiceType]
	FROM NVARCHAR(40) NULL
go

CREATE TYPE [sdCompanyInformation].[CompanyName]
	FROM CHAR(18) NULL
go

CREATE SEQUENCE [sdNumber].[StockCodeSequence] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[InvoiceNumberSequence] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[UserAuthorizationSequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[MarketingCategorySequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[ManufacturerModelSequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[CountrySequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[CustomerSequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[DeliveryChargeSequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[ManufacturerVehicleInventorySequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[DepartmentSequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[ManufacturerVehicleMakeSequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[PartsChargeSequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[RepairChargeSequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[SalesOrderVehicleDetailSequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[SalesOrderVehicleSequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[StaffSequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE SEQUENCE [sdNumber].[ManagerSequenceId] AS integer
START WITH 1
INCREMENT BY 1
go

CREATE TABLE [Geography].[Country]
( 
	[CountryId]          integer  NOT NULL 
	CONSTRAINT [DF_Geography_Country_CountryId]
		 DEFAULT  NEXT VALUE FOR [sdNumber].[CountrySequenceId],
	[ISO3]               [ISO3]  NULL 
	CONSTRAINT [DF_Geography_Country_ISO3]
		 DEFAULT  'ZZZ'
	CONSTRAINT [CK_Geography_Country_ISO3]
		CHECK  ( [ISO3]='AFG' OR [ISO3]='ALB' OR [ISO3]='DZA' OR [ISO3]='AND' OR [ISO3]='AGO' OR [ISO3]='ATG' OR [ISO3]='ARG' OR [ISO3]='ARM' OR [ISO3]='AUS' OR [ISO3]='AUT' OR [ISO3]='AZE' OR [ISO3]='BHS' OR [ISO3]='BHR' OR [ISO3]='BGD' OR [ISO3]='BRB' OR [ISO3]='BLR' OR [ISO3]='BEL' OR [ISO3]='BLZ' OR [ISO3]='BEN' OR [ISO3]='BTN' OR [ISO3]='BOL' OR [ISO3]='BIH' OR [ISO3]='BWA' OR [ISO3]='BRA' OR [ISO3]='BRN' OR [ISO3]='BGR' OR [ISO3]='BFA' OR [ISO3]='BDI' OR [ISO3]='CPV' OR [ISO3]='KHM' OR [ISO3]='CMR' OR [ISO3]='CAN' OR [ISO3]='CAF' OR [ISO3]='TCD' OR [ISO3]='CHL' OR [ISO3]='CHN' OR [ISO3]='COL' OR [ISO3]='COM' OR [ISO3]='COG' OR [ISO3]='CRI' OR [ISO3]='HRV' OR [ISO3]='CUB' OR [ISO3]='CYP' OR [ISO3]='CZE' OR [ISO3]='DNK' OR [ISO3]='DJI' OR [ISO3]='DMA' OR [ISO3]='DOM' OR [ISO3]='ECU' OR [ISO3]='EGY' OR [ISO3]='SLV' OR [ISO3]='GNQ' OR [ISO3]='ERI' OR [ISO3]='EST' OR [ISO3]='SWZ' OR [ISO3]='ETH' OR [ISO3]='FJI' OR [ISO3]='FIN' OR [ISO3]='FRA' OR [ISO3]='GAB' OR [ISO3]='GMB' OR [ISO3]='GEO' OR [ISO3]='DEU' OR [ISO3]='GHA' OR [ISO3]='GRC' OR [ISO3]='GRD' OR [ISO3]='GTM' OR [ISO3]='GIN' OR [ISO3]='GNB' OR [ISO3]='GUY' OR [ISO3]='HTI' OR [ISO3]='HND' OR [ISO3]='HUN' OR [ISO3]='ISL' OR [ISO3]='IND' OR [ISO3]='IDN' OR [ISO3]='IRN' OR [ISO3]='IRQ' OR [ISO3]='IRL' OR [ISO3]='ISR' OR [ISO3]='ITA' OR [ISO3]='CIV' OR [ISO3]='JAM' OR [ISO3]='JPN' OR [ISO3]='JOR' OR [ISO3]='KAZ' OR [ISO3]='KEN' OR [ISO3]='KIR' OR [ISO3]='PRK' OR [ISO3]='KOR' OR [ISO3]='XKX' OR [ISO3]='KWT' OR [ISO3]='KGZ' OR [ISO3]='LAO' OR [ISO3]='LVA' OR [ISO3]='LBN' OR [ISO3]='LSO' OR [ISO3]='LBR' OR [ISO3]='LBY' OR [ISO3]='LIE' OR [ISO3]='LTU' OR [ISO3]='LUX' OR [ISO3]='MDG' OR [ISO3]='MWI' OR [ISO3]='MYS' OR [ISO3]='MDV' OR [ISO3]='MLI' OR [ISO3]='MLT' OR [ISO3]='MHL' OR [ISO3]='MRT' OR [ISO3]='MUS' OR [ISO3]='MEX' OR [ISO3]='FSM' OR [ISO3]='MDA' OR [ISO3]='MCO' OR [ISO3]='MNG' OR [ISO3]='MNE' OR [ISO3]='MAR' OR [ISO3]='MOZ' OR [ISO3]='MMR' OR [ISO3]='NAM' OR [ISO3]='NRU' OR [ISO3]='NPL' OR [ISO3]='NLD' OR [ISO3]='NZL' OR [ISO3]='NIC' OR [ISO3]='NER' OR [ISO3]='NGA' OR [ISO3]='MKD' OR [ISO3]='NOR' OR [ISO3]='OMN' OR [ISO3]='PAK' OR [ISO3]='PLW' OR [ISO3]='PAN' OR [ISO3]='PNG' OR [ISO3]='PRY' OR [ISO3]='PER' OR [ISO3]='PHL' OR [ISO3]='POL' OR [ISO3]='PRT' OR [ISO3]='QAT' OR [ISO3]='ROU' OR [ISO3]='RUS' OR [ISO3]='RWA' OR [ISO3]='KNA' OR [ISO3]='LCA' OR [ISO3]='VCT' OR [ISO3]='WSM' OR [ISO3]='SMR' OR [ISO3]='STP' OR [ISO3]='SAU' OR [ISO3]='SEN' OR [ISO3]='SRB' OR [ISO3]='SYC' OR [ISO3]='SLE' OR [ISO3]='SGP' OR [ISO3]='SVK' OR [ISO3]='SVN' OR [ISO3]='SLB' OR [ISO3]='SOM' OR [ISO3]='ZAF' OR [ISO3]='SSD' OR [ISO3]='ESP' OR [ISO3]='LKA' OR [ISO3]='SDN' OR [ISO3]='SUR' OR [ISO3]='SWE' OR [ISO3]='CHE' OR [ISO3]='SYR' OR [ISO3]='TWN' OR [ISO3]='TJK' OR [ISO3]='TZA' OR [ISO3]='THA' OR [ISO3]='TLS' OR [ISO3]='TGO' OR [ISO3]='TON' OR [ISO3]='TTO' OR [ISO3]='TUN' OR [ISO3]='TUR' OR [ISO3]='TKM' OR [ISO3]='TUV' OR [ISO3]='UGA' OR [ISO3]='UKR' OR [ISO3]='ARE' OR [ISO3]='GBR' OR [ISO3]='USA' OR [ISO3]='URY' OR [ISO3]='UZB' OR [ISO3]='VUT' OR [ISO3]='VAT' OR [ISO3]='VEN' OR [ISO3]='VNM' OR [ISO3]='YEM' OR [ISO3]='ZMB' OR [ISO3]='ZWE' ),
	[CountryName]        nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_Geography_Country_CountryName]
		 DEFAULT  'Nowhere'
	CONSTRAINT [CK_Geography_Country_CountryName]
		CHECK  ( CountryName NOT LIKE '%[^A-Z ]%' ),
	[ISO2]               [ISO2]  NULL 
	CONSTRAINT [DF_Geography_Country_ISO2]
		 DEFAULT  'ZZ'
	CONSTRAINT [CK_Geography_Country_ISO2]
		CHECK  ( [ISO2]='AF' OR [ISO2]='AL' OR [ISO2]='DZ' OR [ISO2]='AD' OR [ISO2]='AO' OR [ISO2]='AG' OR [ISO2]='AR' OR [ISO2]='AM' OR [ISO2]='AU' OR [ISO2]='AT' OR [ISO2]='AZ' OR [ISO2]='BS' OR [ISO2]='BH' OR [ISO2]='BD' OR [ISO2]='BB' OR [ISO2]='BY' OR [ISO2]='BE' OR [ISO2]='BZ' OR [ISO2]='BJ' OR [ISO2]='BT' OR [ISO2]='BO' OR [ISO2]='BA' OR [ISO2]='BW' OR [ISO2]='BR' OR [ISO2]='BN' OR [ISO2]='BG' OR [ISO2]='BF' OR [ISO2]='BI' OR [ISO2]='CV' OR [ISO2]='KH' OR [ISO2]='CM' OR [ISO2]='CA' OR [ISO2]='CF' OR [ISO2]='TD' OR [ISO2]='CL' OR [ISO2]='CN' OR [ISO2]='CO' OR [ISO2]='KM' OR [ISO2]='CG' OR [ISO2]='CR' OR [ISO2]='HR' OR [ISO2]='CU' OR [ISO2]='CY' OR [ISO2]='CZ' OR [ISO2]='DK' OR [ISO2]='DJ' OR [ISO2]='DM' OR [ISO2]='DO' OR [ISO2]='EC' OR [ISO2]='EG' OR [ISO2]='SV' OR [ISO2]='GQ' OR [ISO2]='ER' OR [ISO2]='EE' OR [ISO2]='SZ' OR [ISO2]='ET' OR [ISO2]='FJ' OR [ISO2]='FI' OR [ISO2]='FR' OR [ISO2]='GA' OR [ISO2]='GM' OR [ISO2]='GE' OR [ISO2]='DE' OR [ISO2]='GH' OR [ISO2]='GR' OR [ISO2]='GD' OR [ISO2]='GT' OR [ISO2]='GN' OR [ISO2]='GW' OR [ISO2]='GY' OR [ISO2]='HT' OR [ISO2]='HN' OR [ISO2]='HU' OR [ISO2]='IS' OR [ISO2]='IN' OR [ISO2]='ID' OR [ISO2]='IR' OR [ISO2]='IQ' OR [ISO2]='IE' OR [ISO2]='IL' OR [ISO2]='IT' OR [ISO2]='CI' OR [ISO2]='JM' OR [ISO2]='JP' OR [ISO2]='JO' OR [ISO2]='KZ' OR [ISO2]='KE' OR [ISO2]='KI' OR [ISO2]='KP' OR [ISO2]='KR' OR [ISO2]='XK' OR [ISO2]='KW' OR [ISO2]='KG' OR [ISO2]='LA' OR [ISO2]='LV' OR [ISO2]='LB' OR [ISO2]='LS' OR [ISO2]='LR' OR [ISO2]='LY' OR [ISO2]='LI' OR [ISO2]='LT' OR [ISO2]='LU' OR [ISO2]='MG' OR [ISO2]='MW' OR [ISO2]='MY' OR [ISO2]='MV' OR [ISO2]='ML' OR [ISO2]='MT' OR [ISO2]='MH' OR [ISO2]='MR' OR [ISO2]='MU' OR [ISO2]='MX' OR [ISO2]='FM' OR [ISO2]='MD' OR [ISO2]='MC' OR [ISO2]='MN' OR [ISO2]='ME' OR [ISO2]='MA' OR [ISO2]='MZ' OR [ISO2]='MM' OR [ISO2]='NA' OR [ISO2]='NR' OR [ISO2]='NP' OR [ISO2]='NL' OR [ISO2]='NZ' OR [ISO2]='NI' OR [ISO2]='NE' OR [ISO2]='NG' OR [ISO2]='MK' OR [ISO2]='NO' OR [ISO2]='OM' OR [ISO2]='PK' OR [ISO2]='PW' OR [ISO2]='PA' OR [ISO2]='PG' OR [ISO2]='PY' OR [ISO2]='PE' OR [ISO2]='PH' OR [ISO2]='PL' OR [ISO2]='PT' OR [ISO2]='QA' OR [ISO2]='RO' OR [ISO2]='RU' OR [ISO2]='RW' OR [ISO2]='KN' OR [ISO2]='LC' OR [ISO2]='VC' OR [ISO2]='WS' OR [ISO2]='SM' OR [ISO2]='ST' OR [ISO2]='SA' OR [ISO2]='SN' OR [ISO2]='RS' OR [ISO2]='SC' OR [ISO2]='SL' OR [ISO2]='SG' OR [ISO2]='SK' OR [ISO2]='SI' OR [ISO2]='SB' OR [ISO2]='SO' OR [ISO2]='ZA' OR [ISO2]='SS' OR [ISO2]='ES' OR [ISO2]='LK' OR [ISO2]='SD' OR [ISO2]='SR' OR [ISO2]='SE' OR [ISO2]='CH' OR [ISO2]='SY' OR [ISO2]='TW' OR [ISO2]='TJ' OR [ISO2]='TZ' OR [ISO2]='TH' OR [ISO2]='TL' OR [ISO2]='TG' OR [ISO2]='TO' OR [ISO2]='TT' OR [ISO2]='TN' OR [ISO2]='TR' OR [ISO2]='TM' OR [ISO2]='TV' OR [ISO2]='UG' OR [ISO2]='UA' OR [ISO2]='AE' OR [ISO2]='GB' OR [ISO2]='US' OR [ISO2]='UY' OR [ISO2]='UZ' OR [ISO2]='VU' OR [ISO2]='VA' OR [ISO2]='VE' OR [ISO2]='VN' OR [ISO2]='YE' OR [ISO2]='ZM' OR [ISO2]='ZW' ),
	[SalesRegion]        nvarchar(70) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_Geography_Country_SalesRegion]
		 DEFAULT  'Nowhere'
	CONSTRAINT [CK_Geography_Country_SalesRegion]
		CHECK  ( SalesRegion NOT LIKE '%[^A-Z ]%' ),
	[UserAuthorizationId] integer  NOT NULL ,
	[SysStartTime]       Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Geography_Country_SysStartTime]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Geography_Country_SysEndTime]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Sales].[Customer]
( 
	[CustomerId]         integer  NOT NULL 
	CONSTRAINT [DF_Sales_Customer_CustomerId]
		 DEFAULT  NEXT VALUE FOR [sdNumber].[CustomerSequenceId],
	[FirstName]          nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_Sales_Customer_FirstName]
		 DEFAULT  'John'
	CONSTRAINT [CK_Sales_Customer_FirstName]
		CHECK  ( FirstName NOT LIKE '%[^A-Z]%' ),
	[LastName]           nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_Sales_Customer_LastName]
		 DEFAULT  'Doe'
	CONSTRAINT [CK_Sales_Customer_LastName]
		CHECK  ( LastName NOT LIKE '%[^A-Z]%' ),
	[Address1]           nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_Sales_Customer_Address1]
		 DEFAULT  'Nowhere'
	CONSTRAINT [CK_Sales_Customer_Address1]
		CHECK  ( Address1 LIKE '%[a-zA-Z0-9 ]%' ),
	[Address2]           nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_Sales_Customer_Address2]
		 DEFAULT  'Nowhere'
	CONSTRAINT [CK_Sales_Customer_Address2]
		CHECK  ( Address2 LIKE '%[a-zA-Z0-9 ]%' ),
	[City]               nvarchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_Sales_Customer_City]
		 DEFAULT  'Nowhere'
	CONSTRAINT [CK_Sales_Customer_City]
		CHECK  ( City NOT LIKE '%[^A-Z ]%' ),
	[PostalCode]         varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_Sales_Customer_PostalCode]
		 DEFAULT  '00000'
	CONSTRAINT [CK_Sales_Customer_PostalCode]
		CHECK  ( PostalCode like replicate('[0-9]',(5)) ),
	[IsReseller]         bit  NULL 
	CONSTRAINT [DF_Sales_Customer_IsReseller]
		 DEFAULT  0,
	[IsCreditRisk]       bit  NULL 
	CONSTRAINT [DF_Sales_Customer_IsCreditRisk]
		 DEFAULT  0,
	[CountryId]          integer  NULL ,
	[UserAuthorizationId] integer  NOT NULL ,
	[SysStartTime]       Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Sales_Customer_SysStartTime]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Sales_Customer_SysEndTime]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Cost].[DeliveryCharge]
( 
	[DeliveryChargeId]   integer  NOT NULL 
	CONSTRAINT [DF_Cost_DeliveryCharges_DeliveryChargeId]
		 DEFAULT  NEXT VALUE FOR [sdNumber].[DeliveryChargeSequenceId],
	[ManufacturerVehicleInventoryId] integer  NULL ,
	[PackingSymbol]      [PackingSymbol]  NULL 
	CONSTRAINT [DF_Cost_DeliveryCharges_PackingSymbol]
		 DEFAULT  'None'
	CONSTRAINT [CK_Cost_DeliveryCharges_PackingSymbol]
		CHECK  ( PackingSymbol NOT LIKE '%[^A-Z ]%' ),
	[ChargeAmount]       decimal(10,2)  NULL 
	CONSTRAINT [DF_Cost_DeliveryCharges_ChargeAmount]
		 DEFAULT  0.00
	CONSTRAINT [CK_Cost_DeliveryCharges_ChargeAmount]
		CHECK  ( ChargeAmount >= 0 ),
	[UserAuthorizationId] integer  NOT NULL ,
	[SysStartTime]       Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Cost_DeliveryCharges_SysStartTime]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Cost_DeliveryCharges_SysEndTime]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [HumanResources].[Department]
( 
	[DepartmentId]       integer  NOT NULL 
	CONSTRAINT [DF_HumanResources_Department_DepartmentId]
		 DEFAULT  NEXT VALUE FOR [sdNumber].[DepartmentSequenceId],
	[DepartmentName]     nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_HumanResources_Department_DepartmentName]
		 DEFAULT  'Unassigned'
	CONSTRAINT [CK_HumanResources_Department_DepartmentName]
		CHECK  ( DepartmentName NOT LIKE '%[^A-Z]%' ),
	[UserAuthorizationId] integer  NOT NULL ,
	[SysStartTime]       Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_HumanResources_Department_SysStartTime]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_HumanResources_Department_SysEndTime]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Vehicle].[ManufacturerModel]
( 
	[ManufacturerModelId] integer  NOT NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerModel_ManufacturerModelId]
		 DEFAULT  NEXT VALUE FOR [sdNumber].[ManufacturerModelSequenceId],
	[ManufacturerVehicleMakeId] integer  NULL ,
	[ModelName]          [ModelName]  NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerModel_ModelName]
		 DEFAULT  'Unknown'
	CONSTRAINT [CK_Vehicle_ManufacturerModel_ModelName]
		CHECK  ( ModelName LIKE '%[a-zA-Z0-9 ]%' ),
	[Variant]            [sdVariant]  NULL ,
	[UserAuthorizationId] integer  NOT NULL ,
	[SysStartTime]       Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerModel_SysStartTime]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerModel_SysEndTime]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Vehicle].[ManufacturerVehicleInventory]
( 
	[ManufacturerVehicleInventoryId] integer  NOT NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerVehicleInventory_ManufacturerVehicleInventoryId]
		 DEFAULT  NEXT VALUE FOR [sdNumber].[ManufacturerVehicleInventorySequenceId],
	[StockCode]          integer  NULL ,
	[ManufacturerModelId] integer  NULL ,
	[PurchaseCost]       decimal(10,2)  NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerVehicleInventory_PurchaseCost]
		 DEFAULT  0.00
	CONSTRAINT [CK_Vehicle_ManufacturerVehicleInventory_PurchaseCost]
		CHECK  ( PurchaseCost >= 0 ),
	[IsPremiumRoadHandlingPackage] bit  NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerVehicleInventory_IsPremiumRoadHandlingPackage]
		 DEFAULT  0,
	[VehicleColor]       [Color]  NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerVehicleInventory_VehicleColor]
		 DEFAULT  'Unknown'
	CONSTRAINT [CK_Vehicle_ManufacturerVehicleInventory_VehicleColor]
		CHECK  ( VehicleColor NOT LIKE '%[^A-Z ]%' ),
	[ManufacturerComments] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerVehicleInventory_ManufacturerComments]
		 DEFAULT  'No notes added',
	[UserAuthorizationId] integer  NOT NULL ,
	[SysStartTime]       Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerVehicleInventory_SysStartTime]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerVehicleInventory_SysEndTime]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Vehicle].[ManufacturerVehicleMake]
( 
	[ManufacturerVehicleMakeId] integer  NOT NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerVehicleMake_ManufacturerVehicleMakeId]
		 DEFAULT  NEXT VALUE FOR [sdNumber].[ManufacturerVehicleMakeSequenceId],
	[MakeName]           nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerVehicleMake_MakeName]
		 DEFAULT  'Unknown'
	CONSTRAINT [CK_Vehicle_ManufacturerVehicleMake_MakeName]
		CHECK  ( MakeName LIKE '%[a-zA-Z0-9 ]%' ),
	[CountryId]          integer  NULL ,
	[Type]               [VehicleType]  NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerVehicleMake_Type]
		 DEFAULT  'Unknown'
	CONSTRAINT [CK_Vehicle_ManufacturerVehicleMake_Type]
		CHECK  ( Type NOT LIKE '%[^A-Z ]%' ),
	[UserAuthorizationId] integer  NOT NULL ,
	[SysStartTime]       Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerVehicleMake_SysStartTime]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Vehicle_ManufacturerVehicleMake_SysEndTime]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Marketing].[MarketingCategory]
( 
	[MarketingCategoryId] integer  NOT NULL 
	CONSTRAINT [DF_Marketing_MarketingCategory_MarketingCategoryId]
		 DEFAULT  NEXT VALUE FOR [sdNumber].[MarketingCategorySequenceId],
	[ManufacturerModelId] integer  NULL ,
	[MarketingType]      [MarketingType]  NULL 
	CONSTRAINT [DF_Marketing_MarketingCategory_MarketingType]
		 DEFAULT  'Unknown'
	CONSTRAINT [CK_Marketing_MarketingCategory_MarketingType]
		CHECK  ( MarketingType LIKE '%[a-zA-Z0-9 ]%' ),
	[CampaignName]       nvarchar(31) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_Marketing_MarketingCategory_CampaignName]
		 DEFAULT  'Unknown'
	CONSTRAINT [CK_Marketing_MarketingCategory_CampaignName]
		CHECK  ( CampaignName NOT LIKE '%[^A-Z ]%' ),
	[Country]            nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_Marketing_MarketingCategory_Country]
		 DEFAULT  'Nowhere'
	CONSTRAINT [CK_Marketing_MarketingCategory_Country]
		CHECK  ( Country NOT LIKE '%[^A-Z ]%' ),
	[ManufacturerSpendCapacity] decimal(10,2)  NULL 
	CONSTRAINT [DF_Marketing_MarketingCategory_ManufacturerSpendCapacity]
		 DEFAULT  0.00
	CONSTRAINT [CK_Marketing_MarketingCategory_ManufacturerSpendCapacity]
		CHECK  ( ManufacturerSpendCapacity >= 0 ),
	[LowerThresholdValue] integer  NULL 
	CONSTRAINT [DF_Marketing_MarketingCategory_LowerThresholdValue]
		 DEFAULT  0
	CONSTRAINT [CK_Marketing_MarketingCategory_LowerThresholdValue]
		CHECK  ( LowerThresholdValue NOT LIKE '%[^0-9]%' ),
	[UpperThreshold]     integer  NULL 
	CONSTRAINT [DF_Marketing_MarketingCategory_UpperThreshold]
		 DEFAULT  0
	CONSTRAINT [CK_Marketing_MarketingCategory_UpperThreshold]
		CHECK  ( UpperThreshold NOT LIKE '%[^0-9]%' ),
	[UserAuthorizationId] integer  NOT NULL ,
	[SysStartTime]       Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Marketing_MarketingCategory_SysStartTime]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Marketing_MarketingCategory_SysEndTime]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Cost].[PartsCharge]
( 
	[PartsChargeId]      integer  NOT NULL 
	CONSTRAINT [DF_Cost_PartsCharges_PartsChargeId]
		 DEFAULT  NEXT VALUE FOR [sdNumber].[PartsChargeSequenceId],
	[ManufacturerVehicleInventoryId] integer  NULL ,
	[PartType]           [ComponentType]  NULL 
	CONSTRAINT [DF_Cost_PartsCharges_PartType]
		 DEFAULT  'Unknown'
	CONSTRAINT [CK_Cost_PartsCharges_PartType]
		CHECK  ( PartType LIKE '%[a-zA-Z0-9 ]%' ),
	[ChargeAmount]       decimal(10,2)  NULL 
	CONSTRAINT [DF_Cost_PartsCharges_ChargeAmount]
		 DEFAULT  0.00
	CONSTRAINT [CK_Cost_PartsCharges_ChargeAmount]
		CHECK  ( ChargeAmount >= 0 ),
	[UserAuthorizationId] integer  NOT NULL ,
	[SysStartTime]       Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Cost_PartsCharges_SysStartTime]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Cost_PartsCharges_SysEndTime]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Cost].[RepairCharge]
( 
	[RepairChargeId]     integer  NOT NULL 
	CONSTRAINT [DF_Cost_RepairCharges_RepairChargeId]
		 DEFAULT  NEXT VALUE FOR [sdNumber].[RepairChargeSequenceId],
	[ManufacturerVehicleInventoryId] integer  NULL ,
	[Component]          [ComponentType]  NULL 
	CONSTRAINT [DF_Cost_RepairCharges_Component]
		 DEFAULT  'Unknown'
	CONSTRAINT [CK_Cost_RepairCharges_Component]
		CHECK  ( Component LIKE '%[a-zA-Z0-9 ]%' ),
	[ServiceType]        [ServiceType]  NULL 
	CONSTRAINT [DF_Cost_RepairCharges_ServiceType]
		 DEFAULT  'Unknown'
	CONSTRAINT [CK_Cost_RepairCharges_ServiceType]
		CHECK  ( ServiceType NOT LIKE '%[^A-Z ]%' ),
	[ChargeAmount]       decimal(10,2)  NULL 
	CONSTRAINT [DF_Cost_RepairCharges_ChargeAmount]
		 DEFAULT  0.00
	CONSTRAINT [CK_Cost_RepairCharges_ChargeAmount]
		CHECK  ( ChargeAmount >= 0 ),
	[UserAuthorizationId] integer  NOT NULL ,
	[SysStartTime]       Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Cost_RepairCharges_SysStartTime]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Cost_RepairCharges_SysEndTime]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Sales].[SalesOrderVehicle]
( 
	[SalesOrderVehicleId] integer  NOT NULL 
	CONSTRAINT [DF_Sales_SalesOrderVehicle_SalesOrderVehicleId]
		 DEFAULT  NEXT VALUE FOR [sdNumber].[SalesOrderVehicleSequenceId],
	[CustomerId]         integer  NULL ,
	[InvoiceNumber]      integer  NULL ,
	[SaleDate]           Datetimeoffset  NULL 
	CONSTRAINT [DF_Sales_SalesOrderVehicle_SaleDate]
		 DEFAULT  CURRENT_TIMESTAMP,
	[StaffId]            integer  NULL ,
	[UserAuthorizationId] integer  NOT NULL ,
	[SysStartTime]       Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Sales_SalesOrderVehicle_SysStartTime]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Sales_SalesOrderVehicle_SysEndTime]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Sales].[SalesOrderVehicleDetail]
( 
	[SalesOrderVehicleDetailId] integer  NOT NULL 
	CONSTRAINT [DF_Sales_SalesOrderVehicleDetail_SalesOrderVehicleDetailId]
		 DEFAULT  NEXT VALUE FOR [sdNumber].[SalesOrderVehicleDetailSequenceId],
	[SalesOrderVehicleId] integer  NULL ,
	[ManufacturerVehicleInventoryId] integer  NULL ,
	[SalePrice]          decimal(10,2)  NULL 
	CONSTRAINT [DF_Sales_SalesOrderVehicleDetail_SalePrice]
		 DEFAULT  0.00
	CONSTRAINT [CK_Sales_SalesOrderVehicleDetail_SalePrice]
		CHECK  ( SalePrice >= 0 ),
	[Discount]           decimal(3,2)  NULL 
	CONSTRAINT [DF_Sales_SalesOrderVehicleDetail_Discount]
		 DEFAULT  0.00
	CONSTRAINT [CK_Sales_SalesOrderVehicleDetail_Discount]
		CHECK  ( Discount BETWEEN 0 AND 1 ),
	[UserAuthorizationId] integer  NOT NULL ,
	[SysStartTime]       Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Sales_SalesOrderVehicleDetail_SysStartTime]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_Sales_SalesOrderVehicleDetail_SysEndTime]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [HumanResources].[Staff]
( 
	[StaffId]            integer  NOT NULL 
	CONSTRAINT [DF_HumanResources_Staff_StaffId]
		 DEFAULT  NEXT VALUE FOR [sdNumber].[StaffSequenceId],
	[FirstName]          nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_HumanResources_Staff_FirstName]
		 DEFAULT  'John'
	CONSTRAINT [CK_HumanResources_Staff_FirstName]
		CHECK  ( FirstName NOT LIKE '%[^A-Z]%' ),
	[LastName]           nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT [DF_HumanResources_Staff_LastName]
		 DEFAULT  'Doe'
	CONSTRAINT [CK_HumanResources_Staff_LastName]
		CHECK  ( LastName NOT LIKE '%[^A-Z]%' ),
	[ManagerID]          integer  NULL ,
	[DepartmentId]       integer  NULL ,
	[Address]            nvarchar(60)  NULL 
	CONSTRAINT [DF_HumanResources_Staff_Address]
		 DEFAULT  'Nowhere'
	CONSTRAINT [CK_HumanResources_Staff_Address]
		CHECK  ( Address LIKE '%[a-zA-Z0-9 ]%' ),
	[City]               nvarchar(15)  NULL 
	CONSTRAINT [DF_HumanResources_Staff_City]
		 DEFAULT  'Nowhere'
	CONSTRAINT [CK_HumanResources_Staff_City]
		CHECK  ( City NOT LIKE '%[^A-Z ]%' ),
	[PostalCode]         varchar(5)  NULL 
	CONSTRAINT [DF_HumanResources_Staff_PostalCode]
		 DEFAULT  '00000'
	CONSTRAINT [CK_HumanResources_Staff_PostalCode]
		CHECK  ( PostalCode like replicate('[0-9]',(5)) ),
	[Country]            nvarchar(60)  NULL 
	CONSTRAINT [DF_HumanResources_Staff_Country]
		 DEFAULT  'Nowhere'
	CONSTRAINT [CK_HumanResources_Staff_Country]
		CHECK  ( Country NOT LIKE '%[^A-Z ]%' ),
	[UserAuthorizationId] integer  NOT NULL ,
	[SysStartTime]       Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_HumanResources_Staff_SysStartTime]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_HumanResources_Staff_SysEndTime]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [DBSecurity].[UserAuthorization]
( 
	[UserAuthorizationId] integer  NOT NULL 
	CONSTRAINT [DF_DBSecurity_UserAuthorization_UserAuthorizationId]
		 DEFAULT  NEXT VALUE FOR [sdNumber].[UserAuthorizationSequenceId],
	[ClassTime]          nchar(5)  NULL 
	CONSTRAINT [DF_DbSecurity_UserAuthorization_ClassTime]
		 DEFAULT  '09:15',
	[IndividualProject]  nvarchar(50)  NULL 
	CONSTRAINT [DF_DbSecurity_UserAuthorization_IndividualProject]
		 DEFAULT  'Unknown'
	CONSTRAINT [CK_DF_DbSecurity_UserAuthorization_IndividualProject]
		CHECK  ( IndividualProject LIKE '%[a-zA-Z0-9 ]%' ),
	[GroupMemberLastName] nvarchar(30)  NOT NULL 
	CONSTRAINT [DF_DbSecurity_UserAuthorization_GroupMemberLastName]
		 DEFAULT  'Doe'
	CONSTRAINT [CK_DbSecurity_UserAuthorization_GroupMemberLastName]
		CHECK  ( GroupMemberLastName NOT LIKE '%[^A-Z]%' ),
	[GroupMemberFirstName] nvarchar(30)  NOT NULL 
	CONSTRAINT [DF_DbSecurity_UserAuthorization_GroupMemberFirstName]
		 DEFAULT  'John'
	CONSTRAINT [CK_DbSecurity_UserAuthorization_GroupMemberFirstName]
		CHECK  ( GroupMemberFirstName NOT LIKE '%[^A-Z]%' ),
	[GroupName]          nvarchar(50)  NOT NULL 
	CONSTRAINT [DF_DbSecurity_UserAuthorization_GroupName]
		 DEFAULT  'Unknown'
	CONSTRAINT [CK_DbSecurity_UserAuthorization_GroupName]
		CHECK  ( GroupName LIKE '%[a-zA-Z0-9 ]%' ),
	[SysStartTime]       Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_DBSecurity_UserAuthorization_SysStartTime]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         Datetimeoffset  NOT NULL 
	CONSTRAINT [DF_DbSecurity_UserAuthorization_SysEndTime]
		 DEFAULT  sysdatetime()
)
go

ALTER TABLE [Geography].[Country]
	ADD CONSTRAINT [PK__Country__10D1609F9CF80B94] PRIMARY KEY  CLUSTERED ([CountryId] ASC)
go

ALTER TABLE [Geography].[Country]
	ADD CONSTRAINT [AK_Geography_Country] UNIQUE ([ISO2]  ASC,[ISO3]  ASC)
go

ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [PK__Customer__A4AE64D8D6DFAEA0] PRIMARY KEY  CLUSTERED ([CustomerId] ASC)
go

ALTER TABLE [Cost].[DeliveryCharge]
	ADD CONSTRAINT [PK__Delivery__373460FC8A0764C3] PRIMARY KEY  CLUSTERED ([DeliveryChargeId] ASC)
go

ALTER TABLE [HumanResources].[Department]
	ADD CONSTRAINT [PK__Departme__B2079BEDCE3E6688] PRIMARY KEY  CLUSTERED ([DepartmentId] ASC)
go

ALTER TABLE [HumanResources].[Department]
	ADD CONSTRAINT [AK_HumanResources_Department] UNIQUE ([DepartmentName]  ASC)
go

ALTER TABLE [Vehicle].[ManufacturerModel]
	ADD CONSTRAINT [PK__Manufact__252DFCF1727A6007] PRIMARY KEY  CLUSTERED ([ManufacturerModelId] ASC)
go

ALTER TABLE [Vehicle].[ManufacturerModel]
	ADD CONSTRAINT [AK_Vehicle_ManufacturerModel] UNIQUE ([ManufacturerVehicleMakeId]  ASC,[ModelName]  ASC,[Variant]  ASC)
go

ALTER TABLE [Vehicle].[ManufacturerVehicleInventory]
	ADD CONSTRAINT [PK__Manufact__913144702B55DFE5] PRIMARY KEY  CLUSTERED ([ManufacturerVehicleInventoryId] ASC)
go

ALTER TABLE [Vehicle].[ManufacturerVehicleInventory]
	ADD CONSTRAINT [AK_Vehicle_ManufacturerVehicleInventory] UNIQUE ([StockCode]  ASC)
go

ALTER TABLE [Vehicle].[ManufacturerVehicleMake]
	ADD CONSTRAINT [PK__Manufact__E48A8FB11A3A66F3] PRIMARY KEY  CLUSTERED ([ManufacturerVehicleMakeId] ASC)
go

ALTER TABLE [Vehicle].[ManufacturerVehicleMake]
	ADD CONSTRAINT [AK_Vehicle_ManufacturerVehicleMake] UNIQUE ([MakeName]  ASC)
go

ALTER TABLE [Marketing].[MarketingCategory]
	ADD CONSTRAINT [PK__Marketin__2414B7BF3F61EB71] PRIMARY KEY  CLUSTERED ([MarketingCategoryId] ASC)
go

ALTER TABLE [Cost].[PartsCharge]
	ADD CONSTRAINT [PK__PartsCha__F7AEBF009E22A15E] PRIMARY KEY  CLUSTERED ([PartsChargeId] ASC)
go

ALTER TABLE [Cost].[RepairCharge]
	ADD CONSTRAINT [PK__RepairCh__5E457FB8FE2B2A4B] PRIMARY KEY  CLUSTERED ([RepairChargeId] ASC)
go

ALTER TABLE [Sales].[SalesOrderVehicle]
	ADD CONSTRAINT [PK__SalesOrd__43A0F4B07FD38F53] PRIMARY KEY  CLUSTERED ([SalesOrderVehicleId] ASC)
go

ALTER TABLE [Sales].[SalesOrderVehicle]
	ADD CONSTRAINT [AK_Sales_SalesOrderVehicle] UNIQUE ([InvoiceNumber]  ASC)
go

ALTER TABLE [Sales].[SalesOrderVehicleDetail]
	ADD CONSTRAINT [PK__SalesOrd__018E31CFBE2C596A] PRIMARY KEY  CLUSTERED ([SalesOrderVehicleDetailId] ASC)
go

ALTER TABLE [HumanResources].[Staff]
	ADD CONSTRAINT [PK__Staff__96D4AB17DB7221FE] PRIMARY KEY  CLUSTERED ([StaffId] ASC)
go

ALTER TABLE [DBSecurity].[UserAuthorization]
	ADD CONSTRAINT [XPKUserAuthorization] PRIMARY KEY  CLUSTERED ([UserAuthorizationId] ASC)
go

CREATE VIEW [Marketing].[uvw_MarketingMarketingCategory]([MarketingCategoryId],[ManufacturerModelId],[MarketingType],[CampaignName],[Country],[ManufacturerSpendCapacity],[LowerThresholdValue],[UpperThreshold],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Marketing].[MarketingCategory].[MarketingCategoryId],[Marketing].[MarketingCategory].[ManufacturerModelId],[Marketing].[MarketingCategory].[MarketingType],[Marketing].[MarketingCategory].[CampaignName],[Marketing].[MarketingCategory].[Country],[Marketing].[MarketingCategory].[ManufacturerSpendCapacity],[Marketing].[MarketingCategory].[LowerThresholdValue],[Marketing].[MarketingCategory].[UpperThreshold],[Marketing].[MarketingCategory].[UserAuthorizationId],[Marketing].[MarketingCategory].[SysStartTime],[Marketing].[MarketingCategory].[SysEndTime]
	FROM [Marketing].[MarketingCategory]
go

CREATE VIEW [Vehicle].[uvw_VehicleManufacturerModel]([ManufacturerModelId],[ManufacturerVehicleMakeId],[ModelName],[Variant],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Vehicle].[ManufacturerModel].[ManufacturerModelId],[Vehicle].[ManufacturerModel].[ManufacturerVehicleMakeId],[Vehicle].[ManufacturerModel].[ModelName],[Vehicle].[ManufacturerModel].[Variant],[Vehicle].[ManufacturerModel].[UserAuthorizationId],[Vehicle].[ManufacturerModel].[SysStartTime],[Vehicle].[ManufacturerModel].[SysEndTime]
	FROM [Vehicle].[ManufacturerModel]
go

CREATE VIEW [Cost].[uvw_CostPartsCharges]([PartsChargeId],[ManufacturerVehicleInventoryId],[PartType],[ChargeAmount],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Cost].[PartsCharge].[PartsChargeId],[Cost].[PartsCharge].[ManufacturerVehicleInventoryId],[Cost].[PartsCharge].[PartType],[Cost].[PartsCharge].[ChargeAmount],[Cost].[PartsCharge].[UserAuthorizationId],[Cost].[PartsCharge].[SysStartTime],[Cost].[PartsCharge].[SysEndTime]
	FROM [Cost].[PartsCharge]
go

CREATE VIEW [Cost].[uvw_CostRepairCharges]([RepairChargeId],[ManufacturerVehicleInventoryId],[Component],[ServiceType],[ChargeAmount],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Cost].[RepairCharge].[RepairChargeId],[Cost].[RepairCharge].[ManufacturerVehicleInventoryId],[Cost].[RepairCharge].[Component],[Cost].[RepairCharge].[ServiceType],[Cost].[RepairCharge].[ChargeAmount],[Cost].[RepairCharge].[UserAuthorizationId],[Cost].[RepairCharge].[SysStartTime],[Cost].[RepairCharge].[SysEndTime]
	FROM [Cost].[RepairCharge]
go

CREATE VIEW [Vehicle].[uvw_VehicleManufacturerVehicleInventory]([ManufacturerVehicleInventoryId],[StockCode],[ManufacturerModelId],[PurchaseCost],[IsPremiumRoadHandlingPackage],[VehicleColor],[ManufacturerComments],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Vehicle].[ManufacturerVehicleInventory].[ManufacturerVehicleInventoryId],[Vehicle].[ManufacturerVehicleInventory].[StockCode],[Vehicle].[ManufacturerVehicleInventory].[ManufacturerModelId],[Vehicle].[ManufacturerVehicleInventory].[PurchaseCost],[Vehicle].[ManufacturerVehicleInventory].[IsPremiumRoadHandlingPackage],[Vehicle].[ManufacturerVehicleInventory].[VehicleColor],[Vehicle].[ManufacturerVehicleInventory].[ManufacturerComments],[Vehicle].[ManufacturerVehicleInventory].[UserAuthorizationId],[Vehicle].[ManufacturerVehicleInventory].[SysStartTime],[Vehicle].[ManufacturerVehicleInventory].[SysEndTime]
	FROM [Vehicle].[ManufacturerVehicleInventory]
go

CREATE VIEW [Cost].[uvw_CostDeliveryCharges]([DeliveryChargeId],[ManufacturerVehicleInventoryId],[PackingSymbol],[ChargeAmount],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Cost].[DeliveryCharge].[DeliveryChargeId],[Cost].[DeliveryCharge].[ManufacturerVehicleInventoryId],[Cost].[DeliveryCharge].[PackingSymbol],[Cost].[DeliveryCharge].[ChargeAmount],[Cost].[DeliveryCharge].[UserAuthorizationId],[Cost].[DeliveryCharge].[SysStartTime],[Cost].[DeliveryCharge].[SysEndTime]
	FROM [Cost].[DeliveryCharge]
go

CREATE VIEW [DBSecurity].[uvw_DBSecurityUserAuthorization]([UserAuthorizationId],[ClassTime],[IndividualProject],[GroupMemberLastName],[GroupMemberFirstName],[GroupName],[SysStartTime],[SysEndTime])
AS
SELECT [DBSecurity].[UserAuthorization].[UserAuthorizationId],[DBSecurity].[UserAuthorization].[ClassTime],[DBSecurity].[UserAuthorization].[IndividualProject],[DBSecurity].[UserAuthorization].[GroupMemberLastName],[DBSecurity].[UserAuthorization].[GroupMemberFirstName],[DBSecurity].[UserAuthorization].[GroupName],[DBSecurity].[UserAuthorization].[SysStartTime],[DBSecurity].[UserAuthorization].[SysEndTime]
	FROM [DBSecurity].[UserAuthorization]
go

CREATE VIEW [Vehicle].[uvw_VehicleManufacturerVehicleMake]([ManufacturerVehicleMakeId],[MakeName],[CountryId],[Type],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Vehicle].[ManufacturerVehicleMake].[ManufacturerVehicleMakeId],[Vehicle].[ManufacturerVehicleMake].[MakeName],[Vehicle].[ManufacturerVehicleMake].[CountryId],[Vehicle].[ManufacturerVehicleMake].[Type],[Vehicle].[ManufacturerVehicleMake].[UserAuthorizationId],[Vehicle].[ManufacturerVehicleMake].[SysStartTime],[Vehicle].[ManufacturerVehicleMake].[SysEndTime]
	FROM [Vehicle].[ManufacturerVehicleMake]
go

CREATE VIEW [Sales].[uvw_SalesSalesOrderVehicleDetail]([SalesOrderVehicleDetailId],[SalesOrderVehicleId],[ManufacturerVehicleInventoryId],[SalePrice],[Discount],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Sales].[SalesOrderVehicleDetail].[SalesOrderVehicleDetailId],[Sales].[SalesOrderVehicleDetail].[SalesOrderVehicleId],[Sales].[SalesOrderVehicleDetail].[ManufacturerVehicleInventoryId],[Sales].[SalesOrderVehicleDetail].[SalePrice],[Sales].[SalesOrderVehicleDetail].[Discount],[Sales].[SalesOrderVehicleDetail].[UserAuthorizationId],[Sales].[SalesOrderVehicleDetail].[SysStartTime],[Sales].[SalesOrderVehicleDetail].[SysEndTime]
	FROM [Sales].[SalesOrderVehicleDetail]
go

CREATE VIEW [Geography].[uvw_GeographyCountry]([CountryId],[ISO3],[CountryName],[ISO2],[SalesRegion],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Geography].[Country].[CountryId],[Geography].[Country].[ISO3],[Geography].[Country].[CountryName],[Geography].[Country].[ISO2],[Geography].[Country].[SalesRegion],[Geography].[Country].[UserAuthorizationId],[Geography].[Country].[SysStartTime],[Geography].[Country].[SysEndTime]
	FROM [Geography].[Country]
go

CREATE VIEW [HumanResources].[uvw_HumanResourcesDepartment]([DepartmentId],[DepartmentName],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [HumanResources].[Department].[DepartmentId],[HumanResources].[Department].[DepartmentName],[HumanResources].[Department].[UserAuthorizationId],[HumanResources].[Department].[SysStartTime],[HumanResources].[Department].[SysEndTime]
	FROM [HumanResources].[Department]
go

CREATE VIEW [Sales].[uvw_SalesCustomer]([CustomerId],[FirstName],[LastName],[Address1],[Address2],[City],[PostalCode],[IsReseller],[IsCreditRisk],[CountryId],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Sales].[Customer].[CustomerId],[Sales].[Customer].[FirstName],[Sales].[Customer].[LastName],[Sales].[Customer].[Address1],[Sales].[Customer].[Address2],[Sales].[Customer].[City],[Sales].[Customer].[PostalCode],[Sales].[Customer].[IsReseller],[Sales].[Customer].[IsCreditRisk],[Sales].[Customer].[CountryId],[Sales].[Customer].[UserAuthorizationId],[Sales].[Customer].[SysStartTime],[Sales].[Customer].[SysEndTime]
	FROM [Sales].[Customer]
go

CREATE VIEW [Sales].[uvw_SalesSalesOrderVehicle]([SalesOrderVehicleId],[CustomerId],[InvoiceNumber],[SaleDate],[StaffId],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Sales].[SalesOrderVehicle].[SalesOrderVehicleId],[Sales].[SalesOrderVehicle].[CustomerId],[Sales].[SalesOrderVehicle].[InvoiceNumber],[Sales].[SalesOrderVehicle].[SaleDate],[Sales].[SalesOrderVehicle].[StaffId],[Sales].[SalesOrderVehicle].[UserAuthorizationId],[Sales].[SalesOrderVehicle].[SysStartTime],[Sales].[SalesOrderVehicle].[SysEndTime]
	FROM [Sales].[SalesOrderVehicle]
go

CREATE VIEW [HumanResources].[uvw_HumanResourcesStaff]([StaffId],[FirstName],[LastName],[ManagerID],[DepartmentId],[Address],[City],[PostalCode],[Country],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [HumanResources].[Staff].[StaffId],[HumanResources].[Staff].[FirstName],[HumanResources].[Staff].[LastName],[HumanResources].[Staff].[ManagerID],[HumanResources].[Staff].[DepartmentId],[HumanResources].[Staff].[Address],[HumanResources].[Staff].[City],[HumanResources].[Staff].[PostalCode],[HumanResources].[Staff].[Country],[HumanResources].[Staff].[UserAuthorizationId],[HumanResources].[Staff].[SysStartTime],[HumanResources].[Staff].[SysEndTime]
	FROM [HumanResources].[Staff]
go

CREATE VIEW [Report].[uvw_EmployeeInformation]([DepartmentName],[FirstName],[LastName],[Address],[City],[PostalCode],[Country])
AS
SELECT [HumanResources].[Department].[DepartmentName],[HumanResources].[Staff].[FirstName],[HumanResources].[Staff].[LastName],[HumanResources].[Staff].[Address],[HumanResources].[Staff].[City],[HumanResources].[Staff].[PostalCode],[HumanResources].[Staff].[Country]
	FROM [HumanResources].[Staff],[HumanResources].[Department]
go

CREATE VIEW [Report].[uvw_ManufacturerCountryAndVehicle]([MakeName],[ModelName],[Type],[CountryName],[SalesRegion])
AS
SELECT [Vehicle].[ManufacturerVehicleMake].[MakeName],[Vehicle].[ManufacturerModel].[ModelName],[Vehicle].[ManufacturerVehicleMake].[Type],[Geography].[Country].[CountryName],[Geography].[Country].[SalesRegion]
	FROM [Vehicle].[ManufacturerModel],[Vehicle].[ManufacturerVehicleMake],[Geography].[Country]
go

CREATE VIEW [Report].[uvw_MarketingCustomerSales]([CampaignName],[MarketingType],[SalePrice],[FirstName],[LastName],[LowerThresholdValue],[UpperThreshold])
AS
SELECT [Marketing].[MarketingCategory].[CampaignName],[Marketing].[MarketingCategory].[MarketingType],[Sales].[SalesOrderVehicleDetail].[SalePrice],[Sales].[Customer].[FirstName],[Sales].[Customer].[LastName],[Marketing].[MarketingCategory].[LowerThresholdValue],[Marketing].[MarketingCategory].[UpperThreshold]
	FROM [Marketing].[MarketingCategory],[Sales].[SalesOrderVehicleDetail],[Sales].[Customer]
go

CREATE VIEW [Report].[uvw_PartsCharges]([ManufacturerVehicleInventoryId],[IsPremiumRoadHandlingPackage],[RepairChargeAmount],[ServiceType],[PartsChargeAmount],[PartType],[DeliveryChargeAmount])
AS
SELECT [Vehicle].[ManufacturerVehicleInventory].[ManufacturerVehicleInventoryId],[Vehicle].[ManufacturerVehicleInventory].[IsPremiumRoadHandlingPackage],[Cost].[RepairCharge].[ChargeAmount],[Cost].[RepairCharge].[ServiceType],[Cost].[PartsCharge].[ChargeAmount],[Cost].[PartsCharge].[PartType],[Cost].[DeliveryCharge].[ChargeAmount]
	FROM [Cost].[DeliveryCharge],[Cost].[PartsCharge],[Cost].[RepairCharge],[Vehicle].[ManufacturerVehicleInventory]
go

CREATE VIEW [Report].[uvw_StaffSoldCars]([FirstName],[LastName],[MakeName],[ModelName],[Type],[Variant])
AS
SELECT [HumanResources].[Staff].[FirstName],[HumanResources].[Staff].[LastName],[Vehicle].[ManufacturerVehicleMake].[MakeName],[Vehicle].[ManufacturerModel].[ModelName],[Vehicle].[ManufacturerVehicleMake].[Type],[Vehicle].[ManufacturerModel].[Variant]
	FROM [Sales].[SalesOrderVehicle],[HumanResources].[Staff],[Vehicle].[ManufacturerVehicleMake],[Vehicle].[ManufacturerModel]
go


ALTER TABLE [Geography].[Country]
	ADD CONSTRAINT [FK_UserAuthorization_Country] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DBSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [FK_Customer_Country] FOREIGN KEY ([CountryId]) REFERENCES [Geography].[Country]([CountryId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[Customer]
	ADD CONSTRAINT [FK_UserAuthorization_Customer] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DBSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Cost].[DeliveryCharge] WITH CHECK 
	ADD CONSTRAINT [FK_DeliveryCharges_ManufacturerVehicleInventory] FOREIGN KEY ([ManufacturerVehicleInventoryId]) REFERENCES [Vehicle].[ManufacturerVehicleInventory]([ManufacturerVehicleInventoryId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Cost].[DeliveryCharge]
	  WITH CHECK CHECK CONSTRAINT [FK_DeliveryCharges_ManufacturerVehicleInventory]
go

ALTER TABLE [Cost].[DeliveryCharge]
	ADD CONSTRAINT [FK_UserAuthorization_DeliveryCharges] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DBSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [HumanResources].[Department]
	ADD CONSTRAINT [FK_UserAuthorization_Department] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DBSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Vehicle].[ManufacturerModel] WITH CHECK 
	ADD CONSTRAINT [FK_ManufacturerModel_ManufacturerVehicleMake] FOREIGN KEY ([ManufacturerVehicleMakeId]) REFERENCES [Vehicle].[ManufacturerVehicleMake]([ManufacturerVehicleMakeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Vehicle].[ManufacturerModel]
	  WITH CHECK CHECK CONSTRAINT [FK_ManufacturerModel_ManufacturerVehicleMake]
go

ALTER TABLE [Vehicle].[ManufacturerModel]
	ADD CONSTRAINT [FK_UserAuthorization_ManufacturerModel] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DBSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Vehicle].[ManufacturerVehicleInventory] WITH CHECK 
	ADD CONSTRAINT [FK_ManufacturerVehicleInventory_ManufacturerModel] FOREIGN KEY ([ManufacturerModelId]) REFERENCES [Vehicle].[ManufacturerModel]([ManufacturerModelId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Vehicle].[ManufacturerVehicleInventory]
	  WITH CHECK CHECK CONSTRAINT [FK_ManufacturerVehicleInventory_ManufacturerModel]
go

ALTER TABLE [Vehicle].[ManufacturerVehicleInventory]
	ADD CONSTRAINT [FK_UserAuthorization_ManufacturerVechileInventory] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DBSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Vehicle].[ManufacturerVehicleMake] WITH CHECK 
	ADD CONSTRAINT [FK_ManufacturerVehicleMake_Country] FOREIGN KEY ([CountryId]) REFERENCES [Geography].[Country]([CountryId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Vehicle].[ManufacturerVehicleMake]
	  WITH CHECK CHECK CONSTRAINT [FK_ManufacturerVehicleMake_Country]
go

ALTER TABLE [Vehicle].[ManufacturerVehicleMake]
	ADD CONSTRAINT [FK_UserAuthorization_ManufacturerVehicleMake] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DBSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Marketing].[MarketingCategory] WITH CHECK 
	ADD CONSTRAINT [FK_MarketingCategory_ManufacturerModel] FOREIGN KEY ([ManufacturerModelId]) REFERENCES [Vehicle].[ManufacturerModel]([ManufacturerModelId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Marketing].[MarketingCategory]
	  WITH CHECK CHECK CONSTRAINT [FK_MarketingCategory_ManufacturerModel]
go

ALTER TABLE [Marketing].[MarketingCategory]
	ADD CONSTRAINT [FK_UserAuthorization_MarketingCategory] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DBSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Cost].[PartsCharge] WITH CHECK 
	ADD CONSTRAINT [FK_PartsCharges_ManufacturerVehicleInventory] FOREIGN KEY ([ManufacturerVehicleInventoryId]) REFERENCES [Vehicle].[ManufacturerVehicleInventory]([ManufacturerVehicleInventoryId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Cost].[PartsCharge]
	  WITH CHECK CHECK CONSTRAINT [FK_PartsCharges_ManufacturerVehicleInventory]
go

ALTER TABLE [Cost].[PartsCharge]
	ADD CONSTRAINT [FK_UserAuthorization_PartCharges] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DBSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Cost].[RepairCharge] WITH CHECK 
	ADD CONSTRAINT [FK_RepairCharges_ManufacturerVehicleInventory] FOREIGN KEY ([ManufacturerVehicleInventoryId]) REFERENCES [Vehicle].[ManufacturerVehicleInventory]([ManufacturerVehicleInventoryId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Cost].[RepairCharge]
	  WITH CHECK CHECK CONSTRAINT [FK_RepairCharges_ManufacturerVehicleInventory]
go

ALTER TABLE [Cost].[RepairCharge]
	ADD CONSTRAINT [FK_UserAuthorization_RepairCharges] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DBSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Sales].[SalesOrderVehicle] WITH CHECK 
	ADD CONSTRAINT [FK_SalesOrderVehicle_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [Sales].[Customer]([CustomerId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[SalesOrderVehicle]
	  WITH CHECK CHECK CONSTRAINT [FK_SalesOrderVehicle_Customer]
go

ALTER TABLE [Sales].[SalesOrderVehicle]
	ADD CONSTRAINT [FK_SalesOrderVehicle_Staff] FOREIGN KEY ([StaffId]) REFERENCES [HumanResources].[Staff]([StaffId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[SalesOrderVehicle]
	ADD CONSTRAINT [FK_UserAuthorization_SaleOrderVehicle] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DBSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Sales].[SalesOrderVehicleDetail] WITH CHECK 
	ADD CONSTRAINT [FK_SalesOrderVehicleDetail_SalesOrderVehicle] FOREIGN KEY ([SalesOrderVehicleId]) REFERENCES [Sales].[SalesOrderVehicle]([SalesOrderVehicleId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[SalesOrderVehicleDetail]
	  WITH CHECK CHECK CONSTRAINT [FK_SalesOrderVehicleDetail_SalesOrderVehicle]
go

ALTER TABLE [Sales].[SalesOrderVehicleDetail] WITH CHECK 
	ADD CONSTRAINT [FK_SalesOrderVehicleDetail_ManufacturerVehicleInventory] FOREIGN KEY ([ManufacturerVehicleInventoryId]) REFERENCES [Vehicle].[ManufacturerVehicleInventory]([ManufacturerVehicleInventoryId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Sales].[SalesOrderVehicleDetail]
	  WITH CHECK CHECK CONSTRAINT [FK_SalesOrderVehicleDetail_ManufacturerVehicleInventory]
go

ALTER TABLE [Sales].[SalesOrderVehicleDetail]
	ADD CONSTRAINT [FK_UserAuthorization_SalesOrderVehicleDetail] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DBSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [HumanResources].[Staff] WITH CHECK 
	ADD CONSTRAINT [FK_Staff_Department] FOREIGN KEY ([DepartmentId]) REFERENCES [HumanResources].[Department]([DepartmentId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [HumanResources].[Staff]
	  WITH CHECK CHECK CONSTRAINT [FK_Staff_Department]
go

ALTER TABLE [HumanResources].[Staff]
	ADD CONSTRAINT [FK_UserAuthorization_Staff] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [DBSecurity].[UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go
