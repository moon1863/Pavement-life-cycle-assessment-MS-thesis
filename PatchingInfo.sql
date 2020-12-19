/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [SHRP_ID]
      ,[STATE_CODE_EXP]
      ,datepart(yyyy,[DATE_BEGAN]) AS Patching_Year
      ,ISNULL([SURFACE_PATCHES_SF],0)
      ,ISNULL([SURFACE_OVERLAID_SF],0)
      ,ISNULL([AC_PC_SF],0)
      ,ISNULL([FULL_DEPTH_SF],0)
  FROM [Bucket_30922].[dbo].[MNT_ASPHALT_PATCH]