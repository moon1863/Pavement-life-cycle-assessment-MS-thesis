/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [STATE_CODE_EXP]
      ,[SHRP_ID]
	  ,MIN([Initial_Year]) AS Initial_Yr
	  ,MAX([Final_Year]) AS Final_Yr
      ,CAST([Layer_Code_No] AS Varchar(100)) AS Layer_Code_No
      ,[REPR_THICKNESS]
      ,[MATL_CODE]
FROM [Bucket_30922].[dbo].[Layer_Thickness_Table]
GROUP BY [STATE_CODE_EXP],[SHRP_ID],CAST([Layer_Code_No] AS Varchar(100)),[REPR_THICKNESS],[MATL_CODE];
