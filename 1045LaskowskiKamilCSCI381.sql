USE [master]
GO
/****** Object:  Database [1045LaskowskiKamilCSCI381]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE DATABASE [1045LaskowskiKamilCSCI381]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'1045LaskowskiKamilCSCI381', FILENAME = N'/var/opt/mssql/data/1045LaskowskiKamilCSCI381.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'1045LaskowskiKamilCSCI381_log', FILENAME = N'/var/opt/mssql/log/1045LaskowskiKamilCSCI381_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [1045LaskowskiKamilCSCI381].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET ARITHABORT OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET  DISABLE_BROKER 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET RECOVERY FULL 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET  MULTI_USER 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET DB_CHAINING OFF 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'1045LaskowskiKamilCSCI381', N'ON'
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET QUERY_STORE = OFF
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Schema [Cost]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [Cost]
GO
/****** Object:  Schema [DBSecurity]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [DBSecurity]
GO
/****** Object:  Schema [dGroceryStore]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [dGroceryStore]
GO
/****** Object:  Schema [Geography]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [Geography]
GO
/****** Object:  Schema [HumanResources]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [HumanResources]
GO
/****** Object:  Schema [Marketing]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [Marketing]
GO
/****** Object:  Schema [Report]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [Report]
GO
/****** Object:  Schema [Sales]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [Sales]
GO
/****** Object:  Schema [sdCompanyInformation]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [sdCompanyInformation]
GO
/****** Object:  Schema [sdDateTime]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [sdDateTime]
GO
/****** Object:  Schema [sdInformation]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [sdInformation]
GO
/****** Object:  Schema [sdName]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [sdName]
GO
/****** Object:  Schema [sdNumber]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [sdNumber]
GO
/****** Object:  Schema [sdString]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [sdString]
GO
/****** Object:  Schema [Vehicle]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SCHEMA [Vehicle]
GO
/****** Object:  UserDefinedDataType [dbo].[Color]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE TYPE [dbo].[Color] FROM [nvarchar](20) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[ComponentType]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE TYPE [dbo].[ComponentType] FROM [nvarchar](50) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[ISO2]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE TYPE [dbo].[ISO2] FROM [nvarchar](2) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[ISO3]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE TYPE [dbo].[ISO3] FROM [nvarchar](3) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MarketingType]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE TYPE [dbo].[MarketingType] FROM [nvarchar](200) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[ModelName]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE TYPE [dbo].[ModelName] FROM [nvarchar](20) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[PackingSymbol]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE TYPE [dbo].[PackingSymbol] FROM [nvarchar](40) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[sdISO]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE TYPE [dbo].[sdISO] FROM [nvarchar](60) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[sdType]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE TYPE [dbo].[sdType] FROM [nvarchar](30) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[sdVariant]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE TYPE [dbo].[sdVariant] FROM [nvarchar](30) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[ServiceType]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE TYPE [dbo].[ServiceType] FROM [nvarchar](40) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[VehicleType]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE TYPE [dbo].[VehicleType] FROM [nvarchar](15) NULL
GO
/****** Object:  UserDefinedDataType [sdCompanyInformation].[CompanyName]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE TYPE [sdCompanyInformation].[CompanyName] FROM [char](18) NULL
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[CountrySequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[CountrySequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[CustomerSequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[CustomerSequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[DeliveryChargeSequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[DeliveryChargeSequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[DepartmentSequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[DepartmentSequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[InvoiceNumberSequence]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[InvoiceNumberSequence] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[ManagerSequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[ManagerSequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[ManufacturerModelSequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[ManufacturerModelSequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[ManufacturerVehicleInventorySequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[ManufacturerVehicleInventorySequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[ManufacturerVehicleMakeSequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[ManufacturerVehicleMakeSequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[MarketingCategorySequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[MarketingCategorySequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[PartsChargeSequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[PartsChargeSequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[RepairChargeSequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[RepairChargeSequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[SalesOrderVehicleDetailSequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[SalesOrderVehicleDetailSequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[SalesOrderVehicleSequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[SalesOrderVehicleSequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[StaffSequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[StaffSequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[StockCodeSequence]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[StockCodeSequence] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [1045LaskowskiKamilCSCI381]
GO
/****** Object:  Sequence [sdNumber].[UserAuthorizationSequenceId]    Script Date: 12/8/2023 2:27:06 PM ******/
CREATE SEQUENCE [sdNumber].[UserAuthorizationSequenceId] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
/****** Object:  Table [Marketing].[MarketingCategory]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Marketing].[MarketingCategory](
	[MarketingCategoryId] [int] NOT NULL,
	[ManufacturerModelId] [int] NULL,
	[MarketingType] [dbo].[MarketingType] NULL,
	[CampaignName] [nvarchar](31) NULL,
	[Country] [nvarchar](60) NULL,
	[ManufacturerSpendCapacity] [decimal](10, 2) NULL,
	[LowerThresholdValue] [int] NULL,
	[UpperThreshold] [int] NULL,
	[UserAuthorizationId] [int] NOT NULL,
	[SysStartTime] [datetimeoffset](7) NOT NULL,
	[SysEndTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK__Marketin__2414B7BF3F61EB71] PRIMARY KEY CLUSTERED 
(
	[MarketingCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Marketing].[uvw_MarketingMarketingCategory]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Marketing].[uvw_MarketingMarketingCategory]([MarketingCategoryId],[ManufacturerModelId],[MarketingType],[CampaignName],[Country],[ManufacturerSpendCapacity],[LowerThresholdValue],[UpperThreshold],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Marketing].[MarketingCategory].[MarketingCategoryId],[Marketing].[MarketingCategory].[ManufacturerModelId],[Marketing].[MarketingCategory].[MarketingType],[Marketing].[MarketingCategory].[CampaignName],[Marketing].[MarketingCategory].[Country],[Marketing].[MarketingCategory].[ManufacturerSpendCapacity],[Marketing].[MarketingCategory].[LowerThresholdValue],[Marketing].[MarketingCategory].[UpperThreshold],[Marketing].[MarketingCategory].[UserAuthorizationId],[Marketing].[MarketingCategory].[SysStartTime],[Marketing].[MarketingCategory].[SysEndTime]
	FROM [Marketing].[MarketingCategory]
GO
/****** Object:  Table [Vehicle].[ManufacturerModel]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle].[ManufacturerModel](
	[ManufacturerModelId] [int] NOT NULL,
	[ManufacturerVehicleMakeId] [int] NULL,
	[ModelName] [dbo].[ModelName] NULL,
	[Variant] [dbo].[sdVariant] NULL,
	[UserAuthorizationId] [int] NOT NULL,
	[SysStartTime] [datetimeoffset](7) NOT NULL,
	[SysEndTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK__Manufact__252DFCF1727A6007] PRIMARY KEY CLUSTERED 
(
	[ManufacturerModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Vehicle].[uvw_VehicleManufacturerModel]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Vehicle].[uvw_VehicleManufacturerModel]([ManufacturerModelId],[ManufacturerVehicleMakeId],[ModelName],[Variant],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Vehicle].[ManufacturerModel].[ManufacturerModelId],[Vehicle].[ManufacturerModel].[ManufacturerVehicleMakeId],[Vehicle].[ManufacturerModel].[ModelName],[Vehicle].[ManufacturerModel].[Variant],[Vehicle].[ManufacturerModel].[UserAuthorizationId],[Vehicle].[ManufacturerModel].[SysStartTime],[Vehicle].[ManufacturerModel].[SysEndTime]
	FROM [Vehicle].[ManufacturerModel]
GO
/****** Object:  Table [Cost].[PartsCharge]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Cost].[PartsCharge](
	[PartsChargeId] [int] NOT NULL,
	[ManufacturerVehicleInventoryId] [int] NULL,
	[PartType] [dbo].[ComponentType] NULL,
	[ChargeAmount] [decimal](10, 2) NULL,
	[UserAuthorizationId] [int] NOT NULL,
	[SysStartTime] [datetimeoffset](7) NOT NULL,
	[SysEndTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK__PartsCha__F7AEBF009E22A15E] PRIMARY KEY CLUSTERED 
(
	[PartsChargeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Cost].[uvw_CostPartsCharges]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Cost].[uvw_CostPartsCharges]([PartsChargeId],[ManufacturerVehicleInventoryId],[PartType],[ChargeAmount],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Cost].[PartsCharge].[PartsChargeId],[Cost].[PartsCharge].[ManufacturerVehicleInventoryId],[Cost].[PartsCharge].[PartType],[Cost].[PartsCharge].[ChargeAmount],[Cost].[PartsCharge].[UserAuthorizationId],[Cost].[PartsCharge].[SysStartTime],[Cost].[PartsCharge].[SysEndTime]
	FROM [Cost].[PartsCharge]
GO
/****** Object:  Table [Cost].[RepairCharge]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Cost].[RepairCharge](
	[RepairChargeId] [int] NOT NULL,
	[ManufacturerVehicleInventoryId] [int] NULL,
	[Component] [dbo].[ComponentType] NULL,
	[ServiceType] [dbo].[ServiceType] NULL,
	[ChargeAmount] [decimal](10, 2) NULL,
	[UserAuthorizationId] [int] NOT NULL,
	[SysStartTime] [datetimeoffset](7) NOT NULL,
	[SysEndTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK__RepairCh__5E457FB8FE2B2A4B] PRIMARY KEY CLUSTERED 
(
	[RepairChargeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Cost].[uvw_CostRepairCharges]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Cost].[uvw_CostRepairCharges]([RepairChargeId],[ManufacturerVehicleInventoryId],[Component],[ServiceType],[ChargeAmount],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Cost].[RepairCharge].[RepairChargeId],[Cost].[RepairCharge].[ManufacturerVehicleInventoryId],[Cost].[RepairCharge].[Component],[Cost].[RepairCharge].[ServiceType],[Cost].[RepairCharge].[ChargeAmount],[Cost].[RepairCharge].[UserAuthorizationId],[Cost].[RepairCharge].[SysStartTime],[Cost].[RepairCharge].[SysEndTime]
	FROM [Cost].[RepairCharge]
GO
/****** Object:  Table [Vehicle].[ManufacturerVehicleInventory]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle].[ManufacturerVehicleInventory](
	[ManufacturerVehicleInventoryId] [int] NOT NULL,
	[StockCode] [int] NULL,
	[ManufacturerModelId] [int] NULL,
	[PurchaseCost] [decimal](10, 2) NULL,
	[IsPremiumRoadHandlingPackage] [bit] NULL,
	[VehicleColor] [dbo].[Color] NULL,
	[ManufacturerComments] [nvarchar](100) NULL,
	[UserAuthorizationId] [int] NOT NULL,
	[SysStartTime] [datetimeoffset](7) NOT NULL,
	[SysEndTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK__Manufact__913144702B55DFE5] PRIMARY KEY CLUSTERED 
(
	[ManufacturerVehicleInventoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Vehicle].[uvw_VehicleManufacturerVehicleInventory]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Vehicle].[uvw_VehicleManufacturerVehicleInventory]([ManufacturerVehicleInventoryId],[StockCode],[ManufacturerModelId],[PurchaseCost],[IsPremiumRoadHandlingPackage],[VehicleColor],[ManufacturerComments],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Vehicle].[ManufacturerVehicleInventory].[ManufacturerVehicleInventoryId],[Vehicle].[ManufacturerVehicleInventory].[StockCode],[Vehicle].[ManufacturerVehicleInventory].[ManufacturerModelId],[Vehicle].[ManufacturerVehicleInventory].[PurchaseCost],[Vehicle].[ManufacturerVehicleInventory].[IsPremiumRoadHandlingPackage],[Vehicle].[ManufacturerVehicleInventory].[VehicleColor],[Vehicle].[ManufacturerVehicleInventory].[ManufacturerComments],[Vehicle].[ManufacturerVehicleInventory].[UserAuthorizationId],[Vehicle].[ManufacturerVehicleInventory].[SysStartTime],[Vehicle].[ManufacturerVehicleInventory].[SysEndTime]
	FROM [Vehicle].[ManufacturerVehicleInventory]
GO
/****** Object:  Table [Cost].[DeliveryCharge]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Cost].[DeliveryCharge](
	[DeliveryChargeId] [int] NOT NULL,
	[ManufacturerVehicleInventoryId] [int] NULL,
	[PackingSymbol] [dbo].[PackingSymbol] NULL,
	[ChargeAmount] [decimal](10, 2) NULL,
	[UserAuthorizationId] [int] NOT NULL,
	[SysStartTime] [datetimeoffset](7) NOT NULL,
	[SysEndTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK__Delivery__373460FC8A0764C3] PRIMARY KEY CLUSTERED 
(
	[DeliveryChargeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Cost].[uvw_CostDeliveryCharges]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Cost].[uvw_CostDeliveryCharges]([DeliveryChargeId],[ManufacturerVehicleInventoryId],[PackingSymbol],[ChargeAmount],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Cost].[DeliveryCharge].[DeliveryChargeId],[Cost].[DeliveryCharge].[ManufacturerVehicleInventoryId],[Cost].[DeliveryCharge].[PackingSymbol],[Cost].[DeliveryCharge].[ChargeAmount],[Cost].[DeliveryCharge].[UserAuthorizationId],[Cost].[DeliveryCharge].[SysStartTime],[Cost].[DeliveryCharge].[SysEndTime]
	FROM [Cost].[DeliveryCharge]
GO
/****** Object:  Table [DBSecurity].[UserAuthorization]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DBSecurity].[UserAuthorization](
	[UserAuthorizationId] [int] NOT NULL,
	[ClassTime] [nchar](5) NULL,
	[IndividualProject] [nvarchar](50) NULL,
	[GroupMemberLastName] [nvarchar](30) NOT NULL,
	[GroupMemberFirstName] [nvarchar](30) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[SysStartTime] [datetimeoffset](7) NOT NULL,
	[SysEndTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [XPKUserAuthorization] PRIMARY KEY CLUSTERED 
(
	[UserAuthorizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [DBSecurity].[uvw_DBSecurityUserAuthorization]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [DBSecurity].[uvw_DBSecurityUserAuthorization]([UserAuthorizationId],[ClassTime],[IndividualProject],[GroupMemberLastName],[GroupMemberFirstName],[GroupName],[SysStartTime],[SysEndTime])
AS
SELECT [DBSecurity].[UserAuthorization].[UserAuthorizationId],[DBSecurity].[UserAuthorization].[ClassTime],[DBSecurity].[UserAuthorization].[IndividualProject],[DBSecurity].[UserAuthorization].[GroupMemberLastName],[DBSecurity].[UserAuthorization].[GroupMemberFirstName],[DBSecurity].[UserAuthorization].[GroupName],[DBSecurity].[UserAuthorization].[SysStartTime],[DBSecurity].[UserAuthorization].[SysEndTime]
	FROM [DBSecurity].[UserAuthorization]
GO
/****** Object:  Table [Vehicle].[ManufacturerVehicleMake]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle].[ManufacturerVehicleMake](
	[ManufacturerVehicleMakeId] [int] NOT NULL,
	[MakeName] [nvarchar](50) NULL,
	[CountryId] [int] NULL,
	[Type] [dbo].[VehicleType] NULL,
	[UserAuthorizationId] [int] NOT NULL,
	[SysStartTime] [datetimeoffset](7) NOT NULL,
	[SysEndTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK__Manufact__E48A8FB11A3A66F3] PRIMARY KEY CLUSTERED 
(
	[ManufacturerVehicleMakeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Vehicle].[uvw_VehicleManufacturerVehicleMake]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Vehicle].[uvw_VehicleManufacturerVehicleMake]([ManufacturerVehicleMakeId],[MakeName],[CountryId],[Type],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Vehicle].[ManufacturerVehicleMake].[ManufacturerVehicleMakeId],[Vehicle].[ManufacturerVehicleMake].[MakeName],[Vehicle].[ManufacturerVehicleMake].[CountryId],[Vehicle].[ManufacturerVehicleMake].[Type],[Vehicle].[ManufacturerVehicleMake].[UserAuthorizationId],[Vehicle].[ManufacturerVehicleMake].[SysStartTime],[Vehicle].[ManufacturerVehicleMake].[SysEndTime]
	FROM [Vehicle].[ManufacturerVehicleMake]
GO
/****** Object:  Table [Sales].[SalesOrderVehicleDetail]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[SalesOrderVehicleDetail](
	[SalesOrderVehicleDetailId] [int] NOT NULL,
	[SalesOrderVehicleId] [int] NULL,
	[ManufacturerVehicleInventoryId] [int] NULL,
	[SalePrice] [decimal](10, 2) NULL,
	[Discount] [decimal](3, 2) NULL,
	[UserAuthorizationId] [int] NOT NULL,
	[SysStartTime] [datetimeoffset](7) NOT NULL,
	[SysEndTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK__SalesOrd__018E31CFBE2C596A] PRIMARY KEY CLUSTERED 
(
	[SalesOrderVehicleDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Sales].[uvw_SalesSalesOrderVehicleDetail]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Sales].[uvw_SalesSalesOrderVehicleDetail]([SalesOrderVehicleDetailId],[SalesOrderVehicleId],[ManufacturerVehicleInventoryId],[SalePrice],[Discount],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Sales].[SalesOrderVehicleDetail].[SalesOrderVehicleDetailId],[Sales].[SalesOrderVehicleDetail].[SalesOrderVehicleId],[Sales].[SalesOrderVehicleDetail].[ManufacturerVehicleInventoryId],[Sales].[SalesOrderVehicleDetail].[SalePrice],[Sales].[SalesOrderVehicleDetail].[Discount],[Sales].[SalesOrderVehicleDetail].[UserAuthorizationId],[Sales].[SalesOrderVehicleDetail].[SysStartTime],[Sales].[SalesOrderVehicleDetail].[SysEndTime]
	FROM [Sales].[SalesOrderVehicleDetail]
GO
/****** Object:  Table [Geography].[Country]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Geography].[Country](
	[CountryId] [int] NOT NULL,
	[ISO3] [dbo].[ISO3] NULL,
	[CountryName] [nvarchar](60) NULL,
	[ISO2] [dbo].[ISO2] NULL,
	[SalesRegion] [nvarchar](70) NULL,
	[UserAuthorizationId] [int] NOT NULL,
	[SysStartTime] [datetimeoffset](7) NOT NULL,
	[SysEndTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK__Country__10D1609F9CF80B94] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Geography].[uvw_GeographyCountry]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Geography].[uvw_GeographyCountry]([CountryId],[ISO3],[CountryName],[ISO2],[SalesRegion],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Geography].[Country].[CountryId],[Geography].[Country].[ISO3],[Geography].[Country].[CountryName],[Geography].[Country].[ISO2],[Geography].[Country].[SalesRegion],[Geography].[Country].[UserAuthorizationId],[Geography].[Country].[SysStartTime],[Geography].[Country].[SysEndTime]
	FROM [Geography].[Country]
GO
/****** Object:  Table [HumanResources].[Department]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HumanResources].[Department](
	[DepartmentId] [int] NOT NULL,
	[DepartmentName] [nvarchar](30) NULL,
	[UserAuthorizationId] [int] NOT NULL,
	[SysStartTime] [datetimeoffset](7) NOT NULL,
	[SysEndTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK__Departme__B2079BEDCE3E6688] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [HumanResources].[uvw_HumanResourcesDepartment]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [HumanResources].[uvw_HumanResourcesDepartment]([DepartmentId],[DepartmentName],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [HumanResources].[Department].[DepartmentId],[HumanResources].[Department].[DepartmentName],[HumanResources].[Department].[UserAuthorizationId],[HumanResources].[Department].[SysStartTime],[HumanResources].[Department].[SysEndTime]
	FROM [HumanResources].[Department]
GO
/****** Object:  Table [Sales].[Customer]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[Customer](
	[CustomerId] [int] NOT NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NULL,
	[Address1] [nvarchar](60) NULL,
	[Address2] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[PostalCode] [varchar](5) NULL,
	[IsReseller] [bit] NULL,
	[IsCreditRisk] [bit] NULL,
	[CountryId] [int] NULL,
	[UserAuthorizationId] [int] NOT NULL,
	[SysStartTime] [datetimeoffset](7) NOT NULL,
	[SysEndTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK__Customer__A4AE64D8D6DFAEA0] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Sales].[uvw_SalesCustomer]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Sales].[uvw_SalesCustomer]([CustomerId],[FirstName],[LastName],[Address1],[Address2],[City],[PostalCode],[IsReseller],[IsCreditRisk],[CountryId],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Sales].[Customer].[CustomerId],[Sales].[Customer].[FirstName],[Sales].[Customer].[LastName],[Sales].[Customer].[Address1],[Sales].[Customer].[Address2],[Sales].[Customer].[City],[Sales].[Customer].[PostalCode],[Sales].[Customer].[IsReseller],[Sales].[Customer].[IsCreditRisk],[Sales].[Customer].[CountryId],[Sales].[Customer].[UserAuthorizationId],[Sales].[Customer].[SysStartTime],[Sales].[Customer].[SysEndTime]
	FROM [Sales].[Customer]
GO
/****** Object:  Table [Sales].[SalesOrderVehicle]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[SalesOrderVehicle](
	[SalesOrderVehicleId] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[InvoiceNumber] [int] NULL,
	[SaleDate] [datetimeoffset](7) NULL,
	[StaffId] [int] NULL,
	[UserAuthorizationId] [int] NOT NULL,
	[SysStartTime] [datetimeoffset](7) NOT NULL,
	[SysEndTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK__SalesOrd__43A0F4B07FD38F53] PRIMARY KEY CLUSTERED 
(
	[SalesOrderVehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Sales].[uvw_SalesSalesOrderVehicle]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Sales].[uvw_SalesSalesOrderVehicle]([SalesOrderVehicleId],[CustomerId],[InvoiceNumber],[SaleDate],[StaffId],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [Sales].[SalesOrderVehicle].[SalesOrderVehicleId],[Sales].[SalesOrderVehicle].[CustomerId],[Sales].[SalesOrderVehicle].[InvoiceNumber],[Sales].[SalesOrderVehicle].[SaleDate],[Sales].[SalesOrderVehicle].[StaffId],[Sales].[SalesOrderVehicle].[UserAuthorizationId],[Sales].[SalesOrderVehicle].[SysStartTime],[Sales].[SalesOrderVehicle].[SysEndTime]
	FROM [Sales].[SalesOrderVehicle]
GO
/****** Object:  Table [HumanResources].[Staff]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HumanResources].[Staff](
	[StaffId] [int] NOT NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NULL,
	[ManagerID] [int] NULL,
	[DepartmentId] [int] NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[PostalCode] [varchar](5) NULL,
	[Country] [nvarchar](60) NULL,
	[UserAuthorizationId] [int] NOT NULL,
	[SysStartTime] [datetimeoffset](7) NOT NULL,
	[SysEndTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK__Staff__96D4AB17DB7221FE] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [HumanResources].[uvw_HumanResourcesStaff]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [HumanResources].[uvw_HumanResourcesStaff]([StaffId],[FirstName],[LastName],[ManagerID],[DepartmentId],[Address],[City],[PostalCode],[Country],[UserAuthorizationId],[SysStartTime],[SysEndTime])
AS
SELECT [HumanResources].[Staff].[StaffId],[HumanResources].[Staff].[FirstName],[HumanResources].[Staff].[LastName],[HumanResources].[Staff].[ManagerID],[HumanResources].[Staff].[DepartmentId],[HumanResources].[Staff].[Address],[HumanResources].[Staff].[City],[HumanResources].[Staff].[PostalCode],[HumanResources].[Staff].[Country],[HumanResources].[Staff].[UserAuthorizationId],[HumanResources].[Staff].[SysStartTime],[HumanResources].[Staff].[SysEndTime]
	FROM [HumanResources].[Staff]
GO
/****** Object:  View [Report].[uvw_EmployeeInformation]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Report].[uvw_EmployeeInformation]([DepartmentName],[FirstName],[LastName],[Address],[City],[PostalCode],[Country])
AS
SELECT [HumanResources].[Department].[DepartmentName],[HumanResources].[Staff].[FirstName],[HumanResources].[Staff].[LastName],[HumanResources].[Staff].[Address],[HumanResources].[Staff].[City],[HumanResources].[Staff].[PostalCode],[HumanResources].[Staff].[Country]
	FROM [HumanResources].[Staff],[HumanResources].[Department]
GO
/****** Object:  View [Report].[uvw_ManufacturerCountryAndVehicle]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Report].[uvw_ManufacturerCountryAndVehicle]([MakeName],[ModelName],[Type],[CountryName],[SalesRegion])
AS
SELECT [Vehicle].[ManufacturerVehicleMake].[MakeName],[Vehicle].[ManufacturerModel].[ModelName],[Vehicle].[ManufacturerVehicleMake].[Type],[Geography].[Country].[CountryName],[Geography].[Country].[SalesRegion]
	FROM [Vehicle].[ManufacturerModel],[Vehicle].[ManufacturerVehicleMake],[Geography].[Country]
GO
/****** Object:  View [Report].[uvw_MarketingCustomerSales]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Report].[uvw_MarketingCustomerSales]([CampaignName],[MarketingType],[SalePrice],[FirstName],[LastName],[LowerThresholdValue],[UpperThreshold])
AS
SELECT [Marketing].[MarketingCategory].[CampaignName],[Marketing].[MarketingCategory].[MarketingType],[Sales].[SalesOrderVehicleDetail].[SalePrice],[Sales].[Customer].[FirstName],[Sales].[Customer].[LastName],[Marketing].[MarketingCategory].[LowerThresholdValue],[Marketing].[MarketingCategory].[UpperThreshold]
	FROM [Marketing].[MarketingCategory],[Sales].[SalesOrderVehicleDetail],[Sales].[Customer]
GO
/****** Object:  View [Report].[uvw_PartsCharges]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Report].[uvw_PartsCharges]([ManufacturerVehicleInventoryId],[IsPremiumRoadHandlingPackage],[RepairChargeAmount],[ServiceType],[PartsChargeAmount],[PartType],[DeliveryChargeAmount])
AS
SELECT [Vehicle].[ManufacturerVehicleInventory].[ManufacturerVehicleInventoryId],[Vehicle].[ManufacturerVehicleInventory].[IsPremiumRoadHandlingPackage],[Cost].[RepairCharge].[ChargeAmount],[Cost].[RepairCharge].[ServiceType],[Cost].[PartsCharge].[ChargeAmount],[Cost].[PartsCharge].[PartType],[Cost].[DeliveryCharge].[ChargeAmount]
	FROM [Cost].[DeliveryCharge],[Cost].[PartsCharge],[Cost].[RepairCharge],[Vehicle].[ManufacturerVehicleInventory]
GO
/****** Object:  View [Report].[uvw_StaffSoldCars]    Script Date: 12/8/2023 2:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Report].[uvw_StaffSoldCars]([FirstName],[LastName],[MakeName],[ModelName],[Type],[Variant])
AS
SELECT [HumanResources].[Staff].[FirstName],[HumanResources].[Staff].[LastName],[Vehicle].[ManufacturerVehicleMake].[MakeName],[Vehicle].[ManufacturerModel].[ModelName],[Vehicle].[ManufacturerVehicleMake].[Type],[Vehicle].[ManufacturerModel].[Variant]
	FROM [Sales].[SalesOrderVehicle],[HumanResources].[Staff],[Vehicle].[ManufacturerVehicleMake],[Vehicle].[ManufacturerModel]
GO
INSERT [Cost].[DeliveryCharge] ([DeliveryChargeId], [ManufacturerVehicleInventoryId], [PackingSymbol], [ChargeAmount], [UserAuthorizationId], [SysStartTime], [SysEndTime]) VALUES (1, 1, N'PackingSymbol', CAST(0.00 AS Decimal(10, 2)), 1, CAST(N'2023-12-08T19:21:17.2466667+00:00' AS DateTimeOffset), CAST(N'2023-12-08T19:21:17.2466667+00:00' AS DateTimeOffset))
GO
INSERT [Cost].[PartsCharge] ([PartsChargeId], [ManufacturerVehicleInventoryId], [PartType], [ChargeAmount], [UserAuthorizationId], [SysStartTime], [SysEndTime]) VALUES (1, 1, N'PartType', CAST(0.00 AS Decimal(10, 2)), 1, CAST(N'2023-12-08T19:21:17.3033333+00:00' AS DateTimeOffset), CAST(N'2023-12-08T19:21:17.3033333+00:00' AS DateTimeOffset))
GO
INSERT [Cost].[RepairCharge] ([RepairChargeId], [ManufacturerVehicleInventoryId], [Component], [ServiceType], [ChargeAmount], [UserAuthorizationId], [SysStartTime], [SysEndTime]) VALUES (1, 1, N'Engine', N'Maintenance', CAST(300.00 AS Decimal(10, 2)), 1, CAST(N'2023-12-08T19:21:17.4675716+00:00' AS DateTimeOffset), CAST(N'2023-12-08T19:21:17.4675716+00:00' AS DateTimeOffset))
GO
INSERT [DBSecurity].[UserAuthorization] ([UserAuthorizationId], [ClassTime], [IndividualProject], [GroupMemberLastName], [GroupMemberFirstName], [GroupName], [SysStartTime], [SysEndTime]) VALUES (1, N'09:15', N'IndividualProject', N'Doe', N'John', N'GroupName', CAST(N'2023-12-08T19:21:16.8633333+00:00' AS DateTimeOffset), CAST(N'2023-12-08T19:21:16.8633333+00:00' AS DateTimeOffset))
GO
INSERT [Geography].[Country] ([CountryId], [ISO3], [CountryName], [ISO2], [SalesRegion], [UserAuthorizationId], [SysStartTime], [SysEndTime]) VALUES (1, N'USA', N'CountryName', N'US', N'SalesRegion', 1, CAST(N'2023-12-08T19:21:16.8966667+00:00' AS DateTimeOffset), CAST(N'2023-12-08T19:21:16.8966667+00:00' AS DateTimeOffset))
GO
INSERT [HumanResources].[Department] ([DepartmentId], [DepartmentName], [UserAuthorizationId], [SysStartTime], [SysEndTime]) VALUES (1, N'DepartmentName', 1, CAST(N'2023-12-08T19:21:17.0400000+00:00' AS DateTimeOffset), CAST(N'2023-12-08T19:21:17.0400000+00:00' AS DateTimeOffset))
GO
INSERT [HumanResources].[Staff] ([StaffId], [FirstName], [LastName], [ManagerID], [DepartmentId], [Address], [City], [PostalCode], [Country], [UserAuthorizationId], [SysStartTime], [SysEndTime]) VALUES (1, N'FirstName', N'LastName', 1, 1, N'Address', N'City', N'11222', N'Country', 1, CAST(N'2023-12-08T19:21:17.3566667+00:00' AS DateTimeOffset), CAST(N'2023-12-08T19:21:17.3566667+00:00' AS DateTimeOffset))
GO
INSERT [Marketing].[MarketingCategory] ([MarketingCategoryId], [ManufacturerModelId], [MarketingType], [CampaignName], [Country], [ManufacturerSpendCapacity], [LowerThresholdValue], [UpperThreshold], [UserAuthorizationId], [SysStartTime], [SysEndTime]) VALUES (1, 1, N'MarketingType', N'CampaignName', N'Country', CAST(10000.00 AS Decimal(10, 2)), 100000, 10000000, 1, CAST(N'2023-12-08T19:21:17.1800000+00:00' AS DateTimeOffset), CAST(N'2023-12-08T19:21:17.1800000+00:00' AS DateTimeOffset))
GO
INSERT [Sales].[Customer] ([CustomerId], [FirstName], [LastName], [Address1], [Address2], [City], [PostalCode], [IsReseller], [IsCreditRisk], [CountryId], [UserAuthorizationId], [SysStartTime], [SysEndTime]) VALUES (1, N'FirstName', N'LastName', N'Address1', N'Address2', N'City', N'11222', 0, 0, 1, 1, CAST(N'2023-12-08T19:21:17.0933333+00:00' AS DateTimeOffset), CAST(N'2023-12-08T19:21:17.0933333+00:00' AS DateTimeOffset))
GO
INSERT [Sales].[SalesOrderVehicle] ([SalesOrderVehicleId], [CustomerId], [InvoiceNumber], [SaleDate], [StaffId], [UserAuthorizationId], [SysStartTime], [SysEndTime]) VALUES (1, 1, 1, CAST(N'2023-12-08T19:21:17.4300000+00:00' AS DateTimeOffset), 1, 1, CAST(N'2023-12-08T19:21:17.4300000+00:00' AS DateTimeOffset), CAST(N'2023-12-08T19:21:17.4300000+00:00' AS DateTimeOffset))
GO
INSERT [Sales].[SalesOrderVehicleDetail] ([SalesOrderVehicleDetailId], [SalesOrderVehicleId], [ManufacturerVehicleInventoryId], [SalePrice], [Discount], [UserAuthorizationId], [SysStartTime], [SysEndTime]) VALUES (1, 1, 1, CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(3, 2)), 1, CAST(N'2023-12-08T19:21:17.5200000+00:00' AS DateTimeOffset), CAST(N'2023-12-08T19:21:17.5200000+00:00' AS DateTimeOffset))
GO
INSERT [Vehicle].[ManufacturerModel] ([ManufacturerModelId], [ManufacturerVehicleMakeId], [ModelName], [Variant], [UserAuthorizationId], [SysStartTime], [SysEndTime]) VALUES (1, 1, N'ModelName', N'Variant', 1, CAST(N'2023-12-08T19:21:16.9566667+00:00' AS DateTimeOffset), CAST(N'2023-12-08T19:21:16.9566667+00:00' AS DateTimeOffset))
GO
INSERT [Vehicle].[ManufacturerVehicleInventory] ([ManufacturerVehicleInventoryId], [StockCode], [ManufacturerModelId], [PurchaseCost], [IsPremiumRoadHandlingPackage], [VehicleColor], [ManufacturerComments], [UserAuthorizationId], [SysStartTime], [SysEndTime]) VALUES (1, 1, 1, CAST(10000000.00 AS Decimal(10, 2)), 0, N'VehicleColor', N'ManufacturerComments', 1, CAST(N'2023-12-08T19:21:16.9966667+00:00' AS DateTimeOffset), CAST(N'2023-12-08T19:21:16.9966667+00:00' AS DateTimeOffset))
GO
INSERT [Vehicle].[ManufacturerVehicleMake] ([ManufacturerVehicleMakeId], [MakeName], [CountryId], [Type], [UserAuthorizationId], [SysStartTime], [SysEndTime]) VALUES (1, N'MakeName', 1, N'Type', 1, CAST(N'2023-12-08T19:21:16.9266667+00:00' AS DateTimeOffset), CAST(N'2023-12-08T19:21:16.9266667+00:00' AS DateTimeOffset))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_Geography_Country]    Script Date: 12/8/2023 2:27:07 PM ******/
ALTER TABLE [Geography].[Country] ADD  CONSTRAINT [AK_Geography_Country] UNIQUE NONCLUSTERED 
(
	[ISO2] ASC,
	[ISO3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_HumanResources_Department]    Script Date: 12/8/2023 2:27:07 PM ******/
ALTER TABLE [HumanResources].[Department] ADD  CONSTRAINT [AK_HumanResources_Department] UNIQUE NONCLUSTERED 
(
	[DepartmentName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [AK_Sales_SalesOrderVehicle]    Script Date: 12/8/2023 2:27:07 PM ******/
ALTER TABLE [Sales].[SalesOrderVehicle] ADD  CONSTRAINT [AK_Sales_SalesOrderVehicle] UNIQUE NONCLUSTERED 
(
	[InvoiceNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_Vehicle_ManufacturerModel]    Script Date: 12/8/2023 2:27:07 PM ******/
ALTER TABLE [Vehicle].[ManufacturerModel] ADD  CONSTRAINT [AK_Vehicle_ManufacturerModel] UNIQUE NONCLUSTERED 
(
	[ManufacturerVehicleMakeId] ASC,
	[ModelName] ASC,
	[Variant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [AK_Vehicle_ManufacturerVehicleInventory]    Script Date: 12/8/2023 2:27:07 PM ******/
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory] ADD  CONSTRAINT [AK_Vehicle_ManufacturerVehicleInventory] UNIQUE NONCLUSTERED 
(
	[StockCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_Vehicle_ManufacturerVehicleMake]    Script Date: 12/8/2023 2:27:07 PM ******/
ALTER TABLE [Vehicle].[ManufacturerVehicleMake] ADD  CONSTRAINT [AK_Vehicle_ManufacturerVehicleMake] UNIQUE NONCLUSTERED 
(
	[MakeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [Cost].[DeliveryCharge] ADD  CONSTRAINT [DF_Cost_DeliveryCharges_DeliveryChargeId]  DEFAULT (NEXT VALUE FOR [sdNumber].[DeliveryChargeSequenceId]) FOR [DeliveryChargeId]
GO
ALTER TABLE [Cost].[DeliveryCharge] ADD  CONSTRAINT [DF_Cost_DeliveryCharges_PackingSymbol]  DEFAULT ('None') FOR [PackingSymbol]
GO
ALTER TABLE [Cost].[DeliveryCharge] ADD  CONSTRAINT [DF_Cost_DeliveryCharges_ChargeAmount]  DEFAULT ((0.00)) FOR [ChargeAmount]
GO
ALTER TABLE [Cost].[DeliveryCharge] ADD  CONSTRAINT [DF_Cost_DeliveryCharges_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [Cost].[DeliveryCharge] ADD  CONSTRAINT [DF_Cost_DeliveryCharges_SysEndTime]  DEFAULT (sysdatetime()) FOR [SysEndTime]
GO
ALTER TABLE [Cost].[PartsCharge] ADD  CONSTRAINT [DF_Cost_PartsCharges_PartsChargeId]  DEFAULT (NEXT VALUE FOR [sdNumber].[PartsChargeSequenceId]) FOR [PartsChargeId]
GO
ALTER TABLE [Cost].[PartsCharge] ADD  CONSTRAINT [DF_Cost_PartsCharges_PartType]  DEFAULT ('Unknown') FOR [PartType]
GO
ALTER TABLE [Cost].[PartsCharge] ADD  CONSTRAINT [DF_Cost_PartsCharges_ChargeAmount]  DEFAULT ((0.00)) FOR [ChargeAmount]
GO
ALTER TABLE [Cost].[PartsCharge] ADD  CONSTRAINT [DF_Cost_PartsCharges_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [Cost].[PartsCharge] ADD  CONSTRAINT [DF_Cost_PartsCharges_SysEndTime]  DEFAULT (sysdatetime()) FOR [SysEndTime]
GO
ALTER TABLE [Cost].[RepairCharge] ADD  CONSTRAINT [DF_Cost_RepairCharges_RepairChargeId]  DEFAULT (NEXT VALUE FOR [sdNumber].[RepairChargeSequenceId]) FOR [RepairChargeId]
GO
ALTER TABLE [Cost].[RepairCharge] ADD  CONSTRAINT [DF_Cost_RepairCharges_Component]  DEFAULT ('Unknown') FOR [Component]
GO
ALTER TABLE [Cost].[RepairCharge] ADD  CONSTRAINT [DF_Cost_RepairCharges_ServiceType]  DEFAULT ('Unknown') FOR [ServiceType]
GO
ALTER TABLE [Cost].[RepairCharge] ADD  CONSTRAINT [DF_Cost_RepairCharges_ChargeAmount]  DEFAULT ((0.00)) FOR [ChargeAmount]
GO
ALTER TABLE [Cost].[RepairCharge] ADD  CONSTRAINT [DF_Cost_RepairCharges_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [Cost].[RepairCharge] ADD  CONSTRAINT [DF_Cost_RepairCharges_SysEndTime]  DEFAULT (sysdatetime()) FOR [SysEndTime]
GO
ALTER TABLE [DBSecurity].[UserAuthorization] ADD  CONSTRAINT [DF_DBSecurity_UserAuthorization_UserAuthorizationId]  DEFAULT (NEXT VALUE FOR [sdNumber].[UserAuthorizationSequenceId]) FOR [UserAuthorizationId]
GO
ALTER TABLE [DBSecurity].[UserAuthorization] ADD  CONSTRAINT [DF_DbSecurity_UserAuthorization_ClassTime]  DEFAULT ('09:15') FOR [ClassTime]
GO
ALTER TABLE [DBSecurity].[UserAuthorization] ADD  CONSTRAINT [DF_DbSecurity_UserAuthorization_IndividualProject]  DEFAULT ('Unknown') FOR [IndividualProject]
GO
ALTER TABLE [DBSecurity].[UserAuthorization] ADD  CONSTRAINT [DF_DbSecurity_UserAuthorization_GroupMemberLastName]  DEFAULT ('Doe') FOR [GroupMemberLastName]
GO
ALTER TABLE [DBSecurity].[UserAuthorization] ADD  CONSTRAINT [DF_DbSecurity_UserAuthorization_GroupMemberFirstName]  DEFAULT ('John') FOR [GroupMemberFirstName]
GO
ALTER TABLE [DBSecurity].[UserAuthorization] ADD  CONSTRAINT [DF_DbSecurity_UserAuthorization_GroupName]  DEFAULT ('Unknown') FOR [GroupName]
GO
ALTER TABLE [DBSecurity].[UserAuthorization] ADD  CONSTRAINT [DF_DBSecurity_UserAuthorization_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [DBSecurity].[UserAuthorization] ADD  CONSTRAINT [DF_DbSecurity_UserAuthorization_SysEndTime]  DEFAULT (sysdatetime()) FOR [SysEndTime]
GO
ALTER TABLE [Geography].[Country] ADD  CONSTRAINT [DF_Geography_Country_CountryId]  DEFAULT (NEXT VALUE FOR [sdNumber].[CountrySequenceId]) FOR [CountryId]
GO
ALTER TABLE [Geography].[Country] ADD  CONSTRAINT [DF_Geography_Country_ISO3]  DEFAULT ('ZZZ') FOR [ISO3]
GO
ALTER TABLE [Geography].[Country] ADD  CONSTRAINT [DF_Geography_Country_CountryName]  DEFAULT ('Nowhere') FOR [CountryName]
GO
ALTER TABLE [Geography].[Country] ADD  CONSTRAINT [DF_Geography_Country_ISO2]  DEFAULT ('ZZ') FOR [ISO2]
GO
ALTER TABLE [Geography].[Country] ADD  CONSTRAINT [DF_Geography_Country_SalesRegion]  DEFAULT ('Nowhere') FOR [SalesRegion]
GO
ALTER TABLE [Geography].[Country] ADD  CONSTRAINT [DF_Geography_Country_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [Geography].[Country] ADD  CONSTRAINT [DF_Geography_Country_SysEndTime]  DEFAULT (sysdatetime()) FOR [SysEndTime]
GO
ALTER TABLE [HumanResources].[Department] ADD  CONSTRAINT [DF_HumanResources_Department_DepartmentId]  DEFAULT (NEXT VALUE FOR [sdNumber].[DepartmentSequenceId]) FOR [DepartmentId]
GO
ALTER TABLE [HumanResources].[Department] ADD  CONSTRAINT [DF_HumanResources_Department_DepartmentName]  DEFAULT ('Unassigned') FOR [DepartmentName]
GO
ALTER TABLE [HumanResources].[Department] ADD  CONSTRAINT [DF_HumanResources_Department_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [HumanResources].[Department] ADD  CONSTRAINT [DF_HumanResources_Department_SysEndTime]  DEFAULT (sysdatetime()) FOR [SysEndTime]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_HumanResources_Staff_StaffId]  DEFAULT (NEXT VALUE FOR [sdNumber].[StaffSequenceId]) FOR [StaffId]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_HumanResources_Staff_FirstName]  DEFAULT ('John') FOR [FirstName]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_HumanResources_Staff_LastName]  DEFAULT ('Doe') FOR [LastName]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_HumanResources_Staff_Address]  DEFAULT ('Nowhere') FOR [Address]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_HumanResources_Staff_City]  DEFAULT ('Nowhere') FOR [City]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_HumanResources_Staff_PostalCode]  DEFAULT ('00000') FOR [PostalCode]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_HumanResources_Staff_Country]  DEFAULT ('Nowhere') FOR [Country]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_HumanResources_Staff_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_HumanResources_Staff_SysEndTime]  DEFAULT (sysdatetime()) FOR [SysEndTime]
GO
ALTER TABLE [Marketing].[MarketingCategory] ADD  CONSTRAINT [DF_Marketing_MarketingCategory_MarketingCategoryId]  DEFAULT (NEXT VALUE FOR [sdNumber].[MarketingCategorySequenceId]) FOR [MarketingCategoryId]
GO
ALTER TABLE [Marketing].[MarketingCategory] ADD  CONSTRAINT [DF_Marketing_MarketingCategory_MarketingType]  DEFAULT ('Unknown') FOR [MarketingType]
GO
ALTER TABLE [Marketing].[MarketingCategory] ADD  CONSTRAINT [DF_Marketing_MarketingCategory_CampaignName]  DEFAULT ('Unknown') FOR [CampaignName]
GO
ALTER TABLE [Marketing].[MarketingCategory] ADD  CONSTRAINT [DF_Marketing_MarketingCategory_Country]  DEFAULT ('Nowhere') FOR [Country]
GO
ALTER TABLE [Marketing].[MarketingCategory] ADD  CONSTRAINT [DF_Marketing_MarketingCategory_ManufacturerSpendCapacity]  DEFAULT ((0.00)) FOR [ManufacturerSpendCapacity]
GO
ALTER TABLE [Marketing].[MarketingCategory] ADD  CONSTRAINT [DF_Marketing_MarketingCategory_LowerThresholdValue]  DEFAULT ((0)) FOR [LowerThresholdValue]
GO
ALTER TABLE [Marketing].[MarketingCategory] ADD  CONSTRAINT [DF_Marketing_MarketingCategory_UpperThreshold]  DEFAULT ((0)) FOR [UpperThreshold]
GO
ALTER TABLE [Marketing].[MarketingCategory] ADD  CONSTRAINT [DF_Marketing_MarketingCategory_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [Marketing].[MarketingCategory] ADD  CONSTRAINT [DF_Marketing_MarketingCategory_SysEndTime]  DEFAULT (sysdatetime()) FOR [SysEndTime]
GO
ALTER TABLE [Sales].[Customer] ADD  CONSTRAINT [DF_Sales_Customer_CustomerId]  DEFAULT (NEXT VALUE FOR [sdNumber].[CustomerSequenceId]) FOR [CustomerId]
GO
ALTER TABLE [Sales].[Customer] ADD  CONSTRAINT [DF_Sales_Customer_FirstName]  DEFAULT ('John') FOR [FirstName]
GO
ALTER TABLE [Sales].[Customer] ADD  CONSTRAINT [DF_Sales_Customer_LastName]  DEFAULT ('Doe') FOR [LastName]
GO
ALTER TABLE [Sales].[Customer] ADD  CONSTRAINT [DF_Sales_Customer_Address1]  DEFAULT ('Nowhere') FOR [Address1]
GO
ALTER TABLE [Sales].[Customer] ADD  CONSTRAINT [DF_Sales_Customer_Address2]  DEFAULT ('Nowhere') FOR [Address2]
GO
ALTER TABLE [Sales].[Customer] ADD  CONSTRAINT [DF_Sales_Customer_City]  DEFAULT ('Nowhere') FOR [City]
GO
ALTER TABLE [Sales].[Customer] ADD  CONSTRAINT [DF_Sales_Customer_PostalCode]  DEFAULT ('00000') FOR [PostalCode]
GO
ALTER TABLE [Sales].[Customer] ADD  CONSTRAINT [DF_Sales_Customer_IsReseller]  DEFAULT ((0)) FOR [IsReseller]
GO
ALTER TABLE [Sales].[Customer] ADD  CONSTRAINT [DF_Sales_Customer_IsCreditRisk]  DEFAULT ((0)) FOR [IsCreditRisk]
GO
ALTER TABLE [Sales].[Customer] ADD  CONSTRAINT [DF_Sales_Customer_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [Sales].[Customer] ADD  CONSTRAINT [DF_Sales_Customer_SysEndTime]  DEFAULT (sysdatetime()) FOR [SysEndTime]
GO
ALTER TABLE [Sales].[SalesOrderVehicle] ADD  CONSTRAINT [DF_Sales_SalesOrderVehicle_SalesOrderVehicleId]  DEFAULT (NEXT VALUE FOR [sdNumber].[SalesOrderVehicleSequenceId]) FOR [SalesOrderVehicleId]
GO
ALTER TABLE [Sales].[SalesOrderVehicle] ADD  CONSTRAINT [DF_Sales_SalesOrderVehicle_SaleDate]  DEFAULT (getdate()) FOR [SaleDate]
GO
ALTER TABLE [Sales].[SalesOrderVehicle] ADD  CONSTRAINT [DF_Sales_SalesOrderVehicle_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [Sales].[SalesOrderVehicle] ADD  CONSTRAINT [DF_Sales_SalesOrderVehicle_SysEndTime]  DEFAULT (sysdatetime()) FOR [SysEndTime]
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD  CONSTRAINT [DF_Sales_SalesOrderVehicleDetail_SalesOrderVehicleDetailId]  DEFAULT (NEXT VALUE FOR [sdNumber].[SalesOrderVehicleDetailSequenceId]) FOR [SalesOrderVehicleDetailId]
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD  CONSTRAINT [DF_Sales_SalesOrderVehicleDetail_SalePrice]  DEFAULT ((0.00)) FOR [SalePrice]
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD  CONSTRAINT [DF_Sales_SalesOrderVehicleDetail_Discount]  DEFAULT ((0.00)) FOR [Discount]
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD  CONSTRAINT [DF_Sales_SalesOrderVehicleDetail_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD  CONSTRAINT [DF_Sales_SalesOrderVehicleDetail_SysEndTime]  DEFAULT (sysdatetime()) FOR [SysEndTime]
GO
ALTER TABLE [Vehicle].[ManufacturerModel] ADD  CONSTRAINT [DF_Vehicle_ManufacturerModel_ManufacturerModelId]  DEFAULT (NEXT VALUE FOR [sdNumber].[ManufacturerModelSequenceId]) FOR [ManufacturerModelId]
GO
ALTER TABLE [Vehicle].[ManufacturerModel] ADD  CONSTRAINT [DF_Vehicle_ManufacturerModel_ModelName]  DEFAULT ('Unknown') FOR [ModelName]
GO
ALTER TABLE [Vehicle].[ManufacturerModel] ADD  CONSTRAINT [DF_Vehicle_ManufacturerModel_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [Vehicle].[ManufacturerModel] ADD  CONSTRAINT [DF_Vehicle_ManufacturerModel_SysEndTime]  DEFAULT (sysdatetime()) FOR [SysEndTime]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory] ADD  CONSTRAINT [DF_Vehicle_ManufacturerVehicleInventory_ManufacturerVehicleInventoryId]  DEFAULT (NEXT VALUE FOR [sdNumber].[ManufacturerVehicleInventorySequenceId]) FOR [ManufacturerVehicleInventoryId]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory] ADD  CONSTRAINT [DF_Vehicle_ManufacturerVehicleInventory_PurchaseCost]  DEFAULT ((0.00)) FOR [PurchaseCost]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory] ADD  CONSTRAINT [DF_Vehicle_ManufacturerVehicleInventory_IsPremiumRoadHandlingPackage]  DEFAULT ((0)) FOR [IsPremiumRoadHandlingPackage]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory] ADD  CONSTRAINT [DF_Vehicle_ManufacturerVehicleInventory_VehicleColor]  DEFAULT ('Unknown') FOR [VehicleColor]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory] ADD  CONSTRAINT [DF_Vehicle_ManufacturerVehicleInventory_ManufacturerComments]  DEFAULT ('No notes added') FOR [ManufacturerComments]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory] ADD  CONSTRAINT [DF_Vehicle_ManufacturerVehicleInventory_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory] ADD  CONSTRAINT [DF_Vehicle_ManufacturerVehicleInventory_SysEndTime]  DEFAULT (sysdatetime()) FOR [SysEndTime]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleMake] ADD  CONSTRAINT [DF_Vehicle_ManufacturerVehicleMake_ManufacturerVehicleMakeId]  DEFAULT (NEXT VALUE FOR [sdNumber].[ManufacturerVehicleMakeSequenceId]) FOR [ManufacturerVehicleMakeId]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleMake] ADD  CONSTRAINT [DF_Vehicle_ManufacturerVehicleMake_MakeName]  DEFAULT ('Unknown') FOR [MakeName]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleMake] ADD  CONSTRAINT [DF_Vehicle_ManufacturerVehicleMake_Type]  DEFAULT ('Unknown') FOR [Type]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleMake] ADD  CONSTRAINT [DF_Vehicle_ManufacturerVehicleMake_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleMake] ADD  CONSTRAINT [DF_Vehicle_ManufacturerVehicleMake_SysEndTime]  DEFAULT (sysdatetime()) FOR [SysEndTime]
GO
ALTER TABLE [Cost].[DeliveryCharge]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryCharges_ManufacturerVehicleInventory] FOREIGN KEY([ManufacturerVehicleInventoryId])
REFERENCES [Vehicle].[ManufacturerVehicleInventory] ([ManufacturerVehicleInventoryId])
GO
ALTER TABLE [Cost].[DeliveryCharge] CHECK CONSTRAINT [FK_DeliveryCharges_ManufacturerVehicleInventory]
GO
ALTER TABLE [Cost].[DeliveryCharge]  WITH CHECK ADD  CONSTRAINT [FK_UserAuthorization_DeliveryCharges] FOREIGN KEY([UserAuthorizationId])
REFERENCES [DBSecurity].[UserAuthorization] ([UserAuthorizationId])
GO
ALTER TABLE [Cost].[DeliveryCharge] CHECK CONSTRAINT [FK_UserAuthorization_DeliveryCharges]
GO
ALTER TABLE [Cost].[PartsCharge]  WITH CHECK ADD  CONSTRAINT [FK_PartsCharges_ManufacturerVehicleInventory] FOREIGN KEY([ManufacturerVehicleInventoryId])
REFERENCES [Vehicle].[ManufacturerVehicleInventory] ([ManufacturerVehicleInventoryId])
GO
ALTER TABLE [Cost].[PartsCharge] CHECK CONSTRAINT [FK_PartsCharges_ManufacturerVehicleInventory]
GO
ALTER TABLE [Cost].[PartsCharge]  WITH CHECK ADD  CONSTRAINT [FK_UserAuthorization_PartCharges] FOREIGN KEY([UserAuthorizationId])
REFERENCES [DBSecurity].[UserAuthorization] ([UserAuthorizationId])
GO
ALTER TABLE [Cost].[PartsCharge] CHECK CONSTRAINT [FK_UserAuthorization_PartCharges]
GO
ALTER TABLE [Cost].[RepairCharge]  WITH CHECK ADD  CONSTRAINT [FK_RepairCharges_ManufacturerVehicleInventory] FOREIGN KEY([ManufacturerVehicleInventoryId])
REFERENCES [Vehicle].[ManufacturerVehicleInventory] ([ManufacturerVehicleInventoryId])
GO
ALTER TABLE [Cost].[RepairCharge] CHECK CONSTRAINT [FK_RepairCharges_ManufacturerVehicleInventory]
GO
ALTER TABLE [Cost].[RepairCharge]  WITH CHECK ADD  CONSTRAINT [FK_UserAuthorization_RepairCharges] FOREIGN KEY([UserAuthorizationId])
REFERENCES [DBSecurity].[UserAuthorization] ([UserAuthorizationId])
GO
ALTER TABLE [Cost].[RepairCharge] CHECK CONSTRAINT [FK_UserAuthorization_RepairCharges]
GO
ALTER TABLE [Geography].[Country]  WITH CHECK ADD  CONSTRAINT [FK_UserAuthorization_Country] FOREIGN KEY([UserAuthorizationId])
REFERENCES [DBSecurity].[UserAuthorization] ([UserAuthorizationId])
GO
ALTER TABLE [Geography].[Country] CHECK CONSTRAINT [FK_UserAuthorization_Country]
GO
ALTER TABLE [HumanResources].[Department]  WITH CHECK ADD  CONSTRAINT [FK_UserAuthorization_Department] FOREIGN KEY([UserAuthorizationId])
REFERENCES [DBSecurity].[UserAuthorization] ([UserAuthorizationId])
GO
ALTER TABLE [HumanResources].[Department] CHECK CONSTRAINT [FK_UserAuthorization_Department]
GO
ALTER TABLE [HumanResources].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Department] FOREIGN KEY([DepartmentId])
REFERENCES [HumanResources].[Department] ([DepartmentId])
GO
ALTER TABLE [HumanResources].[Staff] CHECK CONSTRAINT [FK_Staff_Department]
GO
ALTER TABLE [HumanResources].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_UserAuthorization_Staff] FOREIGN KEY([UserAuthorizationId])
REFERENCES [DBSecurity].[UserAuthorization] ([UserAuthorizationId])
GO
ALTER TABLE [HumanResources].[Staff] CHECK CONSTRAINT [FK_UserAuthorization_Staff]
GO
ALTER TABLE [Marketing].[MarketingCategory]  WITH CHECK ADD  CONSTRAINT [FK_MarketingCategory_ManufacturerModel] FOREIGN KEY([ManufacturerModelId])
REFERENCES [Vehicle].[ManufacturerModel] ([ManufacturerModelId])
GO
ALTER TABLE [Marketing].[MarketingCategory] CHECK CONSTRAINT [FK_MarketingCategory_ManufacturerModel]
GO
ALTER TABLE [Marketing].[MarketingCategory]  WITH CHECK ADD  CONSTRAINT [FK_UserAuthorization_MarketingCategory] FOREIGN KEY([UserAuthorizationId])
REFERENCES [DBSecurity].[UserAuthorization] ([UserAuthorizationId])
GO
ALTER TABLE [Marketing].[MarketingCategory] CHECK CONSTRAINT [FK_UserAuthorization_MarketingCategory]
GO
ALTER TABLE [Sales].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Country] FOREIGN KEY([CountryId])
REFERENCES [Geography].[Country] ([CountryId])
GO
ALTER TABLE [Sales].[Customer] CHECK CONSTRAINT [FK_Customer_Country]
GO
ALTER TABLE [Sales].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_UserAuthorization_Customer] FOREIGN KEY([UserAuthorizationId])
REFERENCES [DBSecurity].[UserAuthorization] ([UserAuthorizationId])
GO
ALTER TABLE [Sales].[Customer] CHECK CONSTRAINT [FK_UserAuthorization_Customer]
GO
ALTER TABLE [Sales].[SalesOrderVehicle]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderVehicle_Customer] FOREIGN KEY([CustomerId])
REFERENCES [Sales].[Customer] ([CustomerId])
GO
ALTER TABLE [Sales].[SalesOrderVehicle] CHECK CONSTRAINT [FK_SalesOrderVehicle_Customer]
GO
ALTER TABLE [Sales].[SalesOrderVehicle]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderVehicle_Staff] FOREIGN KEY([StaffId])
REFERENCES [HumanResources].[Staff] ([StaffId])
GO
ALTER TABLE [Sales].[SalesOrderVehicle] CHECK CONSTRAINT [FK_SalesOrderVehicle_Staff]
GO
ALTER TABLE [Sales].[SalesOrderVehicle]  WITH CHECK ADD  CONSTRAINT [FK_UserAuthorization_SaleOrderVehicle] FOREIGN KEY([UserAuthorizationId])
REFERENCES [DBSecurity].[UserAuthorization] ([UserAuthorizationId])
GO
ALTER TABLE [Sales].[SalesOrderVehicle] CHECK CONSTRAINT [FK_UserAuthorization_SaleOrderVehicle]
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderVehicleDetail_ManufacturerVehicleInventory] FOREIGN KEY([ManufacturerVehicleInventoryId])
REFERENCES [Vehicle].[ManufacturerVehicleInventory] ([ManufacturerVehicleInventoryId])
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] CHECK CONSTRAINT [FK_SalesOrderVehicleDetail_ManufacturerVehicleInventory]
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderVehicleDetail_SalesOrderVehicle] FOREIGN KEY([SalesOrderVehicleId])
REFERENCES [Sales].[SalesOrderVehicle] ([SalesOrderVehicleId])
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] CHECK CONSTRAINT [FK_SalesOrderVehicleDetail_SalesOrderVehicle]
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail]  WITH CHECK ADD  CONSTRAINT [FK_UserAuthorization_SalesOrderVehicleDetail] FOREIGN KEY([UserAuthorizationId])
REFERENCES [DBSecurity].[UserAuthorization] ([UserAuthorizationId])
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] CHECK CONSTRAINT [FK_UserAuthorization_SalesOrderVehicleDetail]
GO
ALTER TABLE [Vehicle].[ManufacturerModel]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerModel_ManufacturerVehicleMake] FOREIGN KEY([ManufacturerVehicleMakeId])
REFERENCES [Vehicle].[ManufacturerVehicleMake] ([ManufacturerVehicleMakeId])
GO
ALTER TABLE [Vehicle].[ManufacturerModel] CHECK CONSTRAINT [FK_ManufacturerModel_ManufacturerVehicleMake]
GO
ALTER TABLE [Vehicle].[ManufacturerModel]  WITH CHECK ADD  CONSTRAINT [FK_UserAuthorization_ManufacturerModel] FOREIGN KEY([UserAuthorizationId])
REFERENCES [DBSecurity].[UserAuthorization] ([UserAuthorizationId])
GO
ALTER TABLE [Vehicle].[ManufacturerModel] CHECK CONSTRAINT [FK_UserAuthorization_ManufacturerModel]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerVehicleInventory_ManufacturerModel] FOREIGN KEY([ManufacturerModelId])
REFERENCES [Vehicle].[ManufacturerModel] ([ManufacturerModelId])
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory] CHECK CONSTRAINT [FK_ManufacturerVehicleInventory_ManufacturerModel]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory]  WITH CHECK ADD  CONSTRAINT [FK_UserAuthorization_ManufacturerVechileInventory] FOREIGN KEY([UserAuthorizationId])
REFERENCES [DBSecurity].[UserAuthorization] ([UserAuthorizationId])
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory] CHECK CONSTRAINT [FK_UserAuthorization_ManufacturerVechileInventory]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleMake]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerVehicleMake_Country] FOREIGN KEY([CountryId])
REFERENCES [Geography].[Country] ([CountryId])
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleMake] CHECK CONSTRAINT [FK_ManufacturerVehicleMake_Country]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleMake]  WITH CHECK ADD  CONSTRAINT [FK_UserAuthorization_ManufacturerVehicleMake] FOREIGN KEY([UserAuthorizationId])
REFERENCES [DBSecurity].[UserAuthorization] ([UserAuthorizationId])
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleMake] CHECK CONSTRAINT [FK_UserAuthorization_ManufacturerVehicleMake]
GO
ALTER TABLE [Cost].[DeliveryCharge]  WITH CHECK ADD  CONSTRAINT [CK_Cost_DeliveryCharges_ChargeAmount] CHECK  (([ChargeAmount]>=(0)))
GO
ALTER TABLE [Cost].[DeliveryCharge] CHECK CONSTRAINT [CK_Cost_DeliveryCharges_ChargeAmount]
GO
ALTER TABLE [Cost].[DeliveryCharge]  WITH CHECK ADD  CONSTRAINT [CK_Cost_DeliveryCharges_PackingSymbol] CHECK  ((NOT [PackingSymbol] like '%[^A-Z ]%'))
GO
ALTER TABLE [Cost].[DeliveryCharge] CHECK CONSTRAINT [CK_Cost_DeliveryCharges_PackingSymbol]
GO
ALTER TABLE [Cost].[PartsCharge]  WITH CHECK ADD  CONSTRAINT [CK_Cost_PartsCharges_ChargeAmount] CHECK  (([ChargeAmount]>=(0)))
GO
ALTER TABLE [Cost].[PartsCharge] CHECK CONSTRAINT [CK_Cost_PartsCharges_ChargeAmount]
GO
ALTER TABLE [Cost].[PartsCharge]  WITH CHECK ADD  CONSTRAINT [CK_Cost_PartsCharges_PartType] CHECK  (([PartType] like '%[a-zA-Z0-9 ]%'))
GO
ALTER TABLE [Cost].[PartsCharge] CHECK CONSTRAINT [CK_Cost_PartsCharges_PartType]
GO
ALTER TABLE [Cost].[RepairCharge]  WITH CHECK ADD  CONSTRAINT [CK_Cost_RepairCharges_ChargeAmount] CHECK  (([ChargeAmount]>=(0)))
GO
ALTER TABLE [Cost].[RepairCharge] CHECK CONSTRAINT [CK_Cost_RepairCharges_ChargeAmount]
GO
ALTER TABLE [Cost].[RepairCharge]  WITH CHECK ADD  CONSTRAINT [CK_Cost_RepairCharges_Component] CHECK  (([Component] like '%[a-zA-Z0-9 ]%'))
GO
ALTER TABLE [Cost].[RepairCharge] CHECK CONSTRAINT [CK_Cost_RepairCharges_Component]
GO
ALTER TABLE [Cost].[RepairCharge]  WITH CHECK ADD  CONSTRAINT [CK_Cost_RepairCharges_ServiceType] CHECK  ((NOT [ServiceType] like '%[^A-Z ]%'))
GO
ALTER TABLE [Cost].[RepairCharge] CHECK CONSTRAINT [CK_Cost_RepairCharges_ServiceType]
GO
ALTER TABLE [DBSecurity].[UserAuthorization]  WITH CHECK ADD  CONSTRAINT [CK_DbSecurity_UserAuthorization_GroupMemberFirstName] CHECK  ((NOT [GroupMemberFirstName] like '%[^A-Z]%'))
GO
ALTER TABLE [DBSecurity].[UserAuthorization] CHECK CONSTRAINT [CK_DbSecurity_UserAuthorization_GroupMemberFirstName]
GO
ALTER TABLE [DBSecurity].[UserAuthorization]  WITH CHECK ADD  CONSTRAINT [CK_DbSecurity_UserAuthorization_GroupMemberLastName] CHECK  ((NOT [GroupMemberLastName] like '%[^A-Z]%'))
GO
ALTER TABLE [DBSecurity].[UserAuthorization] CHECK CONSTRAINT [CK_DbSecurity_UserAuthorization_GroupMemberLastName]
GO
ALTER TABLE [DBSecurity].[UserAuthorization]  WITH CHECK ADD  CONSTRAINT [CK_DbSecurity_UserAuthorization_GroupName] CHECK  (([GroupName] like '%[a-zA-Z0-9 ]%'))
GO
ALTER TABLE [DBSecurity].[UserAuthorization] CHECK CONSTRAINT [CK_DbSecurity_UserAuthorization_GroupName]
GO
ALTER TABLE [DBSecurity].[UserAuthorization]  WITH CHECK ADD  CONSTRAINT [CK_DF_DbSecurity_UserAuthorization_IndividualProject] CHECK  (([IndividualProject] like '%[a-zA-Z0-9 ]%'))
GO
ALTER TABLE [DBSecurity].[UserAuthorization] CHECK CONSTRAINT [CK_DF_DbSecurity_UserAuthorization_IndividualProject]
GO
ALTER TABLE [Geography].[Country]  WITH CHECK ADD  CONSTRAINT [CK_Geography_Country_CountryName] CHECK  ((NOT [CountryName] like '%[^A-Z ]%'))
GO
ALTER TABLE [Geography].[Country] CHECK CONSTRAINT [CK_Geography_Country_CountryName]
GO
ALTER TABLE [Geography].[Country]  WITH CHECK ADD  CONSTRAINT [CK_Geography_Country_ISO2] CHECK  (([ISO2]='AF' OR [ISO2]='AL' OR [ISO2]='DZ' OR [ISO2]='AD' OR [ISO2]='AO' OR [ISO2]='AG' OR [ISO2]='AR' OR [ISO2]='AM' OR [ISO2]='AU' OR [ISO2]='AT' OR [ISO2]='AZ' OR [ISO2]='BS' OR [ISO2]='BH' OR [ISO2]='BD' OR [ISO2]='BB' OR [ISO2]='BY' OR [ISO2]='BE' OR [ISO2]='BZ' OR [ISO2]='BJ' OR [ISO2]='BT' OR [ISO2]='BO' OR [ISO2]='BA' OR [ISO2]='BW' OR [ISO2]='BR' OR [ISO2]='BN' OR [ISO2]='BG' OR [ISO2]='BF' OR [ISO2]='BI' OR [ISO2]='CV' OR [ISO2]='KH' OR [ISO2]='CM' OR [ISO2]='CA' OR [ISO2]='CF' OR [ISO2]='TD' OR [ISO2]='CL' OR [ISO2]='CN' OR [ISO2]='CO' OR [ISO2]='KM' OR [ISO2]='CG' OR [ISO2]='CR' OR [ISO2]='HR' OR [ISO2]='CU' OR [ISO2]='CY' OR [ISO2]='CZ' OR [ISO2]='DK' OR [ISO2]='DJ' OR [ISO2]='DM' OR [ISO2]='DO' OR [ISO2]='EC' OR [ISO2]='EG' OR [ISO2]='SV' OR [ISO2]='GQ' OR [ISO2]='ER' OR [ISO2]='EE' OR [ISO2]='SZ' OR [ISO2]='ET' OR [ISO2]='FJ' OR [ISO2]='FI' OR [ISO2]='FR' OR [ISO2]='GA' OR [ISO2]='GM' OR [ISO2]='GE' OR [ISO2]='DE' OR [ISO2]='GH' OR [ISO2]='GR' OR [ISO2]='GD' OR [ISO2]='GT' OR [ISO2]='GN' OR [ISO2]='GW' OR [ISO2]='GY' OR [ISO2]='HT' OR [ISO2]='HN' OR [ISO2]='HU' OR [ISO2]='IS' OR [ISO2]='IN' OR [ISO2]='ID' OR [ISO2]='IR' OR [ISO2]='IQ' OR [ISO2]='IE' OR [ISO2]='IL' OR [ISO2]='IT' OR [ISO2]='CI' OR [ISO2]='JM' OR [ISO2]='JP' OR [ISO2]='JO' OR [ISO2]='KZ' OR [ISO2]='KE' OR [ISO2]='KI' OR [ISO2]='KP' OR [ISO2]='KR' OR [ISO2]='XK' OR [ISO2]='KW' OR [ISO2]='KG' OR [ISO2]='LA' OR [ISO2]='LV' OR [ISO2]='LB' OR [ISO2]='LS' OR [ISO2]='LR' OR [ISO2]='LY' OR [ISO2]='LI' OR [ISO2]='LT' OR [ISO2]='LU' OR [ISO2]='MG' OR [ISO2]='MW' OR [ISO2]='MY' OR [ISO2]='MV' OR [ISO2]='ML' OR [ISO2]='MT' OR [ISO2]='MH' OR [ISO2]='MR' OR [ISO2]='MU' OR [ISO2]='MX' OR [ISO2]='FM' OR [ISO2]='MD' OR [ISO2]='MC' OR [ISO2]='MN' OR [ISO2]='ME' OR [ISO2]='MA' OR [ISO2]='MZ' OR [ISO2]='MM' OR [ISO2]='NA' OR [ISO2]='NR' OR [ISO2]='NP' OR [ISO2]='NL' OR [ISO2]='NZ' OR [ISO2]='NI' OR [ISO2]='NE' OR [ISO2]='NG' OR [ISO2]='MK' OR [ISO2]='NO' OR [ISO2]='OM' OR [ISO2]='PK' OR [ISO2]='PW' OR [ISO2]='PA' OR [ISO2]='PG' OR [ISO2]='PY' OR [ISO2]='PE' OR [ISO2]='PH' OR [ISO2]='PL' OR [ISO2]='PT' OR [ISO2]='QA' OR [ISO2]='RO' OR [ISO2]='RU' OR [ISO2]='RW' OR [ISO2]='KN' OR [ISO2]='LC' OR [ISO2]='VC' OR [ISO2]='WS' OR [ISO2]='SM' OR [ISO2]='ST' OR [ISO2]='SA' OR [ISO2]='SN' OR [ISO2]='RS' OR [ISO2]='SC' OR [ISO2]='SL' OR [ISO2]='SG' OR [ISO2]='SK' OR [ISO2]='SI' OR [ISO2]='SB' OR [ISO2]='SO' OR [ISO2]='ZA' OR [ISO2]='SS' OR [ISO2]='ES' OR [ISO2]='LK' OR [ISO2]='SD' OR [ISO2]='SR' OR [ISO2]='SE' OR [ISO2]='CH' OR [ISO2]='SY' OR [ISO2]='TW' OR [ISO2]='TJ' OR [ISO2]='TZ' OR [ISO2]='TH' OR [ISO2]='TL' OR [ISO2]='TG' OR [ISO2]='TO' OR [ISO2]='TT' OR [ISO2]='TN' OR [ISO2]='TR' OR [ISO2]='TM' OR [ISO2]='TV' OR [ISO2]='UG' OR [ISO2]='UA' OR [ISO2]='AE' OR [ISO2]='GB' OR [ISO2]='US' OR [ISO2]='UY' OR [ISO2]='UZ' OR [ISO2]='VU' OR [ISO2]='VA' OR [ISO2]='VE' OR [ISO2]='VN' OR [ISO2]='YE' OR [ISO2]='ZM' OR [ISO2]='ZW'))
GO
ALTER TABLE [Geography].[Country] CHECK CONSTRAINT [CK_Geography_Country_ISO2]
GO
ALTER TABLE [Geography].[Country]  WITH CHECK ADD  CONSTRAINT [CK_Geography_Country_ISO3] CHECK  (([ISO3]='AFG' OR [ISO3]='ALB' OR [ISO3]='DZA' OR [ISO3]='AND' OR [ISO3]='AGO' OR [ISO3]='ATG' OR [ISO3]='ARG' OR [ISO3]='ARM' OR [ISO3]='AUS' OR [ISO3]='AUT' OR [ISO3]='AZE' OR [ISO3]='BHS' OR [ISO3]='BHR' OR [ISO3]='BGD' OR [ISO3]='BRB' OR [ISO3]='BLR' OR [ISO3]='BEL' OR [ISO3]='BLZ' OR [ISO3]='BEN' OR [ISO3]='BTN' OR [ISO3]='BOL' OR [ISO3]='BIH' OR [ISO3]='BWA' OR [ISO3]='BRA' OR [ISO3]='BRN' OR [ISO3]='BGR' OR [ISO3]='BFA' OR [ISO3]='BDI' OR [ISO3]='CPV' OR [ISO3]='KHM' OR [ISO3]='CMR' OR [ISO3]='CAN' OR [ISO3]='CAF' OR [ISO3]='TCD' OR [ISO3]='CHL' OR [ISO3]='CHN' OR [ISO3]='COL' OR [ISO3]='COM' OR [ISO3]='COG' OR [ISO3]='CRI' OR [ISO3]='HRV' OR [ISO3]='CUB' OR [ISO3]='CYP' OR [ISO3]='CZE' OR [ISO3]='DNK' OR [ISO3]='DJI' OR [ISO3]='DMA' OR [ISO3]='DOM' OR [ISO3]='ECU' OR [ISO3]='EGY' OR [ISO3]='SLV' OR [ISO3]='GNQ' OR [ISO3]='ERI' OR [ISO3]='EST' OR [ISO3]='SWZ' OR [ISO3]='ETH' OR [ISO3]='FJI' OR [ISO3]='FIN' OR [ISO3]='FRA' OR [ISO3]='GAB' OR [ISO3]='GMB' OR [ISO3]='GEO' OR [ISO3]='DEU' OR [ISO3]='GHA' OR [ISO3]='GRC' OR [ISO3]='GRD' OR [ISO3]='GTM' OR [ISO3]='GIN' OR [ISO3]='GNB' OR [ISO3]='GUY' OR [ISO3]='HTI' OR [ISO3]='HND' OR [ISO3]='HUN' OR [ISO3]='ISL' OR [ISO3]='IND' OR [ISO3]='IDN' OR [ISO3]='IRN' OR [ISO3]='IRQ' OR [ISO3]='IRL' OR [ISO3]='ISR' OR [ISO3]='ITA' OR [ISO3]='CIV' OR [ISO3]='JAM' OR [ISO3]='JPN' OR [ISO3]='JOR' OR [ISO3]='KAZ' OR [ISO3]='KEN' OR [ISO3]='KIR' OR [ISO3]='PRK' OR [ISO3]='KOR' OR [ISO3]='XKX' OR [ISO3]='KWT' OR [ISO3]='KGZ' OR [ISO3]='LAO' OR [ISO3]='LVA' OR [ISO3]='LBN' OR [ISO3]='LSO' OR [ISO3]='LBR' OR [ISO3]='LBY' OR [ISO3]='LIE' OR [ISO3]='LTU' OR [ISO3]='LUX' OR [ISO3]='MDG' OR [ISO3]='MWI' OR [ISO3]='MYS' OR [ISO3]='MDV' OR [ISO3]='MLI' OR [ISO3]='MLT' OR [ISO3]='MHL' OR [ISO3]='MRT' OR [ISO3]='MUS' OR [ISO3]='MEX' OR [ISO3]='FSM' OR [ISO3]='MDA' OR [ISO3]='MCO' OR [ISO3]='MNG' OR [ISO3]='MNE' OR [ISO3]='MAR' OR [ISO3]='MOZ' OR [ISO3]='MMR' OR [ISO3]='NAM' OR [ISO3]='NRU' OR [ISO3]='NPL' OR [ISO3]='NLD' OR [ISO3]='NZL' OR [ISO3]='NIC' OR [ISO3]='NER' OR [ISO3]='NGA' OR [ISO3]='MKD' OR [ISO3]='NOR' OR [ISO3]='OMN' OR [ISO3]='PAK' OR [ISO3]='PLW' OR [ISO3]='PAN' OR [ISO3]='PNG' OR [ISO3]='PRY' OR [ISO3]='PER' OR [ISO3]='PHL' OR [ISO3]='POL' OR [ISO3]='PRT' OR [ISO3]='QAT' OR [ISO3]='ROU' OR [ISO3]='RUS' OR [ISO3]='RWA' OR [ISO3]='KNA' OR [ISO3]='LCA' OR [ISO3]='VCT' OR [ISO3]='WSM' OR [ISO3]='SMR' OR [ISO3]='STP' OR [ISO3]='SAU' OR [ISO3]='SEN' OR [ISO3]='SRB' OR [ISO3]='SYC' OR [ISO3]='SLE' OR [ISO3]='SGP' OR [ISO3]='SVK' OR [ISO3]='SVN' OR [ISO3]='SLB' OR [ISO3]='SOM' OR [ISO3]='ZAF' OR [ISO3]='SSD' OR [ISO3]='ESP' OR [ISO3]='LKA' OR [ISO3]='SDN' OR [ISO3]='SUR' OR [ISO3]='SWE' OR [ISO3]='CHE' OR [ISO3]='SYR' OR [ISO3]='TWN' OR [ISO3]='TJK' OR [ISO3]='TZA' OR [ISO3]='THA' OR [ISO3]='TLS' OR [ISO3]='TGO' OR [ISO3]='TON' OR [ISO3]='TTO' OR [ISO3]='TUN' OR [ISO3]='TUR' OR [ISO3]='TKM' OR [ISO3]='TUV' OR [ISO3]='UGA' OR [ISO3]='UKR' OR [ISO3]='ARE' OR [ISO3]='GBR' OR [ISO3]='USA' OR [ISO3]='URY' OR [ISO3]='UZB' OR [ISO3]='VUT' OR [ISO3]='VAT' OR [ISO3]='VEN' OR [ISO3]='VNM' OR [ISO3]='YEM' OR [ISO3]='ZMB' OR [ISO3]='ZWE'))
GO
ALTER TABLE [Geography].[Country] CHECK CONSTRAINT [CK_Geography_Country_ISO3]
GO
ALTER TABLE [Geography].[Country]  WITH CHECK ADD  CONSTRAINT [CK_Geography_Country_SalesRegion] CHECK  ((NOT [SalesRegion] like '%[^A-Z ]%'))
GO
ALTER TABLE [Geography].[Country] CHECK CONSTRAINT [CK_Geography_Country_SalesRegion]
GO
ALTER TABLE [HumanResources].[Department]  WITH CHECK ADD  CONSTRAINT [CK_HumanResources_Department_DepartmentName] CHECK  ((NOT [DepartmentName] like '%[^A-Z]%'))
GO
ALTER TABLE [HumanResources].[Department] CHECK CONSTRAINT [CK_HumanResources_Department_DepartmentName]
GO
ALTER TABLE [HumanResources].[Staff]  WITH CHECK ADD  CONSTRAINT [CK_HumanResources_Staff_Address] CHECK  (([Address] like '%[a-zA-Z0-9 ]%'))
GO
ALTER TABLE [HumanResources].[Staff] CHECK CONSTRAINT [CK_HumanResources_Staff_Address]
GO
ALTER TABLE [HumanResources].[Staff]  WITH CHECK ADD  CONSTRAINT [CK_HumanResources_Staff_City] CHECK  ((NOT [City] like '%[^A-Z ]%'))
GO
ALTER TABLE [HumanResources].[Staff] CHECK CONSTRAINT [CK_HumanResources_Staff_City]
GO
ALTER TABLE [HumanResources].[Staff]  WITH CHECK ADD  CONSTRAINT [CK_HumanResources_Staff_Country] CHECK  ((NOT [Country] like '%[^A-Z ]%'))
GO
ALTER TABLE [HumanResources].[Staff] CHECK CONSTRAINT [CK_HumanResources_Staff_Country]
GO
ALTER TABLE [HumanResources].[Staff]  WITH CHECK ADD  CONSTRAINT [CK_HumanResources_Staff_FirstName] CHECK  ((NOT [FirstName] like '%[^A-Z]%'))
GO
ALTER TABLE [HumanResources].[Staff] CHECK CONSTRAINT [CK_HumanResources_Staff_FirstName]
GO
ALTER TABLE [HumanResources].[Staff]  WITH CHECK ADD  CONSTRAINT [CK_HumanResources_Staff_LastName] CHECK  ((NOT [LastName] like '%[^A-Z]%'))
GO
ALTER TABLE [HumanResources].[Staff] CHECK CONSTRAINT [CK_HumanResources_Staff_LastName]
GO
ALTER TABLE [HumanResources].[Staff]  WITH CHECK ADD  CONSTRAINT [CK_HumanResources_Staff_PostalCode] CHECK  (([PostalCode] like replicate('[0-9]',(5))))
GO
ALTER TABLE [HumanResources].[Staff] CHECK CONSTRAINT [CK_HumanResources_Staff_PostalCode]
GO
ALTER TABLE [Marketing].[MarketingCategory]  WITH CHECK ADD  CONSTRAINT [CK_Marketing_MarketingCategory_CampaignName] CHECK  ((NOT [CampaignName] like '%[^A-Z ]%'))
GO
ALTER TABLE [Marketing].[MarketingCategory] CHECK CONSTRAINT [CK_Marketing_MarketingCategory_CampaignName]
GO
ALTER TABLE [Marketing].[MarketingCategory]  WITH CHECK ADD  CONSTRAINT [CK_Marketing_MarketingCategory_Country] CHECK  ((NOT [Country] like '%[^A-Z ]%'))
GO
ALTER TABLE [Marketing].[MarketingCategory] CHECK CONSTRAINT [CK_Marketing_MarketingCategory_Country]
GO
ALTER TABLE [Marketing].[MarketingCategory]  WITH CHECK ADD  CONSTRAINT [CK_Marketing_MarketingCategory_LowerThresholdValue] CHECK  ((NOT [LowerThresholdValue] like '%[^0-9]%'))
GO
ALTER TABLE [Marketing].[MarketingCategory] CHECK CONSTRAINT [CK_Marketing_MarketingCategory_LowerThresholdValue]
GO
ALTER TABLE [Marketing].[MarketingCategory]  WITH CHECK ADD  CONSTRAINT [CK_Marketing_MarketingCategory_ManufacturerSpendCapacity] CHECK  (([ManufacturerSpendCapacity]>=(0)))
GO
ALTER TABLE [Marketing].[MarketingCategory] CHECK CONSTRAINT [CK_Marketing_MarketingCategory_ManufacturerSpendCapacity]
GO
ALTER TABLE [Marketing].[MarketingCategory]  WITH CHECK ADD  CONSTRAINT [CK_Marketing_MarketingCategory_MarketingType] CHECK  (([MarketingType] like '%[a-zA-Z0-9 ]%'))
GO
ALTER TABLE [Marketing].[MarketingCategory] CHECK CONSTRAINT [CK_Marketing_MarketingCategory_MarketingType]
GO
ALTER TABLE [Marketing].[MarketingCategory]  WITH CHECK ADD  CONSTRAINT [CK_Marketing_MarketingCategory_UpperThreshold] CHECK  ((NOT [UpperThreshold] like '%[^0-9]%'))
GO
ALTER TABLE [Marketing].[MarketingCategory] CHECK CONSTRAINT [CK_Marketing_MarketingCategory_UpperThreshold]
GO
ALTER TABLE [Sales].[Customer]  WITH CHECK ADD  CONSTRAINT [CK_Sales_Customer_Address1] CHECK  (([Address1] like '%[a-zA-Z0-9 ]%'))
GO
ALTER TABLE [Sales].[Customer] CHECK CONSTRAINT [CK_Sales_Customer_Address1]
GO
ALTER TABLE [Sales].[Customer]  WITH CHECK ADD  CONSTRAINT [CK_Sales_Customer_Address2] CHECK  (([Address2] like '%[a-zA-Z0-9 ]%'))
GO
ALTER TABLE [Sales].[Customer] CHECK CONSTRAINT [CK_Sales_Customer_Address2]
GO
ALTER TABLE [Sales].[Customer]  WITH CHECK ADD  CONSTRAINT [CK_Sales_Customer_City] CHECK  ((NOT [City] like '%[^A-Z ]%'))
GO
ALTER TABLE [Sales].[Customer] CHECK CONSTRAINT [CK_Sales_Customer_City]
GO
ALTER TABLE [Sales].[Customer]  WITH CHECK ADD  CONSTRAINT [CK_Sales_Customer_FirstName] CHECK  ((NOT [FirstName] like '%[^A-Z]%'))
GO
ALTER TABLE [Sales].[Customer] CHECK CONSTRAINT [CK_Sales_Customer_FirstName]
GO
ALTER TABLE [Sales].[Customer]  WITH CHECK ADD  CONSTRAINT [CK_Sales_Customer_LastName] CHECK  ((NOT [LastName] like '%[^A-Z]%'))
GO
ALTER TABLE [Sales].[Customer] CHECK CONSTRAINT [CK_Sales_Customer_LastName]
GO
ALTER TABLE [Sales].[Customer]  WITH CHECK ADD  CONSTRAINT [CK_Sales_Customer_PostalCode] CHECK  (([PostalCode] like replicate('[0-9]',(5))))
GO
ALTER TABLE [Sales].[Customer] CHECK CONSTRAINT [CK_Sales_Customer_PostalCode]
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail]  WITH CHECK ADD  CONSTRAINT [CK_Sales_SalesOrderVehicleDetail_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(1)))
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] CHECK CONSTRAINT [CK_Sales_SalesOrderVehicleDetail_Discount]
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail]  WITH CHECK ADD  CONSTRAINT [CK_Sales_SalesOrderVehicleDetail_SalePrice] CHECK  (([SalePrice]>=(0)))
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] CHECK CONSTRAINT [CK_Sales_SalesOrderVehicleDetail_SalePrice]
GO
ALTER TABLE [Vehicle].[ManufacturerModel]  WITH CHECK ADD  CONSTRAINT [CK_Vehicle_ManufacturerModel_ModelName] CHECK  (([ModelName] like '%[a-zA-Z0-9 ]%'))
GO
ALTER TABLE [Vehicle].[ManufacturerModel] CHECK CONSTRAINT [CK_Vehicle_ManufacturerModel_ModelName]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory]  WITH CHECK ADD  CONSTRAINT [CK_Vehicle_ManufacturerVehicleInventory_PurchaseCost] CHECK  (([PurchaseCost]>=(0)))
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory] CHECK CONSTRAINT [CK_Vehicle_ManufacturerVehicleInventory_PurchaseCost]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory]  WITH CHECK ADD  CONSTRAINT [CK_Vehicle_ManufacturerVehicleInventory_VehicleColor] CHECK  ((NOT [VehicleColor] like '%[^A-Z ]%'))
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleInventory] CHECK CONSTRAINT [CK_Vehicle_ManufacturerVehicleInventory_VehicleColor]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleMake]  WITH CHECK ADD  CONSTRAINT [CK_Vehicle_ManufacturerVehicleMake_MakeName] CHECK  (([MakeName] like '%[a-zA-Z0-9 ]%'))
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleMake] CHECK CONSTRAINT [CK_Vehicle_ManufacturerVehicleMake_MakeName]
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleMake]  WITH CHECK ADD  CONSTRAINT [CK_Vehicle_ManufacturerVehicleMake_Type] CHECK  ((NOT [Type] like '%[^A-Z ]%'))
GO
ALTER TABLE [Vehicle].[ManufacturerVehicleMake] CHECK CONSTRAINT [CK_Vehicle_ManufacturerVehicleMake_Type]
GO
USE [master]
GO
ALTER DATABASE [1045LaskowskiKamilCSCI381] SET  READ_WRITE 
GO
