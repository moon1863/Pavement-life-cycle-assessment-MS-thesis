/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [SHRP_ID]
      ,[STATE_CODE_EXP]
      ,datepart(yyyy,[DATE_BEGAN]) AS Sealing_Year
      ,[TOTAL_LENGTH_SEALED]
  FROM [Bucket_30922].[dbo].[MNT_ASPHALT_CRACK_SEAL]