/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [STATE_CODE_EXP]
      ,[SHRP_ID]
      ,datepart(yyyy,[START_DATE]) AS Initial_Year
      ,datepart(yyyy,[END_DATE]) AS Final_Year
      ,[DESCRIPTION]
      ,[REPR_THICKNESS]
      ,[MATL_CODE]
  FROM [Bucket_30922].[dbo].[TRF_ESAL_AC_THICK]
  where [SHRP_ID] LIKE '1684'
  ORDER BY CAST([DESCRIPTION] AS NVARCHAR(100));