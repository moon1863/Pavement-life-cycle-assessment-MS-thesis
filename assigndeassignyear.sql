/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [STATE_CODE_EXP]
      ,[SHRP_ID]
      ,[CN_CHANGE_REASON_EXP]
      ,[ASSIGN_DATE]
      ,[DEASSIGN_DATE]
      ,[analysis_period]
  FROM [LCA_thesis].[dbo].[maintenace_assign_date]

 SELECT [SHRP_ID]
      ,[CN_CHANGE_REASON_EXP]
      ,[ASSIGN_DATE]
      ,[DEASSIGN_DATE]
	  ,SUBSTRING (ASSIGN_DATE, 1,4) AS assign_year 
	  ,SUBSTRING (DEASSIGN_DATE, 1,4) AS deassign_year 
  FROM [LCA_thesis].[dbo].[maintenace_assign_date];


