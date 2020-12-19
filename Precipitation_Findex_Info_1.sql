/****** Script for SelectTopNRows command from SSMS  ******/
SELECT DISTINCT [STATE_CODE_EXP]
      ,[SHRP_ID]
      ,[AVG_ANN_PRECIP]
      ,[AVG_FREEZE_INDEX]
  FROM [Bucket_30922].[dbo].[TRF_ESAL_INPUTS_SUMMARY]
  