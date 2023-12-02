USE [fp]
GO

INSERT INTO [dbo].[ManufacturerVehicleInventory]
           ([ManufacturerVehicleInventoryId]
           ,[StockCode]
           ,[ManufacturerModelId]
           ,[PurchaseCost]
           ,[IsPremiumRoadHandlingPackage]
           ,[VehicleColor]
           ,[ManufacturerComments])
     VALUES
           (1
           ,205321
           ,4
           ,16500
           ,0
           ,'Silver'
           ,'Like New!'),
		   (2
           ,701005
           ,8
           ,38599
           ,1
           ,'Red'
           ,'Excellent condition')
     
GO


