/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  datepart(yyyy,[VISIT_DATE]) AS Year
      ,[STATE_CODE_EXP]
      ,[SHRP_ID]
      ,[MRI]
	  INTO Roughness_Table
  FROM [Bucket_33775].[dbo].[MON_HSS_PROFILE_SECTION]