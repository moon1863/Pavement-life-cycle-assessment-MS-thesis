/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [STATE_CODE_EXP]
      ,[SHRP_ID]
      ,datepart(yyyy,[VISIT_DATE]) AS Year
      ,[Mean_MTD]
	  INTO Texture_Depth_Table
  FROM [Bucket_33775].[dbo].[MON_HSS_TEXTURE_SECTION]