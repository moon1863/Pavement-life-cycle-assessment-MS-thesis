/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [STATE_CODE_EXP]
      ,[SHRP_ID]
      ,[Initial_Yr]
      ,[Final_Yr]
      ,[Layer_Code_No]
      ,[REPR_THICKNESS]
      ,[MATL_CODE]
      ,[AGG_COARSE_PCT]
      ,[AGG_COARSE_SPEC_GRAV]
      ,[AGG_FINE_PCT]
      ,[AGG_FINE_SPEC_GRAV]
      ,[BINDER_PCT]
      ,[BINDER_SPEC_GRAV]
      ,[AGG_FILLER_PCT]
      ,[AGG_FILLER_SPEC_GRAV]
  FROM [LCA_thesis].[dbo].[Initial_Construction_1]

  DELETE FROM  [LCA_thesis].[dbo].[Initial_Construction_1]
WHERE [LCA_thesis].[dbo].[Initial_Construction_1].[Initial_Yr] >1995
		